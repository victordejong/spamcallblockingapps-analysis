package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ByteArrayDataSource.class */
public final class ByteArrayDataSource extends BaseDataSource {
    public int bytesRemaining;
    public final byte[] data;
    public boolean opened;
    public int readPosition;
    @Nullable
    public Uri uri;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ByteArrayDataSource(byte[] bArr) {
        super(false);
        boolean z = false;
        Assertions.checkNotNull(bArr);
        Assertions.checkArgument(bArr.length > 0 ? true : z);
        this.data = bArr;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public void close() {
        if (this.opened) {
            this.opened = false;
            transferEnded();
        }
        this.uri = null;
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long open(androidx.media2.exoplayer.external.upstream.DataSpec r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            android.net.Uri r1 = r1.uri
            r0.uri = r1
            r0 = r5
            r1 = r6
            r0.transferInitializing(r1)
            r0 = r6
            long r0 = r0.position
            r7 = r0
            r0 = r5
            r1 = r7
            int r1 = (int) r1
            r0.readPosition = r1
            r0 = r6
            long r0 = r0.length
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0035
            r0 = r5
            byte[] r0 = r0.data
            int r0 = r0.length
            long r0 = (long) r0
            r1 = r7
            long r0 = r0 - r1
            r11 = r0
        L_0x0035:
            r0 = r5
            r1 = r11
            int r1 = (int) r1
            r0.bytesRemaining = r1
            r0 = r5
            int r0 = r0.bytesRemaining
            r13 = r0
            r0 = r13
            if (r0 <= 0) goto L_0x0066
            r0 = r5
            int r0 = r0.readPosition
            r1 = r13
            int r0 = r0 + r1
            r1 = r5
            byte[] r1 = r1.data
            int r1 = r1.length
            if (r0 > r1) goto L_0x0066
            r0 = r5
            r1 = 1
            r0.opened = r1
            r0 = r5
            r1 = r6
            r0.transferStarted(r1)
            r0 = r5
            int r0 = r0.bytesRemaining
            long r0 = (long) r0
            return r0
        L_0x0066:
            r0 = r5
            int r0 = r0.readPosition
            r13 = r0
            r0 = r6
            long r0 = r0.length
            r11 = r0
            r0 = r5
            byte[] r0 = r0.data
            int r0 = r0.length
            r14 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 77
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Unsatisfiable range: ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ", "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "], length: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r14
            java.lang.StringBuilder r0 = r0.append(r1)
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.ByteArrayDataSource.open(androidx.media2.exoplayer.external.upstream.DataSpec):long");
    }

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.bytesRemaining;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.data, this.readPosition, bArr, i, min);
        this.readPosition += min;
        this.bytesRemaining -= min;
        bytesTransferred(min);
        return min;
    }
}
