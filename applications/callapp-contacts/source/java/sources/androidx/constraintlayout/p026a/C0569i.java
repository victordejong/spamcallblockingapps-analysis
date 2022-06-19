package androidx.constraintlayout.p026a;

import androidx.constraintlayout.p026a.C0554b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* renamed from: androidx.constraintlayout.a.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/i.class */
public final class C0569i implements C0554b.AbstractC0555a {

    /* renamed from: j */
    private static float f2336j = 0.001f;

    /* renamed from: i */
    protected final C0556c f2345i;

    /* renamed from: n */
    private final C0554b f2349n;

    /* renamed from: k */
    private final int f2346k = -1;

    /* renamed from: l */
    private int f2347l = 16;

    /* renamed from: m */
    private int f2348m = 16;

    /* renamed from: a */
    int[] f2337a = new int[16];

    /* renamed from: b */
    int[] f2338b = new int[16];

    /* renamed from: c */
    int[] f2339c = new int[16];

    /* renamed from: d */
    float[] f2340d = new float[16];

    /* renamed from: e */
    int[] f2341e = new int[16];

    /* renamed from: f */
    int[] f2342f = new int[16];

    /* renamed from: g */
    int f2343g = 0;

    /* renamed from: h */
    int f2344h = -1;

    public C0569i(C0554b c0554b, C0556c c0556c) {
        this.f2349n = c0554b;
        this.f2345i = c0556c;
        mo45106a();
    }

    /* renamed from: a */
    private void m45103a(int i, C0567h c0567h, float f) {
        this.f2339c[i] = c0567h.f2320b;
        this.f2340d[i] = f;
        this.f2341e[i] = -1;
        this.f2342f[i] = -1;
        c0567h.m45111a(this.f2349n);
        c0567h.f2330l++;
        this.f2343g++;
    }

    /* renamed from: a */
    private void m45098a(C0567h c0567h, int i) {
        int[] iArr;
        int i2 = c0567h.f2320b % this.f2348m;
        int[] iArr2 = this.f2337a;
        int i3 = iArr2[i2];
        int i4 = i3;
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f2338b;
                if (iArr[i4] == -1) {
                    break;
                }
                i4 = iArr[i4];
            }
            iArr[i4] = i;
        }
        this.f2338b[i] = -1;
    }

    /* renamed from: c */
    private int m45092c(C0567h c0567h) {
        int[] iArr;
        if (this.f2343g == 0 || c0567h == null) {
            return -1;
        }
        int i = c0567h.f2320b;
        int i2 = this.f2337a[i % this.f2348m];
        if (i2 == -1) {
            return -1;
        }
        int i3 = i2;
        if (this.f2339c[i2] == i) {
            return i2;
        }
        while (true) {
            iArr = this.f2338b;
            if (iArr[i3] == -1 || this.f2339c[iArr[i3]] == i) {
                break;
            }
            i3 = iArr[i3];
        }
        if (iArr[i3] == -1 || this.f2339c[iArr[i3]] != i) {
            return -1;
        }
        return iArr[i3];
    }

    /* renamed from: d */
    private void m45091d(C0567h c0567h) {
        int[] iArr;
        int i = c0567h.f2320b % this.f2348m;
        int i2 = this.f2337a[i];
        if (i2 == -1) {
            return;
        }
        int i3 = c0567h.f2320b;
        int i4 = i2;
        if (this.f2339c[i2] == i3) {
            int[] iArr2 = this.f2337a;
            int[] iArr3 = this.f2338b;
            iArr2[i] = iArr3[i2];
            iArr3[i2] = -1;
            return;
        }
        while (true) {
            iArr = this.f2338b;
            if (iArr[i4] == -1 || this.f2339c[iArr[i4]] == i3) {
                break;
            }
            i4 = iArr[i4];
        }
        int i5 = iArr[i4];
        if (i5 == -1 || this.f2339c[i5] != i3) {
            return;
        }
        iArr[i4] = iArr[i5];
        iArr[i5] = -1;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final float mo45102a(C0554b c0554b, boolean z) {
        float mo45094b = mo45094b(c0554b.f2232a);
        mo45097a(c0554b.f2232a, z);
        C0569i c0569i = (C0569i) c0554b.f2236e;
        int i = c0569i.f2343g;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = i2;
            if (c0569i.f2339c[i3] != -1) {
                mo45099a(this.f2345i.f2241d[c0569i.f2339c[i3]], c0569i.f2340d[i3] * mo45094b, z);
                i4 = i2 + 1;
            }
            i3++;
            i2 = i4;
        }
        return mo45094b;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final float mo45097a(C0567h c0567h, boolean z) {
        int m45092c = m45092c(c0567h);
        if (m45092c == -1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        m45091d(c0567h);
        float f = this.f2340d[m45092c];
        if (this.f2344h == m45092c) {
            this.f2344h = this.f2342f[m45092c];
        }
        this.f2339c[m45092c] = -1;
        int[] iArr = this.f2341e;
        if (iArr[m45092c] != -1) {
            int[] iArr2 = this.f2342f;
            iArr2[iArr[m45092c]] = iArr2[m45092c];
        }
        int[] iArr3 = this.f2342f;
        if (iArr3[m45092c] != -1) {
            iArr[iArr3[m45092c]] = iArr[m45092c];
        }
        this.f2343g--;
        c0567h.f2330l--;
        if (z) {
            c0567h.m45107b(this.f2349n);
        }
        return f;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final C0567h mo45104a(int i) {
        int i2 = this.f2343g;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f2344h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.f2345i.f2241d[this.f2339c[i3]];
            }
            i3 = this.f2342f[i3];
            if (i3 == -1) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45106a() {
        int i = this.f2343g;
        for (int i2 = 0; i2 < i; i2++) {
            C0567h mo45104a = mo45104a(i2);
            if (mo45104a != null) {
                mo45104a.m45107b(this.f2349n);
            }
        }
        for (int i3 = 0; i3 < this.f2347l; i3++) {
            this.f2339c[i3] = -1;
            this.f2338b[i3] = -1;
        }
        for (int i4 = 0; i4 < this.f2348m; i4++) {
            this.f2337a[i4] = -1;
        }
        this.f2343g = 0;
        this.f2344h = -1;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45105a(float f) {
        int i = this.f2343g;
        int i2 = this.f2344h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2340d;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f2342f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45100a(C0567h c0567h, float f) {
        int i;
        int i2;
        float f2 = f2336j;
        if (f > (-f2) && f < f2) {
            mo45097a(c0567h, true);
        } else if (this.f2343g == 0) {
            m45103a(0, c0567h, f);
            m45098a(c0567h, 0);
            this.f2344h = 0;
        } else {
            int m45092c = m45092c(c0567h);
            if (m45092c != -1) {
                this.f2340d[m45092c] = f;
                return;
            }
            int i3 = this.f2343g;
            int i4 = this.f2347l;
            if (i3 + 1 >= i4) {
                int i5 = i4 * 2;
                this.f2339c = Arrays.copyOf(this.f2339c, i5);
                this.f2340d = Arrays.copyOf(this.f2340d, i5);
                this.f2341e = Arrays.copyOf(this.f2341e, i5);
                this.f2342f = Arrays.copyOf(this.f2342f, i5);
                this.f2338b = Arrays.copyOf(this.f2338b, i5);
                for (int i6 = this.f2347l; i6 < i5; i6++) {
                    this.f2339c[i6] = -1;
                    this.f2338b[i6] = -1;
                }
                this.f2347l = i5;
            }
            int i7 = this.f2343g;
            int i8 = this.f2344h;
            int i9 = 0;
            int i10 = -1;
            while (true) {
                i = 0;
                i2 = i10;
                if (i9 >= i7) {
                    break;
                } else if (this.f2339c[i8] == c0567h.f2320b) {
                    this.f2340d[i8] = f;
                    return;
                } else {
                    if (this.f2339c[i8] < c0567h.f2320b) {
                        i10 = i8;
                    }
                    i8 = this.f2342f[i8];
                    i = 0;
                    i2 = i10;
                    if (i8 == -1) {
                        break;
                    }
                    i9++;
                }
            }
            while (true) {
                if (i >= this.f2347l) {
                    i = -1;
                    break;
                } else if (this.f2339c[i] == -1) {
                    break;
                } else {
                    i++;
                }
            }
            m45103a(i, c0567h, f);
            if (i2 != -1) {
                this.f2341e[i] = i2;
                int[] iArr = this.f2342f;
                iArr[i] = iArr[i2];
                iArr[i2] = i;
            } else {
                this.f2341e[i] = -1;
                if (this.f2343g > 0) {
                    this.f2342f[i] = this.f2344h;
                    this.f2344h = i;
                } else {
                    this.f2342f[i] = -1;
                }
            }
            int[] iArr2 = this.f2342f;
            if (iArr2[i] != -1) {
                this.f2341e[iArr2[i]] = i;
            }
            m45098a(c0567h, i);
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final void mo45099a(C0567h c0567h, float f, boolean z) {
        float f2 = f2336j;
        if (f <= (-f2) || f >= f2) {
            int m45092c = m45092c(c0567h);
            if (m45092c == -1) {
                mo45100a(c0567h, f);
                return;
            }
            float[] fArr = this.f2340d;
            fArr[m45092c] = fArr[m45092c] + f;
            float f3 = fArr[m45092c];
            float f4 = f2336j;
            if (f3 <= (-f4) || fArr[m45092c] >= f4) {
                return;
            }
            fArr[m45092c] = 0.0f;
            mo45097a(c0567h, z);
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: a */
    public final boolean mo45101a(C0567h c0567h) {
        return m45092c(c0567h) != -1;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: b */
    public final float mo45095b(int i) {
        int i2 = this.f2343g;
        int i3 = this.f2344h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f2340d[i3];
            }
            i3 = this.f2342f[i3];
            if (i3 == -1) {
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: b */
    public final float mo45094b(C0567h c0567h) {
        int m45092c = m45092c(c0567h);
        return m45092c != -1 ? this.f2340d[m45092c] : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: b */
    public final void mo45096b() {
        int i = this.f2343g;
        int i2 = this.f2344h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f2340d;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f2342f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.p026a.C0554b.AbstractC0555a
    /* renamed from: c */
    public final int mo45093c() {
        return this.f2343g;
    }

    public final String toString() {
        String str;
        String str2;
        String str3 = hashCode() + " { ";
        int i = this.f2343g;
        int i2 = 0;
        while (i2 < i) {
            C0567h mo45104a = mo45104a(i2);
            String str4 = str3;
            if (mo45104a != null) {
                String str5 = str3 + mo45104a + " = " + mo45095b(i2) + StringUtils.SPACE;
                int m45092c = m45092c(mo45104a);
                String str6 = str5 + "[p: ";
                if (this.f2341e[m45092c] != -1) {
                    str = str6 + this.f2345i.f2241d[this.f2339c[this.f2341e[m45092c]]];
                } else {
                    str = str6 + "none";
                }
                String str7 = str + ", n: ";
                if (this.f2342f[m45092c] != -1) {
                    str2 = str7 + this.f2345i.f2241d[this.f2339c[this.f2342f[m45092c]]];
                } else {
                    str2 = str7 + "none";
                }
                str4 = str2 + "]";
            }
            i2++;
            str3 = str4;
        }
        return str3 + " }";
    }
}
