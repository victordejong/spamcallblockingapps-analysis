package androidx.media2.player.exoplayer;

import android.annotation.SuppressLint;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.media2.common.DataSourceCallback;
import androidx.media2.exoplayer.external.upstream.BaseDataSource;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import java.io.EOFException;
import java.io.IOException;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/DataSourceCallbackDataSource.class */
public final class DataSourceCallbackDataSource extends BaseDataSource {
    public long mBytesRemaining;
    public final DataSourceCallback mDataSourceCallback;
    public long mOffset;
    public boolean mOpened;
    @Nullable
    public Uri mUri;

    public DataSourceCallbackDataSource(DataSourceCallback dataSourceCallback) {
        super(false);
        this.mDataSourceCallback = (DataSourceCallback) Preconditions.checkNotNull(dataSourceCallback);
    }

    public static DataSource.Factory getFactory(final DataSourceCallback dataSourceCallback) {
        return new DataSource.Factory() { // from class: androidx.media2.player.exoplayer.DataSourceCallbackDataSource.1
            @Override // androidx.media2.exoplayer.external.upstream.DataSource.Factory
            public DataSource createDataSource() {
                return new DataSourceCallbackDataSource(DataSourceCallback.this);
            }
        };
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() {
        this.mUri = null;
        if (this.mOpened) {
            this.mOpened = false;
            transferEnded();
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public Uri getUri() {
        return this.mUri;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        this.mUri = dataSpec.uri;
        this.mOffset = dataSpec.position;
        transferInitializing(dataSpec);
        long size = this.mDataSourceCallback.getSize();
        long j = dataSpec.length;
        if (j != -1) {
            this.mBytesRemaining = j;
        } else if (size != -1) {
            this.mBytesRemaining = size - this.mOffset;
        } else {
            this.mBytesRemaining = -1L;
        }
        this.mOpened = true;
        transferStarted(dataSpec);
        return this.mBytesRemaining;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.mBytesRemaining;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            i2 = (int) Math.min(j, i2);
        }
        int readAt = this.mDataSourceCallback.readAt(this.mOffset, bArr, i, i2);
        if (readAt >= 0) {
            long j2 = readAt;
            this.mOffset += j2;
            long j3 = this.mBytesRemaining;
            if (j3 != -1) {
                this.mBytesRemaining = j3 - j2;
            }
            bytesTransferred(readAt);
            return readAt;
        } else if (this.mBytesRemaining == -1) {
            return -1;
        } else {
            throw new EOFException();
        }
    }
}
