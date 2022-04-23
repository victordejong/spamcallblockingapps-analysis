package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultDataSource.class */
public final class DefaultDataSource implements DataSource {
    public static final String SCHEME_ASSET = "asset";
    public static final String SCHEME_CONTENT = "content";
    public static final String SCHEME_RAW = "rawresource";
    public static final String SCHEME_RTMP = "rtmp";
    public static final String TAG = "DefaultDataSource";
    @Nullable
    public DataSource assetDataSource;
    public final DataSource baseDataSource;
    @Nullable
    public DataSource contentDataSource;
    public final Context context;
    @Nullable
    public DataSource dataSchemeDataSource;
    @Nullable
    public DataSource dataSource;
    @Nullable
    public DataSource fileDataSource;
    @Nullable
    public DataSource rawResourceDataSource;
    @Nullable
    public DataSource rtmpDataSource;
    public final List<TransferListener> transferListeners;

    public DefaultDataSource(Context context, DataSource dataSource) {
        this.context = context.getApplicationContext();
        this.baseDataSource = (DataSource) Assertions.checkNotNull(dataSource);
        this.transferListeners = new ArrayList();
    }

    public DefaultDataSource(Context context, String str, int i, int i2, boolean z) {
        this(context, new DefaultHttpDataSource(str, null, i, i2, z, null));
    }

    public DefaultDataSource(Context context, String str, boolean z) {
        this(context, str, 8000, 8000, z);
    }

    private void addListenersToDataSource(DataSource dataSource) {
        for (int i = 0; i < this.transferListeners.size(); i++) {
            dataSource.addTransferListener(this.transferListeners.get(i));
        }
    }

    private DataSource getAssetDataSource() {
        if (this.assetDataSource == null) {
            this.assetDataSource = new AssetDataSource(this.context);
            addListenersToDataSource(this.assetDataSource);
        }
        return this.assetDataSource;
    }

    private DataSource getContentDataSource() {
        if (this.contentDataSource == null) {
            this.contentDataSource = new ContentDataSource(this.context);
            addListenersToDataSource(this.contentDataSource);
        }
        return this.contentDataSource;
    }

    private DataSource getDataSchemeDataSource() {
        if (this.dataSchemeDataSource == null) {
            this.dataSchemeDataSource = new DataSchemeDataSource();
            addListenersToDataSource(this.dataSchemeDataSource);
        }
        return this.dataSchemeDataSource;
    }

    private DataSource getFileDataSource() {
        if (this.fileDataSource == null) {
            this.fileDataSource = new FileDataSource();
            addListenersToDataSource(this.fileDataSource);
        }
        return this.fileDataSource;
    }

    private DataSource getRawResourceDataSource() {
        if (this.rawResourceDataSource == null) {
            this.rawResourceDataSource = new RawResourceDataSource(this.context);
            addListenersToDataSource(this.rawResourceDataSource);
        }
        return this.rawResourceDataSource;
    }

    private DataSource getRtmpDataSource() {
        if (this.rtmpDataSource == null) {
            try {
                this.rtmpDataSource = (DataSource) Class.forName("androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                addListenersToDataSource(this.rtmpDataSource);
            } catch (ClassNotFoundException e) {
                Log.m37483w(TAG, "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.rtmpDataSource == null) {
                this.rtmpDataSource = this.baseDataSource;
            }
        }
        return this.rtmpDataSource;
    }

    private void maybeAddListenerToDataSource(@Nullable DataSource dataSource, TransferListener transferListener) {
        if (dataSource != null) {
            dataSource.addTransferListener(transferListener);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        this.baseDataSource.addTransferListener(transferListener);
        this.transferListeners.add(transferListener);
        maybeAddListenerToDataSource(this.fileDataSource, transferListener);
        maybeAddListenerToDataSource(this.assetDataSource, transferListener);
        maybeAddListenerToDataSource(this.contentDataSource, transferListener);
        maybeAddListenerToDataSource(this.rtmpDataSource, transferListener);
        maybeAddListenerToDataSource(this.dataSchemeDataSource, transferListener);
        maybeAddListenerToDataSource(this.rawResourceDataSource, transferListener);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws IOException {
        DataSource dataSource = this.dataSource;
        if (dataSource != null) {
            try {
                dataSource.close();
            } finally {
                this.dataSource = null;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        DataSource dataSource = this.dataSource;
        return dataSource == null ? Collections.emptyMap() : dataSource.getResponseHeaders();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        DataSource dataSource = this.dataSource;
        return dataSource == null ? null : dataSource.getUri();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        Assertions.checkState(this.dataSource == null);
        String scheme = dataSpec.uri.getScheme();
        if (Util.isLocalFileUri(dataSpec.uri)) {
            String path = dataSpec.uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.dataSource = getFileDataSource();
            } else {
                this.dataSource = getAssetDataSource();
            }
        } else if (SCHEME_ASSET.equals(scheme)) {
            this.dataSource = getAssetDataSource();
        } else if ("content".equals(scheme)) {
            this.dataSource = getContentDataSource();
        } else if (SCHEME_RTMP.equals(scheme)) {
            this.dataSource = getRtmpDataSource();
        } else if ("data".equals(scheme)) {
            this.dataSource = getDataSchemeDataSource();
        } else if ("rawresource".equals(scheme)) {
            this.dataSource = getRawResourceDataSource();
        } else {
            this.dataSource = this.baseDataSource;
        }
        return this.dataSource.open(dataSpec);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return ((DataSource) Assertions.checkNotNull(this.dataSource)).read(bArr, i, i2);
    }
}
