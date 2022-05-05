package p645m;

import javax.annotation.Nullable;
/* renamed from: m.o */
/* loaded from: classes3-dex2jar.jar:m/o.class */
public final class C15189o {

    /* renamed from: a */
    public final byte[] f33191a;

    /* renamed from: b */
    public int f33192b;

    /* renamed from: c */
    public int f33193c;

    /* renamed from: d */
    public boolean f33194d;

    /* renamed from: e */
    public boolean f33195e;

    /* renamed from: f */
    public C15189o f33196f;

    /* renamed from: g */
    public C15189o f33197g;

    public C15189o() {
        this.f33191a = new byte[8192];
        this.f33195e = true;
        this.f33194d = false;
    }

    public C15189o(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f33191a = bArr;
        this.f33192b = i;
        this.f33193c = i2;
        this.f33194d = z;
        this.f33195e = z2;
    }

    /* renamed from: a */
    public final C15189o m286a(int i) {
        C15189o oVar;
        if (i <= 0 || i > this.f33193c - this.f33192b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            oVar = m282c();
        } else {
            oVar = C15190p.m281a();
            System.arraycopy(this.f33191a, this.f33192b, oVar.f33191a, 0, i);
        }
        oVar.f33193c = oVar.f33192b + i;
        this.f33192b += i;
        this.f33197g.m285a(oVar);
        return oVar;
    }

    /* renamed from: a */
    public final C15189o m285a(C15189o oVar) {
        oVar.f33197g = this;
        oVar.f33196f = this.f33196f;
        this.f33196f.f33197g = oVar;
        this.f33196f = oVar;
        return oVar;
    }

    /* renamed from: a */
    public final void m287a() {
        C15189o oVar = this.f33197g;
        if (oVar == this) {
            throw new IllegalStateException();
        } else if (oVar.f33195e) {
            int i = this.f33193c - this.f33192b;
            if (i <= (8192 - oVar.f33193c) + (oVar.f33194d ? 0 : oVar.f33192b)) {
                m284a(this.f33197g, i);
                m283b();
                C15190p.m280a(this);
            }
        }
    }

    /* renamed from: a */
    public final void m284a(C15189o oVar, int i) {
        if (oVar.f33195e) {
            int i2 = oVar.f33193c;
            if (i2 + i > 8192) {
                if (!oVar.f33194d) {
                    int i3 = oVar.f33192b;
                    if ((i2 + i) - i3 <= 8192) {
                        byte[] bArr = oVar.f33191a;
                        System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
                        oVar.f33193c -= oVar.f33192b;
                        oVar.f33192b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f33191a, this.f33192b, oVar.f33191a, oVar.f33193c, i);
            oVar.f33193c += i;
            this.f33192b += i;
            return;
        }
        throw new IllegalArgumentException();
    }

    @Nullable
    /* renamed from: b */
    public final C15189o m283b() {
        C15189o oVar = this.f33196f;
        if (oVar == this) {
            oVar = null;
        }
        C15189o oVar2 = this.f33197g;
        oVar2.f33196f = this.f33196f;
        this.f33196f.f33197g = oVar2;
        this.f33196f = null;
        this.f33197g = null;
        return oVar;
    }

    /* renamed from: c */
    public final C15189o m282c() {
        this.f33194d = true;
        return new C15189o(this.f33191a, this.f33192b, this.f33193c, true, false);
    }
}
