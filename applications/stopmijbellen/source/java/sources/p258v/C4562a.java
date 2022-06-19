package p258v;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import p237t.C4341b;
import p237t.C4344d;
import p237t.C4351h;
import p258v.C4564c;
/* renamed from: v.a */
/* loaded from: classes-dex2jar.jar:v/a.class */
public class C4562a extends C4570h {

    /* renamed from: t0 */
    public int f14006t0 = 0;

    /* renamed from: u0 */
    public boolean f14007u0 = true;

    /* renamed from: v0 */
    public int f14008v0 = 0;

    /* renamed from: w0 */
    public boolean f14009w0 = false;

    @Override // p258v.C4566d
    /* renamed from: D */
    public boolean mo776D() {
        return this.f14009w0;
    }

    @Override // p258v.C4566d
    /* renamed from: E */
    public boolean mo775E() {
        return this.f14009w0;
    }

    /* renamed from: W */
    public boolean m837W() {
        boolean z;
        int i;
        boolean z2;
        C4564c.EnumC4565a enumC4565a = C4564c.EnumC4565a.BOTTOM;
        C4564c.EnumC4565a enumC4565a2 = C4564c.EnumC4565a.TOP;
        C4564c.EnumC4565a enumC4565a3 = C4564c.EnumC4565a.RIGHT;
        C4564c.EnumC4565a enumC4565a4 = C4564c.EnumC4565a.LEFT;
        int i2 = 0;
        boolean z3 = true;
        while (true) {
            z = z3;
            i = this.f14145s0;
            if (i2 >= i) {
                break;
            }
            C4566d c4566d = this.f14144r0[i2];
            if (this.f14007u0 || c4566d.mo770e()) {
                int i3 = this.f14006t0;
                if ((i3 != 0 && i3 != 1) || c4566d.mo776D()) {
                    int i4 = this.f14006t0;
                    if (i4 != 2) {
                        z2 = z;
                        if (i4 != 3) {
                        }
                    }
                    z2 = z;
                    if (c4566d.mo775E()) {
                    }
                }
                z2 = false;
            } else {
                z2 = z;
            }
            i2++;
            z3 = z2;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z4 = false;
        for (int i6 = 0; i6 < this.f14145s0; i6++) {
            C4566d c4566d2 = this.f14144r0[i6];
            if (this.f14007u0 || c4566d2.mo770e()) {
                int i7 = i5;
                boolean z5 = z4;
                if (!z4) {
                    int i8 = this.f14006t0;
                    if (i8 == 0) {
                        i5 = c4566d2.mo769i(enumC4565a4).m833c();
                    } else if (i8 == 1) {
                        i5 = c4566d2.mo769i(enumC4565a3).m833c();
                    } else if (i8 == 2) {
                        i5 = c4566d2.mo769i(enumC4565a2).m833c();
                    } else if (i8 == 3) {
                        i5 = c4566d2.mo769i(enumC4565a).m833c();
                    }
                    z5 = true;
                    i7 = i5;
                }
                int i9 = this.f14006t0;
                if (i9 == 0) {
                    i5 = Math.min(i7, c4566d2.mo769i(enumC4565a4).m833c());
                    z4 = z5;
                } else if (i9 == 1) {
                    i5 = Math.max(i7, c4566d2.mo769i(enumC4565a3).m833c());
                    z4 = z5;
                } else if (i9 == 2) {
                    i5 = Math.min(i7, c4566d2.mo769i(enumC4565a2).m833c());
                    z4 = z5;
                } else {
                    i5 = i7;
                    z4 = z5;
                    if (i9 == 3) {
                        i5 = Math.max(i7, c4566d2.mo769i(enumC4565a).m833c());
                        z4 = z5;
                    }
                }
            }
        }
        int i10 = i5 + this.f14008v0;
        int i11 = this.f14006t0;
        if (i11 == 0 || i11 == 1) {
            m818L(i10, i10);
        } else {
            m817M(i10, i10);
        }
        this.f14009w0 = true;
        return true;
    }

    /* renamed from: X */
    public int m836X() {
        int i = this.f14006t0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // p258v.C4566d
    /* renamed from: d */
    public void mo771d(C4344d c4344d, boolean z) {
        Object[] objArr;
        boolean z2;
        int i;
        int i2;
        int i3;
        C4564c[] c4564cArr = this.f14065R;
        c4564cArr[0] = this.f14057J;
        c4564cArr[2] = this.f14058K;
        c4564cArr[1] = this.f14059L;
        c4564cArr[3] = this.f14060M;
        int i4 = 0;
        while (true) {
            objArr = this.f14065R;
            if (i4 >= objArr.length) {
                break;
            }
            objArr[i4].f14038i = c4344d.m1040l(objArr[i4]);
            i4++;
        }
        int i5 = this.f14006t0;
        if (i5 < 0 || i5 >= 4) {
            return;
        }
        C4564c c4564c = objArr[i5];
        if (!this.f14009w0) {
            m837W();
        }
        if (this.f14009w0) {
            this.f14009w0 = false;
            int i6 = this.f14006t0;
            if (i6 == 0 || i6 == 1) {
                c4344d.m1047e(this.f14057J.f14038i, this.f14075a0);
                c4344d.m1047e(this.f14059L.f14038i, this.f14075a0);
                return;
            } else if (i6 != 2 && i6 != 3) {
                return;
            } else {
                c4344d.m1047e(this.f14058K.f14038i, this.f14077b0);
                c4344d.m1047e(this.f14060M.f14038i, this.f14077b0);
                return;
            }
        }
        for (int i7 = 0; i7 < this.f14145s0; i7++) {
            C4566d c4566d = this.f14144r0[i7];
            if ((this.f14007u0 || c4566d.mo770e()) && ((((i2 = this.f14006t0) == 0 || i2 == 1) && c4566d.m802m() == 3 && c4566d.f14057J.f14035f != null && c4566d.f14059L.f14035f != null) || (((i3 = this.f14006t0) == 2 || i3 == 3) && c4566d.m796t() == 3 && c4566d.f14058K.f14035f != null && c4566d.f14060M.f14035f != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.f14057J.m831e() || this.f14059L.m831e();
        boolean z4 = this.f14058K.m831e() || this.f14060M.m831e();
        boolean z5 = !z2 && (((i = this.f14006t0) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))));
        int i8 = 5;
        if (!z5) {
            i8 = 4;
        }
        for (int i9 = 0; i9 < this.f14145s0; i9++) {
            C4566d c4566d2 = this.f14144r0[i9];
            if (this.f14007u0 || c4566d2.mo770e()) {
                C4351h m1040l = c4344d.m1040l(c4566d2.f14065R[this.f14006t0]);
                C4564c[] c4564cArr2 = c4566d2.f14065R;
                int i10 = this.f14006t0;
                c4564cArr2[i10].f14038i = m1040l;
                int i11 = (c4564cArr2[i10].f14035f == null || c4564cArr2[i10].f14035f.f14033d != this) ? 0 : c4564cArr2[i10].f14036g + 0;
                if (i10 == 0 || i10 == 2) {
                    C4351h c4351h = c4564c.f14038i;
                    int i12 = this.f14008v0;
                    C4341b m1039m = c4344d.m1039m();
                    C4351h m1038n = c4344d.m1038n();
                    m1038n.f13573d = 0;
                    m1039m.m1068f(c4351h, m1040l, m1038n, i12 - i11);
                    c4344d.m1049c(m1039m);
                } else {
                    C4351h c4351h2 = c4564c.f14038i;
                    int i13 = this.f14008v0;
                    C4341b m1039m2 = c4344d.m1039m();
                    C4351h m1038n2 = c4344d.m1038n();
                    m1038n2.f13573d = 0;
                    m1039m2.m1069e(c4351h2, m1040l, m1038n2, i13 + i11);
                    c4344d.m1049c(m1039m2);
                }
                c4344d.m1048d(c4564c.f14038i, m1040l, this.f14008v0 + i11, i8);
            }
        }
        int i14 = this.f14006t0;
        if (i14 == 0) {
            c4344d.m1048d(this.f14059L.f14038i, this.f14057J.f14038i, 0, 8);
            c4344d.m1048d(this.f14057J.f14038i, this.f14069V.f14059L.f14038i, 0, 4);
            c4344d.m1048d(this.f14057J.f14038i, this.f14069V.f14057J.f14038i, 0, 0);
        } else if (i14 == 1) {
            c4344d.m1048d(this.f14057J.f14038i, this.f14059L.f14038i, 0, 8);
            c4344d.m1048d(this.f14057J.f14038i, this.f14069V.f14057J.f14038i, 0, 4);
            c4344d.m1048d(this.f14057J.f14038i, this.f14069V.f14059L.f14038i, 0, 0);
        } else if (i14 == 2) {
            c4344d.m1048d(this.f14060M.f14038i, this.f14058K.f14038i, 0, 8);
            c4344d.m1048d(this.f14058K.f14038i, this.f14069V.f14060M.f14038i, 0, 4);
            c4344d.m1048d(this.f14058K.f14038i, this.f14069V.f14058K.f14038i, 0, 0);
        } else if (i14 == 3) {
            c4344d.m1048d(this.f14058K.f14038i, this.f14060M.f14038i, 0, 8);
            c4344d.m1048d(this.f14058K.f14038i, this.f14069V.f14058K.f14038i, 0, 4);
            c4344d.m1048d(this.f14058K.f14038i, this.f14069V.f14060M.f14038i, 0, 0);
        }
    }

    @Override // p258v.C4566d
    /* renamed from: e */
    public boolean mo770e() {
        return true;
    }

    @Override // p258v.C4566d
    public String toString() {
        String m8754h = C0082b.m8754h(C0082b.m8752j("[Barrier] "), this.f14093j0, " {");
        for (int i = 0; i < this.f14145s0; i++) {
            C4566d c4566d = this.f14144r0[i];
            String str = m8754h;
            if (i > 0) {
                str = C1676a.m4789h(m8754h, ", ");
            }
            StringBuilder m8752j = C0082b.m8752j(str);
            m8752j.append(c4566d.f14093j0);
            m8754h = m8752j.toString();
        }
        return C1676a.m4789h(m8754h, "}");
    }
}
