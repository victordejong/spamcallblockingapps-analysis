package androidx.constraintlayout.p026a;

import androidx.constraintlayout.p026a.C0554b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* renamed from: androidx.constraintlayout.a.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a.class */
public final class C0510a implements C0554b.AbstractC0555a {

    /* renamed from: l */
    private static float f1908l = 0.001f;

    /* renamed from: b */
    protected final C0556c f1910b;

    /* renamed from: c */
    private final C0554b f1911c;

    /* renamed from: a */
    int f1909a = 0;

    /* renamed from: d */
    private int f1912d = 8;

    /* renamed from: e */
    private C0567h f1913e = null;

    /* renamed from: f */
    private int[] f1914f = new int[8];

    /* renamed from: g */
    private int[] f1915g = new int[8];

    /* renamed from: h */
    private float[] f1916h = new float[8];

    /* renamed from: i */
    private int f1917i = -1;

    /* renamed from: j */
    private int f1918j = -1;

    /* renamed from: k */
    private boolean f1919k = false;

    public C0510a(C0554b c0554b, C0556c c0556c) {
        this.f1911c = c0554b;
        this.f1910b = c0556c;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final float mo45102a(C0554b c0554b, boolean z) {
        float mo45094b = mo45094b(c0554b.f2232a);
        mo45097a(c0554b.f2232a, z);
        C0554b.AbstractC0555a abstractC0555a = c0554b.f2236e;
        int mo45093c = abstractC0555a.mo45093c();
        for (int i = 0; i < mo45093c; i++) {
            C0567h mo45104a = abstractC0555a.mo45104a(i);
            mo45099a(mo45104a, abstractC0555a.mo45094b(mo45104a) * mo45094b, z);
        }
        return mo45094b;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final float mo45097a(C0567h c0567h, boolean z) {
        if (this.f1913e == c0567h) {
            this.f1913e = null;
        }
        int i = this.f1917i;
        if (i == -1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f1909a) {
            if (this.f1914f[i] == c0567h.f2320b) {
                if (i == this.f1917i) {
                    this.f1917i = this.f1915g[i];
                } else {
                    int[] iArr = this.f1915g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    c0567h.m45107b(this.f1911c);
                }
                c0567h.f2330l--;
                this.f1909a--;
                this.f1914f[i] = -1;
                if (this.f1919k) {
                    this.f1918j = i;
                }
                return this.f1916h[i];
            }
            i2++;
            i3 = i;
            i = this.f1915g[i];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final C0567h mo45104a(int i) {
        int i2 = this.f1917i;
        for (int i3 = 0; i2 != -1 && i3 < this.f1909a; i3++) {
            if (i3 == i) {
                return this.f1910b.f2241d[this.f1914f[i2]];
            }
            i2 = this.f1915g[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45106a() {
        int i = this.f1917i;
        for (int i2 = 0; i != -1 && i2 < this.f1909a; i2++) {
            C0567h c0567h = this.f1910b.f2241d[this.f1914f[i]];
            if (c0567h != null) {
                c0567h.m45107b(this.f1911c);
            }
            i = this.f1915g[i];
        }
        this.f1917i = -1;
        this.f1918j = -1;
        this.f1919k = false;
        this.f1909a = 0;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45105a(float f) {
        int i = this.f1917i;
        for (int i2 = 0; i != -1 && i2 < this.f1909a; i2++) {
            float[] fArr = this.f1916h;
            fArr[i] = fArr[i] / f;
            i = this.f1915g[i];
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45100a(C0567h c0567h, float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            mo45097a(c0567h, true);
            return;
        }
        int i = this.f1917i;
        if (i == -1) {
            this.f1917i = 0;
            this.f1916h[0] = f;
            this.f1914f[0] = c0567h.f2320b;
            this.f1915g[this.f1917i] = -1;
            c0567h.f2330l++;
            c0567h.m45111a(this.f1911c);
            this.f1909a++;
            if (this.f1919k) {
                return;
            }
            int i2 = this.f1918j + 1;
            this.f1918j = i2;
            int[] iArr = this.f1914f;
            if (i2 < iArr.length) {
                return;
            }
            this.f1919k = true;
            this.f1918j = iArr.length - 1;
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f1909a; i4++) {
            if (this.f1914f[i] == c0567h.f2320b) {
                this.f1916h[i] = f;
                return;
            }
            if (this.f1914f[i] < c0567h.f2320b) {
                i3 = i;
            }
            i = this.f1915g[i];
        }
        int i5 = this.f1918j;
        if (this.f1919k) {
            int[] iArr2 = this.f1914f;
            if (iArr2[i5] != -1) {
                i5 = iArr2.length;
            }
        } else {
            i5++;
        }
        int[] iArr3 = this.f1914f;
        int i6 = i5;
        if (i5 >= iArr3.length) {
            i6 = i5;
            if (this.f1909a < iArr3.length) {
                int i7 = 0;
                while (true) {
                    int[] iArr4 = this.f1914f;
                    i6 = i5;
                    if (i7 >= iArr4.length) {
                        break;
                    } else if (iArr4[i7] == -1) {
                        i6 = i7;
                        break;
                    } else {
                        i7++;
                    }
                }
            }
        }
        int[] iArr5 = this.f1914f;
        int i8 = i6;
        if (i6 >= iArr5.length) {
            i8 = iArr5.length;
            int i9 = this.f1912d * 2;
            this.f1912d = i9;
            this.f1919k = false;
            this.f1918j = i8 - 1;
            this.f1916h = Arrays.copyOf(this.f1916h, i9);
            this.f1914f = Arrays.copyOf(this.f1914f, this.f1912d);
            this.f1915g = Arrays.copyOf(this.f1915g, this.f1912d);
        }
        this.f1914f[i8] = c0567h.f2320b;
        this.f1916h[i8] = f;
        if (i3 != -1) {
            int[] iArr6 = this.f1915g;
            iArr6[i8] = iArr6[i3];
            iArr6[i3] = i8;
        } else {
            this.f1915g[i8] = this.f1917i;
            this.f1917i = i8;
        }
        c0567h.f2330l++;
        c0567h.m45111a(this.f1911c);
        int i10 = this.f1909a + 1;
        this.f1909a = i10;
        if (!this.f1919k) {
            this.f1918j++;
        }
        int[] iArr7 = this.f1914f;
        if (i10 >= iArr7.length) {
            this.f1919k = true;
        }
        if (this.f1918j < iArr7.length) {
            return;
        }
        this.f1919k = true;
        this.f1918j = iArr7.length - 1;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45099a(C0567h c0567h, float f, boolean z) {
        float f2 = f1908l;
        if (f <= (-f2) || f >= f2) {
            int i = this.f1917i;
            if (i == -1) {
                this.f1917i = 0;
                this.f1916h[0] = f;
                this.f1914f[0] = c0567h.f2320b;
                this.f1915g[this.f1917i] = -1;
                c0567h.f2330l++;
                c0567h.m45111a(this.f1911c);
                this.f1909a++;
                if (this.f1919k) {
                    return;
                }
                int i2 = this.f1918j + 1;
                this.f1918j = i2;
                int[] iArr = this.f1914f;
                if (i2 < iArr.length) {
                    return;
                }
                this.f1919k = true;
                this.f1918j = iArr.length - 1;
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f1909a; i4++) {
                if (this.f1914f[i] == c0567h.f2320b) {
                    float[] fArr = this.f1916h;
                    float f3 = fArr[i] + f;
                    float f4 = f1908l;
                    float f5 = f3;
                    if (f3 > (-f4)) {
                        f5 = f3;
                        if (f3 < f4) {
                            f5 = 0.0f;
                        }
                    }
                    fArr[i] = f5;
                    if (f5 != BitmapDescriptorFactory.HUE_RED) {
                        return;
                    }
                    if (i == this.f1917i) {
                        this.f1917i = this.f1915g[i];
                    } else {
                        int[] iArr2 = this.f1915g;
                        iArr2[i3] = iArr2[i];
                    }
                    if (z) {
                        c0567h.m45107b(this.f1911c);
                    }
                    if (this.f1919k) {
                        this.f1918j = i;
                    }
                    c0567h.f2330l--;
                    this.f1909a--;
                    return;
                }
                if (this.f1914f[i] < c0567h.f2320b) {
                    i3 = i;
                }
                i = this.f1915g[i];
            }
            int i5 = this.f1918j;
            if (this.f1919k) {
                int[] iArr3 = this.f1914f;
                if (iArr3[i5] != -1) {
                    i5 = iArr3.length;
                }
            } else {
                i5++;
            }
            int[] iArr4 = this.f1914f;
            int i6 = i5;
            if (i5 >= iArr4.length) {
                i6 = i5;
                if (this.f1909a < iArr4.length) {
                    int i7 = 0;
                    while (true) {
                        int[] iArr5 = this.f1914f;
                        i6 = i5;
                        if (i7 >= iArr5.length) {
                            break;
                        } else if (iArr5[i7] == -1) {
                            i6 = i7;
                            break;
                        } else {
                            i7++;
                        }
                    }
                }
            }
            int[] iArr6 = this.f1914f;
            int i8 = i6;
            if (i6 >= iArr6.length) {
                i8 = iArr6.length;
                int i9 = this.f1912d * 2;
                this.f1912d = i9;
                this.f1919k = false;
                this.f1918j = i8 - 1;
                this.f1916h = Arrays.copyOf(this.f1916h, i9);
                this.f1914f = Arrays.copyOf(this.f1914f, this.f1912d);
                this.f1915g = Arrays.copyOf(this.f1915g, this.f1912d);
            }
            this.f1914f[i8] = c0567h.f2320b;
            this.f1916h[i8] = f;
            if (i3 != -1) {
                int[] iArr7 = this.f1915g;
                iArr7[i8] = iArr7[i3];
                iArr7[i3] = i8;
            } else {
                this.f1915g[i8] = this.f1917i;
                this.f1917i = i8;
            }
            c0567h.f2330l++;
            c0567h.m45111a(this.f1911c);
            this.f1909a++;
            if (!this.f1919k) {
                this.f1918j++;
            }
            int i10 = this.f1918j;
            int[] iArr8 = this.f1914f;
            if (i10 < iArr8.length) {
                return;
            }
            this.f1919k = true;
            this.f1918j = iArr8.length - 1;
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final boolean mo45101a(C0567h c0567h) {
        int i = this.f1917i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f1909a; i2++) {
            if (this.f1914f[i] == c0567h.f2320b) {
                return true;
            }
            i = this.f1915g[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: b */
    public final float mo45095b(int i) {
        int i2 = this.f1917i;
        for (int i3 = 0; i2 != -1 && i3 < this.f1909a; i3++) {
            if (i3 == i) {
                return this.f1916h[i2];
            }
            i2 = this.f1915g[i2];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: b */
    public final float mo45094b(C0567h c0567h) {
        int i = this.f1917i;
        for (int i2 = 0; i != -1 && i2 < this.f1909a; i2++) {
            if (this.f1914f[i] == c0567h.f2320b) {
                return this.f1916h[i];
            }
            i = this.f1915g[i];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: b */
    public final void mo45096b() {
        int i = this.f1917i;
        for (int i2 = 0; i != -1 && i2 < this.f1909a; i2++) {
            float[] fArr = this.f1916h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.f1915g[i];
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: c */
    public final int mo45093c() {
        return this.f1909a;
    }

    public final String toString() {
        int i = this.f1917i;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f1909a; i2++) {
            str = ((str + " -> ") + this.f1916h[i] + " : ") + this.f1910b.f2241d[this.f1914f[i]];
            i = this.f1915g[i];
        }
        return str;
    }
}
