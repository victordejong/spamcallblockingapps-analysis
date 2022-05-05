package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.RestrictTo;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DataSink.class */
public interface DataSink {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DataSink$Factory.class */
    public interface Factory {
        DataSink createDataSink();
    }

    void close() throws IOException;

    void open(DataSpec dataSpec) throws IOException;

    void write(byte[] bArr, int i, int i2) throws IOException;
}
