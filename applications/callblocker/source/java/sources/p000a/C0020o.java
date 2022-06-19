package p000a;

import javax.annotation.Nullable;
/* renamed from: a.o */
/* loaded from: classes-dex2jar.jar:a/o.class */
public final class C0020o {

    /* renamed from: a */
    final byte[] f44a;

    /* renamed from: b */
    int f45b;

    /* renamed from: c */
    int f46c;

    /* renamed from: d */
    boolean f47d;

    /* renamed from: e */
    boolean f48e;

    /* renamed from: f */
    C0020o f49f;

    /* renamed from: g */
    C0020o f50g;

    public C0020o() {
        this.f44a = new byte[8192];
        this.f48e = true;
        this.f47d = false;
    }

    public C0020o(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f44a = bArr;
        this.f45b = i;
        this.f46c = i2;
        this.f47d = z;
        this.f48e = z2;
    }

    /* renamed from: a */
    public C0020o m22482a() {
        this.f47d = true;
        return new C0020o(this.f44a, this.f45b, this.f46c, true, false);
    }

    /* renamed from: a */
    public C0020o m22481a(int i) {
        C0020o m22476a;
        if (i <= 0 || i > this.f46c - this.f45b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            m22476a = m22482a();
        } else {
            m22476a = C0021p.m22476a();
            System.arraycopy(this.f44a, this.f45b, m22476a.f44a, 0, i);
        }
        m22476a.f46c = m22476a.f45b + i;
        this.f45b += i;
        this.f50g.m22480a(m22476a);
        return m22476a;
    }

    /* renamed from: a */
    public C0020o m22480a(C0020o c0020o) {
        c0020o.f50g = this;
        c0020o.f49f = this.f49f;
        this.f49f.f50g = c0020o;
        this.f49f = c0020o;
        return c0020o;
    }

    /* renamed from: a */
    public void m22479a(C0020o c0020o, int i) {
        if (!c0020o.f48e) {
            throw new IllegalArgumentException();
        }
        if (c0020o.f46c + i > 8192) {
            if (c0020o.f47d) {
                throw new IllegalArgumentException();
            }
            if ((c0020o.f46c + i) - c0020o.f45b > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(c0020o.f44a, c0020o.f45b, c0020o.f44a, 0, c0020o.f46c - c0020o.f45b);
            c0020o.f46c -= c0020o.f45b;
            c0020o.f45b = 0;
        }
        System.arraycopy(this.f44a, this.f45b, c0020o.f44a, c0020o.f46c, i);
        c0020o.f46c += i;
        this.f45b += i;
    }

    @Nullable
    /* renamed from: b */
    public C0020o m22478b() {
        C0020o c0020o = this.f49f != this ? this.f49f : null;
        this.f50g.f49f = this.f49f;
        this.f49f.f50g = this.f50g;
        this.f49f = null;
        this.f50g = null;
        return c0020o;
    }

    /* renamed from: c */
    public void m22477c() {
        if (this.f50g == this) {
            throw new IllegalStateException();
        }
        if (!this.f50g.f48e) {
            return;
        }
        int i = this.f46c - this.f45b;
        if (i > (this.f50g.f47d ? 0 : this.f50g.f45b) + (8192 - this.f50g.f46c)) {
            return;
        }
        m22479a(this.f50g, i);
        m22478b();
        C0021p.m22475a(this);
    }
}
