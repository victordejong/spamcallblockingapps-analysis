package androidx.media2.exoplayer.external.extractor.p065b;

import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.b.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/g.class */
final class C1502g {

    /* renamed from: b */
    private static final long[] f5778b = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    int f5779a;

    /* renamed from: c */
    private final byte[] f5780c = new byte[8];

    /* renamed from: d */
    private int f5781d;

    /* renamed from: a */
    public static int m42789a(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f5778b;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            } else if ((jArr[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static long m42787a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f5778b[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final long m42788a(AbstractC1600h abstractC1600h, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.f5781d == 0) {
            if (!abstractC1600h.mo42608a(this.f5780c, 0, 1, z)) {
                return -1L;
            }
            int m42789a = m42789a(this.f5780c[0] & 255);
            this.f5779a = m42789a;
            if (m42789a == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f5781d = 1;
        }
        int i2 = this.f5779a;
        if (i2 > i) {
            this.f5781d = 0;
            return -2L;
        }
        if (i2 != 1) {
            abstractC1600h.mo42605b(this.f5780c, 1, i2 - 1);
        }
        this.f5781d = 0;
        return m42787a(this.f5780c, this.f5779a, z2);
    }

    /* renamed from: a */
    public final void m42790a() {
        this.f5781d = 0;
        this.f5779a = 0;
    }
}
