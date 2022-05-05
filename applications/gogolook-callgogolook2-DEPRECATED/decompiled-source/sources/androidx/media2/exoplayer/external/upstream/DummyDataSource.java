package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DummyDataSource.class */
public final class DummyDataSource implements DataSource {
    public static final DummyDataSource INSTANCE = new DummyDataSource();
    public static final DataSource.Factory FACTORY = DummyDataSource$$Lambda$0.$instance;

    public static final /* bridge */ /* synthetic */ DummyDataSource bridge$lambda$0$DummyDataSource() {
        return new DummyDataSource();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() {
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public Map getResponseHeaders() {
        Map emptyMap;
        emptyMap = Collections.emptyMap();
        return emptyMap;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        throw new IOException("Dummy source");
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }
}
