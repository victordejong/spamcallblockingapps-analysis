package com.bytedance.sdk.p127a.p128a;

import io.objectbox.model.PropertyFlags;
/* renamed from: com.bytedance.sdk.a.a.o */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/o.class */
public final class C3986o {

    /* renamed from: a */
    final byte[] f14451a;

    /* renamed from: b */
    int f14452b;

    /* renamed from: c */
    int f14453c;

    /* renamed from: d */
    boolean f14454d;

    /* renamed from: e */
    boolean f14455e;

    /* renamed from: f */
    C3986o f14456f;

    /* renamed from: g */
    C3986o f14457g;

    public C3986o() {
        this.f14451a = new byte[PropertyFlags.UNSIGNED];
        this.f14455e = true;
        this.f14454d = false;
    }

    public C3986o(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f14451a = bArr;
        this.f14452b = i;
        this.f14453c = i2;
        this.f14454d = z;
        this.f14455e = z2;
    }

    /* renamed from: a */
    public final C3986o m37046a() {
        this.f14454d = true;
        return new C3986o(this.f14451a, this.f14452b, this.f14453c, true, false);
    }

    /* renamed from: a */
    public final C3986o m37045a(int i) {
        C3986o c3986o;
        if (i <= 0 || i > this.f14453c - this.f14452b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            c3986o = m37046a();
        } else {
            c3986o = C3987p.m37040a();
            System.arraycopy(this.f14451a, this.f14452b, c3986o.f14451a, 0, i);
        }
        c3986o.f14453c = c3986o.f14452b + i;
        this.f14452b += i;
        this.f14457g.m37044a(c3986o);
        return c3986o;
    }

    /* renamed from: a */
    public final C3986o m37044a(C3986o c3986o) {
        c3986o.f14457g = this;
        c3986o.f14456f = this.f14456f;
        this.f14456f.f14457g = c3986o;
        this.f14456f = c3986o;
        return c3986o;
    }

    /* renamed from: a */
    public final void m37043a(C3986o c3986o, int i) {
        if (c3986o.f14455e) {
            int i2 = c3986o.f14453c;
            if (i2 + i > 8192) {
                if (c3986o.f14454d) {
                    throw new IllegalArgumentException();
                }
                int i3 = c3986o.f14452b;
                if ((i2 + i) - i3 > 8192) {
                    throw new IllegalArgumentException();
                }
                byte[] bArr = c3986o.f14451a;
                System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                c3986o.f14453c -= c3986o.f14452b;
                c3986o.f14452b = 0;
            }
            System.arraycopy(this.f14451a, this.f14452b, c3986o.f14451a, c3986o.f14453c, i);
            c3986o.f14453c += i;
            this.f14452b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: b */
    public final C3986o m37042b() {
        C3986o c3986o = this.f14456f;
        C3986o c3986o2 = c3986o != this ? c3986o : null;
        C3986o c3986o3 = this.f14457g;
        c3986o3.f14456f = c3986o;
        this.f14456f.f14457g = c3986o3;
        this.f14456f = null;
        this.f14457g = null;
        return c3986o2;
    }

    /* renamed from: c */
    public final void m37041c() {
        C3986o c3986o = this.f14457g;
        if (c3986o != this) {
            if (!c3986o.f14455e) {
                return;
            }
            int i = this.f14453c - this.f14452b;
            if (i > (PropertyFlags.UNSIGNED - c3986o.f14453c) + (c3986o.f14454d ? 0 : c3986o.f14452b)) {
                return;
            }
            m37043a(c3986o, i);
            m37042b();
            C3987p.m37039a(this);
            return;
        }
        throw new IllegalStateException();
    }
}
