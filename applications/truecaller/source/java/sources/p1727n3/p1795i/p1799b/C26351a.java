package p1727n3.p1795i.p1799b;

import java.util.Arrays;
import p1727n3.p1795i.p1799b.C26352b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.b.a */
/* loaded from: classes-dex2jar.jar:n3/i/b/a.class */
public class C26351a implements C26352b.AbstractC26353a {

    /* renamed from: b */
    public final C26352b f73561b;

    /* renamed from: c */
    public final C26354c f73562c;

    /* renamed from: a */
    public int f73560a = 0;

    /* renamed from: d */
    public int f73563d = 8;

    /* renamed from: e */
    public int[] f73564e = new int[8];

    /* renamed from: f */
    public int[] f73565f = new int[8];

    /* renamed from: g */
    public float[] f73566g = new float[8];

    /* renamed from: h */
    public int f73567h = -1;

    /* renamed from: i */
    public int f73568i = -1;

    /* renamed from: j */
    public boolean f73569j = false;

    public C26351a(C26352b c26352b, C26354c c26354c) {
        this.f73561b = c26352b;
        this.f73562c = c26354c;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: a */
    public C26358g mo2148a(int i) {
        int i2 = this.f73567h;
        for (int i3 = 0; i2 != -1 && i3 < this.f73560a; i3++) {
            if (i3 == i) {
                return this.f73562c.f73578d[this.f73564e[i2]];
            }
            i2 = this.f73565f[i2];
        }
        return null;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: b */
    public final float mo2147b(C26358g c26358g) {
        int i = this.f73567h;
        for (int i2 = 0; i != -1 && i2 < this.f73560a; i2++) {
            if (this.f73564e[i] == c26358g.f73603b) {
                return this.f73566g[i];
            }
            i = this.f73565f[i];
        }
        return 0.0f;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: c */
    public float mo2146c(C26352b c26352b, boolean z) {
        float mo2147b = mo2147b(c26352b.f73570a);
        mo2144e(c26352b.f73570a, z);
        C26352b.AbstractC26353a abstractC26353a = c26352b.f73573d;
        int mo2140i = abstractC26353a.mo2140i();
        for (int i = 0; i < mo2140i; i++) {
            C26358g mo2148a = abstractC26353a.mo2148a(i);
            mo2141h(mo2148a, abstractC26353a.mo2147b(mo2148a) * mo2147b, z);
        }
        return mo2147b;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    public final void clear() {
        int i = this.f73567h;
        for (int i2 = 0; i != -1 && i2 < this.f73560a; i2++) {
            C26358g c26358g = this.f73562c.f73578d[this.f73564e[i]];
            if (c26358g != null) {
                c26358g.m2111b(this.f73561b);
            }
            i = this.f73565f[i];
        }
        this.f73567h = -1;
        this.f73568i = -1;
        this.f73569j = false;
        this.f73560a = 0;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: d */
    public final void mo2145d(C26358g c26358g, float f) {
        if (f == 0.0f) {
            mo2144e(c26358g, true);
            return;
        }
        int i = this.f73567h;
        if (i == -1) {
            this.f73567h = 0;
            this.f73566g[0] = f;
            this.f73564e[0] = c26358g.f73603b;
            this.f73565f[0] = -1;
            c26358g.f73613l++;
            c26358g.m2112a(this.f73561b);
            this.f73560a++;
            if (this.f73569j) {
                return;
            }
            int i2 = this.f73568i + 1;
            this.f73568i = i2;
            int[] iArr = this.f73564e;
            if (i2 < iArr.length) {
                return;
            }
            this.f73569j = true;
            this.f73568i = iArr.length - 1;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f73560a; i4++) {
            int[] iArr2 = this.f73564e;
            int i5 = iArr2[i];
            int i6 = c26358g.f73603b;
            if (i5 == i6) {
                this.f73566g[i] = f;
                return;
            }
            if (iArr2[i] < i6) {
                i3 = i;
            }
            i = this.f73565f[i];
        }
        int i7 = this.f73568i;
        if (this.f73569j) {
            int[] iArr3 = this.f73564e;
            if (iArr3[i7] != -1) {
                i7 = iArr3.length;
            }
        } else {
            i7++;
        }
        int[] iArr4 = this.f73564e;
        int i8 = i7;
        if (i7 >= iArr4.length) {
            i8 = i7;
            if (this.f73560a < iArr4.length) {
                int i9 = 0;
                while (true) {
                    int[] iArr5 = this.f73564e;
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
        int[] iArr6 = this.f73564e;
        int i10 = i8;
        if (i8 >= iArr6.length) {
            i10 = iArr6.length;
            int i11 = this.f73563d * 2;
            this.f73563d = i11;
            this.f73569j = false;
            this.f73568i = i10 - 1;
            this.f73566g = Arrays.copyOf(this.f73566g, i11);
            this.f73564e = Arrays.copyOf(this.f73564e, this.f73563d);
            this.f73565f = Arrays.copyOf(this.f73565f, this.f73563d);
        }
        this.f73564e[i10] = c26358g.f73603b;
        this.f73566g[i10] = f;
        if (i3 != -1) {
            int[] iArr7 = this.f73565f;
            iArr7[i10] = iArr7[i3];
            iArr7[i3] = i10;
        } else {
            this.f73565f[i10] = this.f73567h;
            this.f73567h = i10;
        }
        c26358g.f73613l++;
        c26358g.m2112a(this.f73561b);
        int i12 = this.f73560a + 1;
        this.f73560a = i12;
        if (!this.f73569j) {
            this.f73568i++;
        }
        int[] iArr8 = this.f73564e;
        if (i12 >= iArr8.length) {
            this.f73569j = true;
        }
        if (this.f73568i < iArr8.length) {
            return;
        }
        this.f73569j = true;
        this.f73568i = iArr8.length - 1;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: e */
    public final float mo2144e(C26358g c26358g, boolean z) {
        int i = this.f73567h;
        if (i == -1) {
            return 0.0f;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f73560a) {
            if (this.f73564e[i] == c26358g.f73603b) {
                if (i == this.f73567h) {
                    this.f73567h = this.f73565f[i];
                } else {
                    int[] iArr = this.f73565f;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    c26358g.m2111b(this.f73561b);
                }
                c26358g.f73613l--;
                this.f73560a--;
                this.f73564e[i] = -1;
                if (this.f73569j) {
                    this.f73568i = i;
                }
                return this.f73566g[i];
            }
            i2++;
            i3 = i;
            i = this.f73565f[i];
        }
        return 0.0f;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: f */
    public void mo2143f(float f) {
        int i = this.f73567h;
        for (int i2 = 0; i != -1 && i2 < this.f73560a; i2++) {
            float[] fArr = this.f73566g;
            fArr[i] = fArr[i] / f;
            i = this.f73565f[i];
        }
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: g */
    public void mo2142g() {
        int i = this.f73567h;
        for (int i2 = 0; i != -1 && i2 < this.f73560a; i2++) {
            float[] fArr = this.f73566g;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f73565f[i];
        }
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: h */
    public void mo2141h(C26358g c26358g, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int i = this.f73567h;
            if (i == -1) {
                this.f73567h = 0;
                this.f73566g[0] = f;
                this.f73564e[0] = c26358g.f73603b;
                this.f73565f[0] = -1;
                c26358g.f73613l++;
                c26358g.m2112a(this.f73561b);
                this.f73560a++;
                if (this.f73569j) {
                    return;
                }
                int i2 = this.f73568i + 1;
                this.f73568i = i2;
                int[] iArr = this.f73564e;
                if (i2 < iArr.length) {
                    return;
                }
                this.f73569j = true;
                this.f73568i = iArr.length - 1;
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f73560a; i4++) {
                int[] iArr2 = this.f73564e;
                int i5 = iArr2[i];
                int i6 = c26358g.f73603b;
                if (i5 == i6) {
                    float[] fArr = this.f73566g;
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
                    if (i == this.f73567h) {
                        this.f73567h = this.f73565f[i];
                    } else {
                        int[] iArr3 = this.f73565f;
                        iArr3[i3] = iArr3[i];
                    }
                    if (z) {
                        c26358g.m2111b(this.f73561b);
                    }
                    if (this.f73569j) {
                        this.f73568i = i;
                    }
                    c26358g.f73613l--;
                    this.f73560a--;
                    return;
                }
                if (iArr2[i] < i6) {
                    i3 = i;
                }
                i = this.f73565f[i];
            }
            int i7 = this.f73568i;
            if (this.f73569j) {
                int[] iArr4 = this.f73564e;
                if (iArr4[i7] != -1) {
                    i7 = iArr4.length;
                }
            } else {
                i7++;
            }
            int[] iArr5 = this.f73564e;
            int i8 = i7;
            if (i7 >= iArr5.length) {
                i8 = i7;
                if (this.f73560a < iArr5.length) {
                    int i9 = 0;
                    while (true) {
                        int[] iArr6 = this.f73564e;
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
            int[] iArr7 = this.f73564e;
            int i10 = i8;
            if (i8 >= iArr7.length) {
                i10 = iArr7.length;
                int i11 = this.f73563d * 2;
                this.f73563d = i11;
                this.f73569j = false;
                this.f73568i = i10 - 1;
                this.f73566g = Arrays.copyOf(this.f73566g, i11);
                this.f73564e = Arrays.copyOf(this.f73564e, this.f73563d);
                this.f73565f = Arrays.copyOf(this.f73565f, this.f73563d);
            }
            this.f73564e[i10] = c26358g.f73603b;
            this.f73566g[i10] = f;
            if (i3 != -1) {
                int[] iArr8 = this.f73565f;
                iArr8[i10] = iArr8[i3];
                iArr8[i3] = i10;
            } else {
                this.f73565f[i10] = this.f73567h;
                this.f73567h = i10;
            }
            c26358g.f73613l++;
            c26358g.m2112a(this.f73561b);
            this.f73560a++;
            if (!this.f73569j) {
                this.f73568i++;
            }
            int i12 = this.f73568i;
            int[] iArr9 = this.f73564e;
            if (i12 < iArr9.length) {
                return;
            }
            this.f73569j = true;
            this.f73568i = iArr9.length - 1;
        }
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: i */
    public int mo2140i() {
        return this.f73560a;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: j */
    public float mo2139j(int i) {
        int i2 = this.f73567h;
        for (int i3 = 0; i2 != -1 && i3 < this.f73560a; i3++) {
            if (i3 == i) {
                return this.f73566g[i2];
            }
            i2 = this.f73565f[i2];
        }
        return 0.0f;
    }

    @Override // p1727n3.p1795i.p1799b.C26352b.AbstractC26353a
    /* renamed from: k */
    public boolean mo2138k(C26358g c26358g) {
        int i = this.f73567h;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f73560a; i2++) {
            if (this.f73564e[i] == c26358g.f73603b) {
                return true;
            }
            i = this.f73565f[i];
        }
        return false;
    }

    public String toString() {
        int i = this.f73567h;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f73560a; i2++) {
            StringBuilder m8728C = C22128a.m8728C(C22128a.m8543z2(str, " -> "));
            m8728C.append(this.f73566g[i]);
            m8728C.append(" : ");
            StringBuilder m8728C2 = C22128a.m8728C(m8728C.toString());
            m8728C2.append(this.f73562c.f73578d[this.f73564e[i]]);
            str = m8728C2.toString();
            i = this.f73565f[i];
        }
        return str;
    }
}
