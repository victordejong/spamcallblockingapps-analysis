package androidx.constraintlayout.a;

import androidx.constraintlayout.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a.class */
public final class a implements b.a {
    private static float l = 0.001f;

    /* renamed from: b  reason: collision with root package name */
    protected final c f1310b;

    /* renamed from: c  reason: collision with root package name */
    private final b f1311c;

    /* renamed from: a  reason: collision with root package name */
    int f1309a = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f1312d = 8;
    private h e = null;
    private int[] f = new int[8];
    private int[] g = new int[8];
    private float[] h = new float[8];
    private int i = -1;
    private int j = -1;
    private boolean k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b bVar, c cVar) {
        this.f1311c = bVar;
        this.f1310b = cVar;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float a(b bVar, boolean z) {
        float b2 = b(bVar.f1394a);
        a(bVar.f1394a, z);
        b.a aVar = bVar.e;
        int c2 = aVar.c();
        for (int i = 0; i < c2; i++) {
            h a2 = aVar.a(i);
            a(a2, aVar.b(a2) * b2, z);
        }
        return b2;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float a(h hVar, boolean z) {
        if (this.e == hVar) {
            this.e = null;
        }
        int i = this.i;
        if (i == -1) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.f1309a) {
            if (this.f[i] == hVar.f1417b) {
                if (i == this.i) {
                    this.i = this.g[i];
                } else {
                    int[] iArr = this.g;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    hVar.b(this.f1311c);
                }
                hVar.l--;
                this.f1309a--;
                this.f[i] = -1;
                if (this.k) {
                    this.j = i;
                }
                return this.h[i];
            }
            i = this.g[i];
            i2++;
            i3 = i;
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final h a(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.f1309a; i3++) {
            if (i3 == i) {
                return this.f1310b.f1401d[this.f[i2]];
            }
            i2 = this.g[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1309a; i2++) {
            h hVar = this.f1310b.f1401d[this.f[i]];
            if (hVar != null) {
                hVar.b(this.f1311c);
            }
            i = this.g[i];
        }
        this.i = -1;
        this.j = -1;
        this.k = false;
        this.f1309a = 0;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a(float f) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1309a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] / f;
            i = this.g[i];
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a(h hVar, float f) {
        if (f == BitmapDescriptorFactory.HUE_RED) {
            a(hVar, true);
            return;
        }
        int i = this.i;
        if (i == -1) {
            this.i = 0;
            this.h[0] = f;
            this.f[0] = hVar.f1417b;
            this.g[this.i] = -1;
            hVar.l++;
            hVar.a(this.f1311c);
            this.f1309a++;
            if (!this.k) {
                int i2 = this.j + 1;
                this.j = i2;
                int[] iArr = this.f;
                if (i2 >= iArr.length) {
                    this.k = true;
                    this.j = iArr.length - 1;
                    return;
                }
                return;
            }
            return;
        }
        int i3 = -1;
        for (int i4 = 0; i != -1 && i4 < this.f1309a; i4++) {
            if (this.f[i] == hVar.f1417b) {
                this.h[i] = f;
                return;
            }
            if (this.f[i] < hVar.f1417b) {
                i3 = i;
            }
            i = this.g[i];
        }
        int i5 = this.j;
        if (this.k) {
            int[] iArr2 = this.f;
            if (iArr2[i5] != -1) {
                i5 = iArr2.length;
            }
        } else {
            i5++;
        }
        int[] iArr3 = this.f;
        int i6 = i5;
        if (i5 >= iArr3.length) {
            i6 = i5;
            if (this.f1309a < iArr3.length) {
                int i7 = 0;
                while (true) {
                    int[] iArr4 = this.f;
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
        int[] iArr5 = this.f;
        int i8 = i6;
        if (i6 >= iArr5.length) {
            i8 = iArr5.length;
            int i9 = this.f1312d * 2;
            this.f1312d = i9;
            this.k = false;
            this.j = i8 - 1;
            this.h = Arrays.copyOf(this.h, i9);
            this.f = Arrays.copyOf(this.f, this.f1312d);
            this.g = Arrays.copyOf(this.g, this.f1312d);
        }
        this.f[i8] = hVar.f1417b;
        this.h[i8] = f;
        if (i3 != -1) {
            int[] iArr6 = this.g;
            iArr6[i8] = iArr6[i3];
            iArr6[i3] = i8;
        } else {
            this.g[i8] = this.i;
            this.i = i8;
        }
        hVar.l++;
        hVar.a(this.f1311c);
        int i10 = this.f1309a + 1;
        this.f1309a = i10;
        if (!this.k) {
            this.j++;
        }
        int[] iArr7 = this.f;
        if (i10 >= iArr7.length) {
            this.k = true;
        }
        if (this.j >= iArr7.length) {
            this.k = true;
            this.j = iArr7.length - 1;
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void a(h hVar, float f, boolean z) {
        float f2 = l;
        if (f <= (-f2) || f >= f2) {
            int i = this.i;
            if (i == -1) {
                this.i = 0;
                this.h[0] = f;
                this.f[0] = hVar.f1417b;
                this.g[this.i] = -1;
                hVar.l++;
                hVar.a(this.f1311c);
                this.f1309a++;
                if (!this.k) {
                    int i2 = this.j + 1;
                    this.j = i2;
                    int[] iArr = this.f;
                    if (i2 >= iArr.length) {
                        this.k = true;
                        this.j = iArr.length - 1;
                        return;
                    }
                    return;
                }
                return;
            }
            int i3 = -1;
            for (int i4 = 0; i != -1 && i4 < this.f1309a; i4++) {
                if (this.f[i] == hVar.f1417b) {
                    float[] fArr = this.h;
                    float f3 = fArr[i] + f;
                    float f4 = l;
                    float f5 = f3;
                    if (f3 > (-f4)) {
                        f5 = f3;
                        if (f3 < f4) {
                            f5 = BitmapDescriptorFactory.HUE_RED;
                        }
                    }
                    fArr[i] = f5;
                    if (f5 == BitmapDescriptorFactory.HUE_RED) {
                        if (i == this.i) {
                            this.i = this.g[i];
                        } else {
                            int[] iArr2 = this.g;
                            iArr2[i3] = iArr2[i];
                        }
                        if (z) {
                            hVar.b(this.f1311c);
                        }
                        if (this.k) {
                            this.j = i;
                        }
                        hVar.l--;
                        this.f1309a--;
                        return;
                    }
                    return;
                }
                if (this.f[i] < hVar.f1417b) {
                    i3 = i;
                }
                i = this.g[i];
            }
            int i5 = this.j;
            if (this.k) {
                int[] iArr3 = this.f;
                if (iArr3[i5] != -1) {
                    i5 = iArr3.length;
                }
            } else {
                i5++;
            }
            int[] iArr4 = this.f;
            int i6 = i5;
            if (i5 >= iArr4.length) {
                i6 = i5;
                if (this.f1309a < iArr4.length) {
                    int i7 = 0;
                    while (true) {
                        int[] iArr5 = this.f;
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
            int[] iArr6 = this.f;
            int i8 = i6;
            if (i6 >= iArr6.length) {
                i8 = iArr6.length;
                int i9 = this.f1312d * 2;
                this.f1312d = i9;
                this.k = false;
                this.j = i8 - 1;
                this.h = Arrays.copyOf(this.h, i9);
                this.f = Arrays.copyOf(this.f, this.f1312d);
                this.g = Arrays.copyOf(this.g, this.f1312d);
            }
            this.f[i8] = hVar.f1417b;
            this.h[i8] = f;
            if (i3 != -1) {
                int[] iArr7 = this.g;
                iArr7[i8] = iArr7[i3];
                iArr7[i3] = i8;
            } else {
                this.g[i8] = this.i;
                this.i = i8;
            }
            hVar.l++;
            hVar.a(this.f1311c);
            this.f1309a++;
            if (!this.k) {
                this.j++;
            }
            int i10 = this.j;
            int[] iArr8 = this.f;
            if (i10 >= iArr8.length) {
                this.k = true;
                this.j = iArr8.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final boolean a(h hVar) {
        int i = this.i;
        if (i == -1) {
            return false;
        }
        for (int i2 = 0; i != -1 && i2 < this.f1309a; i2++) {
            if (this.f[i] == hVar.f1417b) {
                return true;
            }
            i = this.g[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float b(int i) {
        int i2 = this.i;
        for (int i3 = 0; i2 != -1 && i3 < this.f1309a; i3++) {
            if (i3 == i) {
                return this.h[i2];
            }
            i2 = this.g[i2];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final float b(h hVar) {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1309a; i2++) {
            if (this.f[i] == hVar.f1417b) {
                return this.h[i];
            }
            i = this.g[i];
        }
        return BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.a.b.a
    public final void b() {
        int i = this.i;
        for (int i2 = 0; i != -1 && i2 < this.f1309a; i2++) {
            float[] fArr = this.h;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.g[i];
        }
    }

    @Override // androidx.constraintlayout.a.b.a
    public final int c() {
        return this.f1309a;
    }

    public final String toString() {
        int i = this.i;
        String str = "";
        for (int i2 = 0; i != -1 && i2 < this.f1309a; i2++) {
            str = ((str + " -> ") + this.h[i] + " : ") + this.f1310b.f1401d[this.f[i]];
            i = this.g[i];
        }
        return str;
    }
}
