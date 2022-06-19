package p011aa;

import javax.annotation.Nullable;
/* renamed from: aa.u */
/* loaded from: classes2-dex2jar.jar:aa/u.class */
public final class C0070u {

    /* renamed from: a */
    public final byte[] f151a;

    /* renamed from: b */
    public int f152b;

    /* renamed from: c */
    public int f153c;

    /* renamed from: d */
    public boolean f154d;

    /* renamed from: e */
    public boolean f155e;

    /* renamed from: f */
    public C0070u f156f;

    /* renamed from: g */
    public C0070u f157g;

    public C0070u() {
        this.f151a = new byte[8192];
        this.f155e = true;
        this.f154d = false;
    }

    public C0070u(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f151a = bArr;
        this.f152b = i;
        this.f153c = i2;
        this.f154d = z;
        this.f155e = z2;
    }

    @Nullable
    /* renamed from: a */
    public final C0070u m8796a() {
        C0070u c0070u = this.f156f;
        C0070u c0070u2 = c0070u != this ? c0070u : null;
        C0070u c0070u3 = this.f157g;
        c0070u3.f156f = c0070u;
        this.f156f.f157g = c0070u3;
        this.f156f = null;
        this.f157g = null;
        return c0070u2;
    }

    /* renamed from: b */
    public final C0070u m8795b(C0070u c0070u) {
        c0070u.f157g = this;
        c0070u.f156f = this.f156f;
        this.f156f.f157g = c0070u;
        this.f156f = c0070u;
        return c0070u;
    }

    /* renamed from: c */
    public final C0070u m8794c() {
        this.f154d = true;
        return new C0070u(this.f151a, this.f152b, this.f153c, true, false);
    }

    /* renamed from: d */
    public final void m8793d(C0070u c0070u, int i) {
        if (c0070u.f155e) {
            int i2 = c0070u.f153c;
            if (i2 + i > 8192) {
                if (c0070u.f154d) {
                    throw new IllegalArgumentException();
                }
                int i3 = c0070u.f152b;
                if ((i2 + i) - i3 > 8192) {
                    throw new IllegalArgumentException();
                }
                byte[] bArr = c0070u.f151a;
                System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                c0070u.f153c -= c0070u.f152b;
                c0070u.f152b = 0;
            }
            System.arraycopy(this.f151a, this.f152b, c0070u.f151a, c0070u.f153c, i);
            c0070u.f153c += i;
            this.f152b += i;
            return;
        }
        throw new IllegalArgumentException();
    }
}
