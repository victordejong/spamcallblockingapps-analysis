package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.util.C1993a;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.t */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/t.class */
final class C1578t {

    /* renamed from: a */
    boolean f6220a;

    /* renamed from: b */
    public byte[] f6221b;

    /* renamed from: c */
    public int f6222c;

    /* renamed from: d */
    private final int f6223d;

    /* renamed from: e */
    private boolean f6224e;

    public C1578t(int i, int i2) {
        this.f6223d = i;
        byte[] bArr = new byte[i2 + 3];
        this.f6221b = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public final void m42650a() {
        this.f6224e = false;
        this.f6220a = false;
    }

    /* renamed from: a */
    public final void m42649a(int i) {
        boolean z = true;
        C1993a.m41686b(!this.f6224e);
        if (i != this.f6223d) {
            z = false;
        }
        this.f6224e = z;
        if (z) {
            this.f6222c = 3;
            this.f6220a = false;
        }
    }

    /* renamed from: a */
    public final void m42648a(byte[] bArr, int i, int i2) {
        if (!this.f6224e) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f6221b;
        int length = bArr2.length;
        int i4 = this.f6222c;
        if (length < i4 + i3) {
            this.f6221b = Arrays.copyOf(bArr2, (i4 + i3) * 2);
        }
        System.arraycopy(bArr, i, this.f6221b, this.f6222c, i3);
        this.f6222c += i3;
    }

    /* renamed from: b */
    public final boolean m42647b(int i) {
        if (!this.f6224e) {
            return false;
        }
        this.f6222c -= i;
        this.f6224e = false;
        this.f6220a = true;
        return true;
    }
}
