package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ByteArrayDataSink.class */
public final class ByteArrayDataSink implements DataSink {
    public ByteArrayOutputStream stream;

    @Override // androidx.media2.exoplayer.external.upstream.DataSink
    public void close() throws IOException {
        ((ByteArrayOutputStream) Util.castNonNull(this.stream)).close();
    }

    @Nullable
    public byte[] getData() {
        ByteArrayOutputStream byteArrayOutputStream = this.stream;
        return byteArrayOutputStream == null ? null : byteArrayOutputStream.toByteArray();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSink
    public void open(DataSpec dataSpec) {
        long j = dataSpec.length;
        if (j == -1) {
            this.stream = new ByteArrayOutputStream();
            return;
        }
        Assertions.checkArgument(j <= 2147483647L);
        this.stream = new ByteArrayOutputStream((int) dataSpec.length);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSink
    public void write(byte[] bArr, int i, int i2) {
        ((ByteArrayOutputStream) Util.castNonNull(this.stream)).write(bArr, i, i2);
    }
}
