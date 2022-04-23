package androidx.media2.exoplayer.external.upstream;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultDataSourceFactory.class */
public final class DefaultDataSourceFactory implements DataSource.Factory {
    public final DataSource.Factory baseDataSourceFactory;
    public final Context context;
    @Nullable
    public final TransferListener listener;

    public DefaultDataSourceFactory(Context context, DataSource.Factory factory) {
        this(context, (TransferListener) null, factory);
    }

    public DefaultDataSourceFactory(Context context, @Nullable TransferListener transferListener, DataSource.Factory factory) {
        this.context = context.getApplicationContext();
        this.listener = transferListener;
        this.baseDataSourceFactory = factory;
    }

    public DefaultDataSourceFactory(Context context, String str) {
        this(context, str, (TransferListener) null);
    }

    public DefaultDataSourceFactory(Context context, String str, @Nullable TransferListener transferListener) {
        this(context, transferListener, new DefaultHttpDataSourceFactory(str, transferListener));
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource.Factory
    public DefaultDataSource createDataSource() {
        DefaultDataSource defaultDataSource = new DefaultDataSource(this.context, this.baseDataSourceFactory.createDataSource());
        TransferListener transferListener = this.listener;
        if (transferListener != null) {
            defaultDataSource.addTransferListener(transferListener);
        }
        return defaultDataSource;
    }
}
