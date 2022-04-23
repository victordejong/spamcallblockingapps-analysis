package androidx.constraintlayout.a;

import androidx.constraintlayout.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/i.class */
public final class i implements b.a {
    private static float j = 0.001f;
    protected final c i;
    private final b n;
    private final int k = -1;
    private int l = 16;
    private int m = 16;

    /* renamed from: a  reason: collision with root package name */
    int[] f1420a = new int[16];

    /* renamed from: b  reason: collision with root package name */
    int[] f1421b = new int[16];

    /* renamed from: c  reason: collision with root package name */
    int[] f1422c = new int[16];

    /* renamed from: d  reason: collision with root package name */
    float[] f1423d = new float[16];
    int[] e = new int[16];
    int[] f = new int[16];
    int g = 0;
    int h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(b bVar, c cVar) {
        this.n = bVar;
        this.i = cVar;
        a();
    }

    private void a(int i, h hVar, float f) {
        this.f1422c[i] = hVar.f1417b;
        this.f1423d[i] = f;
        this.e[i] = -1;
        this.f[i] = -1;
        hVar.a(this.n);
        hVar.l++;
        this.g++;
    }

    private void a(h hVar, int i) {
        int[] iArr;
        int i2 = hVar.f1417b % this.m;
        int[] iArr2 = this.f1420a;
        int i3 = iArr2[i2];
        int i4 = i3;
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.f1421b;
                if (iArr[i4] == -1) {
                    break;
                }
                i4 = iArr[i4];
            }
            iArr[i4] = i;
        }
        this.f1421b[i] = -1;
    }

    private int c(h hVar) {
        int[] iArr;
        if (this.g == 0 || hVar == null) {
            return -1;
        }
        int i = hVar.f1417b;
        int i2 = this.f1420a[i % this.m];
        if (i2 == -1) {
            return -1;
        }
        int i3 = i2;
        if (this.f1422c[i2] == i) {
            return i2;
        }
        while (true) {
            iArr = this.f1421b;
            if (iArr[i3] == -1 || this.f1422c[iArr[i3]] == i) {
                break;
            }
            i3 = iArr[i3];
        }
        if (iArr[i3] != -1 && this.f1422c[iArr[i3]] == i) {
            return iArr[i3];
        }
        return -1;
    }

    private void d(h hVar) {
        int[] iArr;
        int i = hVar.f1417b % this.m;
        int i2 = this.f1420a[i];
        if (i2 != -1) {
            int i3 = hVar.f1417b;
            int i4 = i2;
            if (this.f1422c[i2] == i3) {
                int[] iArr2 = this.f1420a;
                int[] iArr3 = this.f1421b;
                iArr2[i] = iArr3[i2];
                iArr3[i2] = -1;
                return;
            }
            while (true) {
                iArr = this.f1421b;
                if (iArr[i4] == -1 || this.f1422c[iArr[i4]] == i3) {
                    break;
                }
                i4 = iArr[i4];
            }
            int i5 = iArr[i4];
            if (i5 != -1 && this.f1422c[i5] == i3) {
                iArr[i4] = iArr[i5];
                iArr[i5] = -1;
            }
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float a(b bVar, boolean z) {
        float b2 = b(bVar.f1394a);
        a(bVar.f1394a, z);
        i iVar = (i) bVar.e;
        int i = iVar.g;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            i2 = i2;
            if (iVar.f1422c[i3] != -1) {
                a(this.i.f1401d[iVar.f1422c[i3]], iVar.f1423d[i3] * b2, z);
                i2++;
            }
            i3++;
        }
        return b2;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float a(h hVar, boolean z) {
        int c2 = c(hVar);
        if (c2 == -1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        d(hVar);
        float f = this.f1423d[c2];
        if (this.h == c2) {
            this.h = this.f[c2];
        }
        this.f1422c[c2] = -1;
        int[] iArr = this.e;
        if (iArr[c2] != -1) {
            int[] iArr2 = this.f;
            iArr2[iArr[c2]] = iArr2[c2];
        }
        int[] iArr3 = this.f;
        if (iArr3[c2] != -1) {
            iArr[iArr3[c2]] = iArr[c2];
        }
        this.g--;
        hVar.l--;
        if (z) {
            hVar.b(this.n);
        }
        return f;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final h a(int i) {
        int i2 = this.g;
        if (i2 == 0) {
            return null;
        }
        int i3 = this.h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i && i3 != -1) {
                return this.i.f1401d[this.f1422c[i3]];
            }
            i3 = this.f[i3];
            if (i3 == -1) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a() {
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            h a2 = a(i2);
            if (a2 != null) {
                a2.b(this.n);
            }
        }
        for (int i3 = 0; i3 < this.l; i3++) {
            this.f1422c[i3] = -1;
            this.f1421b[i3] = -1;
        }
        for (int i4 = 0; i4 < this.m; i4++) {
            this.f1420a[i4] = -1;
        }
        this.g = 0;
        this.h = -1;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a(float f) {
        int i = this.g;
        int i2 = this.h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f1423d;
            fArr[i2] = fArr[i2] / f;
            i2 = this.f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a(h hVar, float f) {
        int i;
        int i2;
        float f2 = j;
        if (f > (-f2) && f < f2) {
            a(hVar, true);
        } else if (this.g == 0) {
            a(0, hVar, f);
            a(hVar, 0);
            this.h = 0;
        } else {
            int c2 = c(hVar);
            if (c2 != -1) {
                this.f1423d[c2] = f;
                return;
            }
            int i3 = this.g;
            int i4 = this.l;
            if (i3 + 1 >= i4) {
                int i5 = i4 * 2;
                this.f1422c = Arrays.copyOf(this.f1422c, i5);
                this.f1423d = Arrays.copyOf(this.f1423d, i5);
                this.e = Arrays.copyOf(this.e, i5);
                this.f = Arrays.copyOf(this.f, i5);
                this.f1421b = Arrays.copyOf(this.f1421b, i5);
                for (int i6 = this.l; i6 < i5; i6++) {
                    this.f1422c[i6] = -1;
                    this.f1421b[i6] = -1;
                }
                this.l = i5;
            }
            int i7 = this.g;
            int i8 = this.h;
            int i9 = 0;
            int i10 = -1;
            while (true) {
                i = 0;
                i2 = i10;
                if (i9 >= i7) {
                    break;
                } else if (this.f1422c[i8] != hVar.f1417b) {
                    if (this.f1422c[i8] < hVar.f1417b) {
                        i10 = i8;
                    }
                    i8 = this.f[i8];
                    i = 0;
                    i2 = i10;
                    if (i8 == -1) {
                        break;
                    }
                    i9++;
                } else {
                    this.f1423d[i8] = f;
                    return;
                }
            }
            while (true) {
                if (i >= this.l) {
                    i = -1;
                    break;
                } else if (this.f1422c[i] == -1) {
                    break;
                } else {
                    i++;
                }
            }
            a(i, hVar, f);
            if (i2 != -1) {
                this.e[i] = i2;
                int[] iArr = this.f;
                iArr[i] = iArr[i2];
                iArr[i2] = i;
            } else {
                this.e[i] = -1;
                if (this.g > 0) {
                    this.f[i] = this.h;
                    this.h = i;
                } else {
                    this.f[i] = -1;
                }
            }
            int[] iArr2 = this.f;
            if (iArr2[i] != -1) {
                this.e[iArr2[i]] = i;
            }
            a(hVar, i);
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a(h hVar, float f, boolean z) {
        float f2 = j;
        if (f <= (-f2) || f >= f2) {
            int c2 = c(hVar);
            if (c2 == -1) {
                a(hVar, f);
                return;
            }
            float[] fArr = this.f1423d;
            fArr[c2] = fArr[c2] + f;
            float f3 = fArr[c2];
            float f4 = j;
            if (f3 > (-f4) && fArr[c2] < f4) {
                fArr[c2] = 0.0f;
                a(hVar, z);
            }
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final boolean a(h hVar) {
        return c(hVar) != -1;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float b(int i) {
        int i2 = this.g;
        int i3 = this.h;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.f1423d[i3];
            }
            i3 = this.f[i3];
            if (i3 == -1) {
                return BitmapDescriptorFactory.HUE_RED;
            }
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float b(h hVar) {
        int c2 = c(hVar);
        return c2 != -1 ? this.f1423d[c2] : BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void b() {
        int i = this.g;
        int i2 = this.h;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.f1423d;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.f[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final int c() {
        return this.g;
    }

    public final String toString() {
        String str = hashCode() + " { ";
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            h a2 = a(i2);
            str = str;
            if (a2 != null) {
                String str2 = str + a2 + " = " + b(i2) + StringUtils.SPACE;
                int c2 = c(a2);
                String str3 = str2 + "[p: ";
                String str4 = (this.e[c2] != -1 ? str3 + this.i.f1401d[this.f1422c[this.e[c2]]] : str3 + "none") + ", n: ";
                str = (this.f[c2] != -1 ? str4 + this.i.f1401d[this.f1422c[this.f[c2]]] : str4 + "none") + "]";
            }
        }
        return str + " }";
    }
}
