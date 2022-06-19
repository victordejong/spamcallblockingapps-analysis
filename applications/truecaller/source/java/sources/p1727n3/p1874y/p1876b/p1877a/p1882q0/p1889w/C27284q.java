package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.Arrays;
/* renamed from: n3.y.b.a.q0.w.q */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/q.class */
public final class C27284q {

    /* renamed from: a */
    public final int f76732a;

    /* renamed from: b */
    public boolean f76733b;

    /* renamed from: c */
    public boolean f76734c;

    /* renamed from: d */
    public byte[] f76735d;

    /* renamed from: e */
    public int f76736e;

    public C27284q(int i, int i2) {
        this.f76732a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f76735d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public void m624a(byte[] bArr, int i, int i2) {
        if (!this.f76733b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.f76735d;
        int length = bArr2.length;
        int i4 = this.f76736e;
        if (length < i4 + i3) {
            this.f76735d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
        }
        System.arraycopy(bArr, i, this.f76735d, this.f76736e, i3);
        this.f76736e += i3;
    }

    /* renamed from: b */
    public boolean m623b(int i) {
        if (!this.f76733b) {
            return false;
        }
        this.f76736e -= i;
        this.f76733b = false;
        this.f76734c = true;
        return true;
    }

    /* renamed from: c */
    public void m622c() {
        this.f76733b = false;
        this.f76734c = false;
    }

    /* renamed from: d */
    public void m621d(int i) {
        boolean z = true;
        MediaSessionCompat.m43184y(!this.f76733b);
        if (i != this.f76732a) {
            z = false;
        }
        this.f76733b = z;
        if (z) {
            this.f76736e = 3;
            this.f76734c = false;
        }
    }
}
