package p000;

import javax.annotation.Nullable;
/* renamed from: gm1 */
/* loaded from: classes3-dex2jar.jar:gm1.class */
public final class gm1 {

    /* renamed from: a */
    public final byte[] f6706a;

    /* renamed from: b */
    public int f6707b;

    /* renamed from: c */
    public int f6708c;

    /* renamed from: d */
    public boolean f6709d;

    /* renamed from: e */
    public boolean f6710e;

    /* renamed from: f */
    public gm1 f6711f;

    /* renamed from: g */
    public gm1 f6712g;

    public gm1() {
        this.f6706a = new byte[8192];
        this.f6710e = true;
        this.f6709d = false;
    }

    public gm1(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f6706a = bArr;
        this.f6707b = i;
        this.f6708c = i2;
        this.f6709d = z;
        this.f6710e = z2;
    }

    @Nullable
    /* renamed from: a */
    public final gm1 m1650a() {
        gm1 gm1Var = this.f6711f;
        gm1 gm1Var2 = gm1Var != this ? gm1Var : null;
        gm1 gm1Var3 = this.f6712g;
        gm1Var3.f6711f = gm1Var;
        this.f6711f.f6712g = gm1Var3;
        this.f6711f = null;
        this.f6712g = null;
        return gm1Var2;
    }

    /* renamed from: b */
    public final gm1 m1649b(gm1 gm1Var) {
        gm1Var.f6712g = this;
        gm1Var.f6711f = this.f6711f;
        this.f6711f.f6712g = gm1Var;
        this.f6711f = gm1Var;
        return gm1Var;
    }

    /* renamed from: c */
    public final gm1 m1648c() {
        this.f6709d = true;
        return new gm1(this.f6706a, this.f6707b, this.f6708c, true, false);
    }
}
