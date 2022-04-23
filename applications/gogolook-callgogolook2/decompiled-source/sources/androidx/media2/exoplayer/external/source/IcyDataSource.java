package androidx.media2.exoplayer.external.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/IcyDataSource.class */
public final class IcyDataSource implements DataSource {
    public int bytesUntilMetadata;
    public final Listener listener;
    public final int metadataIntervalBytes;
    public final byte[] metadataLengthByteHolder;
    public final DataSource upstream;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/IcyDataSource$Listener.class */
    public interface Listener {
        void onIcyMetadata(ParsableByteArray parsableByteArray);
    }

    public IcyDataSource(DataSource dataSource, int i, Listener listener) {
        Assertions.checkArgument(i > 0);
        this.upstream = dataSource;
        this.metadataIntervalBytes = i;
        this.listener = listener;
        this.metadataLengthByteHolder = new byte[1];
        this.bytesUntilMetadata = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        if (r11 <= 0) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
        if (r0[r11 - 1] != 0) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
        if (r11 <= 0) goto L_?;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
        r6.listener.onIcyMetadata(new androidx.media2.exoplayer.external.util.ParsableByteArray(r0, r11));
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readMetadata() throws java.io.IOException {
        /*
            r6 = this;
            r0 = r6
            androidx.media2.exoplayer.external.upstream.DataSource r0 = r0.upstream
            r1 = r6
            byte[] r1 = r1.metadataLengthByteHolder
            r2 = 0
            r3 = 1
            int r0 = r0.read(r1, r2, r3)
            r1 = -1
            if (r0 != r1) goto L_0x0015
            r0 = 0
            return r0
        L_0x0015:
            r0 = r6
            byte[] r0 = r0.metadataLengthByteHolder
            r1 = 0
            r0 = r0[r1]
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r1 = 4
            int r0 = r0 << r1
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0028
            r0 = 1
            return r0
        L_0x0028:
            r0 = r7
            byte[] r0 = new byte[r0]
            r8 = r0
            r0 = r7
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r7
            r11 = r0
            r0 = r9
            if (r0 <= 0) goto L_0x005e
            r0 = r6
            androidx.media2.exoplayer.external.upstream.DataSource r0 = r0.upstream
            r1 = r8
            r2 = r10
            r3 = r9
            int r0 = r0.read(r1, r2, r3)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto L_0x004f
            r0 = 0
            return r0
        L_0x004f:
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = r11
            int r0 = r0 - r1
            r9 = r0
            goto L_0x0031
        L_0x005e:
            r0 = r11
            if (r0 <= 0) goto L_0x0072
            r0 = r8
            r1 = r11
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0072
            int r11 = r11 + (-1)
            goto L_0x005e
        L_0x0072:
            r0 = r11
            if (r0 <= 0) goto L_0x008a
            r0 = r6
            androidx.media2.exoplayer.external.source.IcyDataSource$Listener r0 = r0.listener
            androidx.media2.exoplayer.external.util.ParsableByteArray r1 = new androidx.media2.exoplayer.external.util.ParsableByteArray
            r2 = r1
            r3 = r8
            r4 = r11
            r2.<init>(r3, r4)
            r0.onIcyMetadata(r1)
        L_0x008a:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.IcyDataSource.readMetadata():boolean");
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void addTransferListener(TransferListener transferListener) {
        this.upstream.addTransferListener(transferListener);
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public long open(DataSpec dataSpec) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.bytesUntilMetadata == 0) {
            if (!readMetadata()) {
                return -1;
            }
            this.bytesUntilMetadata = this.metadataIntervalBytes;
        }
        int read = this.upstream.read(bArr, i, Math.min(this.bytesUntilMetadata, i2));
        if (read != -1) {
            this.bytesUntilMetadata -= read;
        }
        return read;
    }
}
