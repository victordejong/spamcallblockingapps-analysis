package p237t;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Arrays;
import p237t.C4341b;
/* renamed from: t.a */
/* loaded from: classes-dex2jar.jar:t/a.class */
public class C4340a implements C4341b.AbstractC4342a {

    /* renamed from: b */
    public final C4341b f13524b;

    /* renamed from: c */
    public final C4343c f13525c;

    /* renamed from: a */
    public int f13523a = 0;

    /* renamed from: d */
    public int f13526d = 8;

    /* renamed from: e */
    public int[] f13527e = new int[8];

    /* renamed from: f */
    public int[] f13528f = new int[8];

    /* renamed from: g */
    public float[] f13529g = new float[8];

    /* renamed from: h */
    public int f13530h = -1;

    /* renamed from: i */
    public int f13531i = -1;

    /* renamed from: j */
    public boolean f13532j = false;

    public C4340a(C4341b c4341b, C4343c c4343c) {
        this.f13524b = c4341b;
        this.f13525c = c4343c;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: a */
    public float mo1062a(int i) {
        int i2 = this.f13530h;
        for (int i3 = 0; i2 != -1 && i3 < this.f13523a; i3++) {
            if (i3 == i) {
                return this.f13529g[i2];
            }
            i2 = this.f13528f[i2];
        }
        return 0.0f;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: b */
    public float mo1061b(C4341b c4341b, boolean z) {
        float mo1058e = mo1058e(c4341b.f13533a);
        mo1060c(c4341b.f13533a, z);
        C4341b.AbstractC4342a abstractC4342a = c4341b.f13536d;
        int mo1057f = abstractC4342a.mo1057f();
        for (int i = 0; i < mo1057f; i++) {
            C4351h mo1055h = abstractC4342a.mo1055h(i);
            mo1053j(mo1055h, abstractC4342a.mo1058e(mo1055h) * mo1058e, z);
        }
        return mo1058e;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: c */
    public final float mo1060c(C4351h c4351h, boolean z) {
        int i = this.f13530h;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f13523a) {
            if (this.f13527e[i] == c4351h.f13571b) {
                if (i == this.f13530h) {
                    this.f13530h = this.f13528f[i];
                } else {
                    int[] iArr = this.f13528f;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    c4351h.m1018b(this.f13524b);
                }
                c4351h.f13581l--;
                this.f13523a--;
                this.f13527e[i] = -1;
                if (this.f13532j) {
                    this.f13531i = i;
                }
                return this.f13529g[i];
            }
            i2++;
            i3 = i;
            i = this.f13528f[i];
        }
        return 0.0f;
    }

    @Override // p237t.C4341b.AbstractC4342a
    public final void clear() {
        int i = this.f13530h;
        for (int i2 = 0; i != -1 && i2 < this.f13523a; i2++) {
            C4351h c4351h = ((C4351h[]) this.f13525c.f13541d)[this.f13527e[i]];
            if (c4351h != null) {
                c4351h.m1018b(this.f13524b);
            }
            i = this.f13528f[i];
        }
        this.f13530h = -1;
        this.f13531i = -1;
        this.f13532j = false;
        this.f13523a = 0;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: d */
    public final void mo1059d(C4351h c4351h, float f) {
        if (f == 0.0f) {
            mo1060c(c4351h, true);
            return;
        }
        int i = this.f13530h;
        if (i == -1) {
            this.f13530h = 0;
            this.f13529g[0] = f;
            this.f13527e[0] = c4351h.f13571b;
            this.f13528f[0] = -1;
            c4351h.f13581l++;
            c4351h.m1019a(this.f13524b);
            this.f13523a++;
            if (this.f13532j) {
                return;
            }
            int i2 = this.f13531i + 1;
            this.f13531i = i2;
            int[] iArr = this.f13527e;
            if (i2 < iArr.length) {
                return;
            }
            this.f13532j = true;
            this.f13531i = iArr.length - 1;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f13523a; i4++) {
            int[] iArr2 = this.f13527e;
            int i5 = iArr2[i];
            int i6 = c4351h.f13571b;
            if (i5 == i6) {
                this.f13529g[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f13528f[i];
        }
        int i7 = this.f13531i;
        if (this.f13532j) {
            int[] iArr3 = this.f13527e;
            if (iArr3[i7] != -1) {
                i7 = iArr3.length;
            }
        } else {
            i7++;
        }
        int[] iArr4 = this.f13527e;
        int i8 = i7;
        if (i7 >= iArr4.length) {
            i8 = i7;
            if (this.f13523a < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f13527e;
                    i8 = i7;
                    if (i9 >= iArr5.length) {
                        break;
                    } else if (iArr5[i9] == -1) {
                        i8 = i9;
                        break;
                    } else {
                        i9++;
                    }
                }
            }
        }
        int[] iArr6 = this.f13527e;
        int i10 = i8;
        if (i8 >= iArr6.length) {
            i10 = iArr6.length;
            int i11 = this.f13526d * 2;
            this.f13526d = i11;
            this.f13532j = false;
            this.f13531i = i10 - 1;
            this.f13529g = Arrays.copyOf(this.f13529g, i11);
            this.f13527e = Arrays.copyOf(this.f13527e, this.f13526d);
            this.f13528f = Arrays.copyOf(this.f13528f, this.f13526d);
        }
        this.f13527e[i10] = c4351h.f13571b;
        this.f13529g[i10] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f13528f;
            iArr7[i10] = iArr7[i3];
            iArr7[i3] = i10;
        } else {
            this.f13528f[i10] = this.f13530h;
            this.f13530h = i10;
        }
        c4351h.f13581l++;
        c4351h.m1019a(this.f13524b);
        int i12 = this.f13523a + 1;
        this.f13523a = i12;
        if (!this.f13532j) {
            this.f13531i++;
        }
        int[] iArr8 = this.f13527e;
        if (i12 >= iArr8.length) {
            this.f13532j = true;
        }
        if (this.f13531i < iArr8.length) {
            return;
        }
        this.f13532j = true;
        this.f13531i = iArr8.length - 1;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: e */
    public final float mo1058e(C4351h c4351h) {
        int i = this.f13530h;
        for (int i2 = 0; i != -1 && i2 < this.f13523a; i2++) {
            if (this.f13527e[i] == c4351h.f13571b) {
                return this.f13529g[i];
            }
            i = this.f13528f[i];
        }
        return 0.0f;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: f */
    public int mo1057f() {
        return this.f13523a;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: g */
    public boolean mo1056g(C4351h c4351h) {
        int i = this.f13530h;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f13523a; i2++) {
            if (this.f13527e[i] == c4351h.f13571b) {
                return true;
            }
            i = this.f13528f[i];
        }
        return false;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: h */
    public C4351h mo1055h(int i) {
        int i2 = this.f13530h;
        for (int i3 = 0; i2 != -1 && i3 < this.f13523a; i3++) {
            if (i3 == i) {
                return ((C4351h[]) this.f13525c.f13541d)[this.f13527e[i2]];
            }
            i2 = this.f13528f[i2];
        }
        return null;
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: i */
    public void mo1054i(float f) {
        int i = this.f13530h;
        for (int i2 = 0; i != -1 && i2 < this.f13523a; i2++) {
            float[] fArr = this.f13529g;
            fArr[i] = fArr[i] / f;
            i = this.f13528f[i];
        }
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: j */
    public void mo1053j(C4351h c4351h, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.f13530h;
            if (i == -1) {
                this.f13530h = 0;
                this.f13529g[0] = f;
                this.f13527e[0] = c4351h.f13571b;
                this.f13528f[0] = -1;
                c4351h.f13581l++;
                c4351h.m1019a(this.f13524b);
                this.f13523a++;
                if (this.f13532j) {
                    return;
                }
                int i2 = this.f13531i + 1;
                this.f13531i = i2;
                int[] iArr = this.f13527e;
                if (i2 < iArr.length) {
                    return;
                }
                this.f13532j = true;
                this.f13531i = iArr.length - 1;
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f13523a; i4++) {
                int[] iArr2 = this.f13527e;
                int i5 = iArr2[i];
                int i6 = c4351h.f13571b;
                if (i5 == i6) {
                    float[] fArr = this.f13529g;
                    float f2 = fArr[i] + f;
                    float f3 = f2;
                    if (f2 > -0.001f) {
                        f3 = f2;
                        if (f2 < 0.001f) {
                            f3 = 0.0f;
                        }
                    }
                    fArr[i] = f3;
                    if (f3 != 0.0f) {
                        return;
                    }
                    if (i == this.f13530h) {
                        this.f13530h = this.f13528f[i];
                    } else {
                        int[] iArr3 = this.f13528f;
                        iArr3[i3] = iArr3[i];
                    }
                    if (z) {
                        c4351h.m1018b(this.f13524b);
                    }
                    if (this.f13532j) {
                        this.f13531i = i;
                    }
                    c4351h.f13581l--;
                    this.f13523a--;
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f13528f[i];
            }
            int i7 = this.f13531i;
            if (this.f13532j) {
                int[] iArr4 = this.f13527e;
                if (iArr4[i7] != -1) {
                    i7 = iArr4.length;
                }
            } else {
                i7++;
            }
            int[] iArr5 = this.f13527e;
            int i8 = i7;
            if (i7 >= iArr5.length) {
                i8 = i7;
                if (this.f13523a < iArr5.length) {
                    int i9 = 0;
                    while (true) {
                        int[] iArr6 = this.f13527e;
                        i8 = i7;
                        if (i9 >= iArr6.length) {
                            break;
                        } else if (iArr6[i9] == -1) {
                            i8 = i9;
                            break;
                        } else {
                            i9++;
                        }
                    }
                }
            }
            int[] iArr7 = this.f13527e;
            int i10 = i8;
            if (i8 >= iArr7.length) {
                i10 = iArr7.length;
                int i11 = this.f13526d * 2;
                this.f13526d = i11;
                this.f13532j = false;
                this.f13531i = i10 - 1;
                this.f13529g = Arrays.copyOf(this.f13529g, i11);
                this.f13527e = Arrays.copyOf(this.f13527e, this.f13526d);
                this.f13528f = Arrays.copyOf(this.f13528f, this.f13526d);
            }
            this.f13527e[i10] = c4351h.f13571b;
            this.f13529g[i10] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f13528f;
                iArr8[i10] = iArr8[i3];
                iArr8[i3] = i10;
            } else {
                this.f13528f[i10] = this.f13530h;
                this.f13530h = i10;
            }
            c4351h.f13581l++;
            c4351h.m1019a(this.f13524b);
            this.f13523a++;
            if (!this.f13532j) {
                this.f13531i++;
            }
            int i12 = this.f13531i;
            int[] iArr9 = this.f13527e;
            if (i12 < iArr9.length) {
                return;
            }
            this.f13532j = true;
            this.f13531i = iArr9.length - 1;
        }
    }

    @Override // p237t.C4341b.AbstractC4342a
    /* renamed from: k */
    public void mo1052k() {
        int i = this.f13530h;
        for (int i2 = 0; i != -1 && i2 < this.f13523a; i2++) {
            float[] fArr = this.f13529g;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f13528f[i];
        }
    }

    public String toString() {
        int i = this.f13530h;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f13523a; i2++) {
            StringBuilder m8752j = C0082b.m8752j(C1676a.m4789h(str, " -> "));
            m8752j.append(this.f13529g[i]);
            m8752j.append(" : ");
            StringBuilder m8752j2 = C0082b.m8752j(m8752j.toString());
            m8752j2.append(((C4351h[]) this.f13525c.f13541d)[this.f13527e[i]]);
            str = m8752j2.toString();
            i = this.f13528f[i];
        }
        return str;
    }
}
