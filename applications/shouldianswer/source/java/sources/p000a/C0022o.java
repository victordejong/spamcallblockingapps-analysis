package p000a;

import javax.annotation.Nullable;
/* renamed from: a.o */
/* loaded from: classes-dex2jar.jar:a/o.class */
public final class C0022o {

    /* renamed from: a */
    final byte[] f46a;

    /* renamed from: b */
    int f47b;

    /* renamed from: c */
    int f48c;

    /* renamed from: d */
    boolean f49d;

    /* renamed from: e */
    boolean f50e;

    /* renamed from: f */
    C0022o f51f;

    /* renamed from: g */
    C0022o f52g;

    public C0022o() {
        this.f46a = new byte[8192];
        this.f50e = true;
        this.f49d = false;
    }

    public C0022o(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f46a = bArr;
        this.f47b = i;
        this.f48c = i2;
        this.f49d = z;
        this.f50e = z2;
    }

    /* renamed from: a */
    public C0022o m8058a() {
        this.f49d = true;
        return new C0022o(this.f46a, this.f47b, this.f48c, true, false);
    }

    /* renamed from: a */
    public C0022o m8057a(int i) {
        C0022o c0022o;
        if (i <= 0 || i > this.f48c - this.f47b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            c0022o = m8058a();
        } else {
            c0022o = C0023p.m8052a();
            System.arraycopy(this.f46a, this.f47b, c0022o.f46a, 0, i);
        }
        c0022o.f48c = c0022o.f47b + i;
        this.f47b += i;
        this.f52g.m8056a(c0022o);
        return c0022o;
    }

    /* renamed from: a */
    public C0022o m8056a(C0022o c0022o) {
        c0022o.f52g = this;
        c0022o.f51f = this.f51f;
        this.f51f.f52g = c0022o;
        this.f51f = c0022o;
        return c0022o;
    }

    /* renamed from: a */
    public void m8055a(C0022o c0022o, int i) {
        if (c0022o.f50e) {
            int i2 = c0022o.f48c;
            if (i2 + i > 8192) {
                if (c0022o.f49d) {
                    throw new IllegalArgumentException();
                }
                int i3 = c0022o.f47b;
                if ((i2 + i) - i3 > 8192) {
                    throw new IllegalArgumentException();
                }
                byte[] bArr = c0022o.f46a;
                System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                c0022o.f48c -= c0022o.f47b;
                c0022o.f47b = 0;
            }
            System.arraycopy(this.f46a, this.f47b, c0022o.f46a, c0022o.f48c, i);
            c0022o.f48c += i;
            this.f47b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Nullable
    /* renamed from: b */
    public C0022o m8054b() {
        C0022o c0022o = this.f51f;
        if (c0022o == this) {
            c0022o = null;
        }
        C0022o c0022o2 = this.f52g;
        c0022o2.f51f = this.f51f;
        this.f51f.f52g = c0022o2;
        this.f51f = null;
        this.f52g = null;
        return c0022o;
    }

    /* renamed from: c */
    public void m8053c() {
        C0022o c0022o = this.f52g;
        if (c0022o != this) {
            if (!c0022o.f50e) {
                return;
            }
            int i = this.f48c - this.f47b;
            if (i > (8192 - c0022o.f48c) + (c0022o.f49d ? 0 : c0022o.f47b)) {
                return;
            }
            m8055a(this.f52g, i);
            m8054b();
            C0023p.m8051a(this);
            return;
        }
        throw new IllegalStateException();
    }
}
