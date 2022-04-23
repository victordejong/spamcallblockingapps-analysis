package androidx.constraintlayout.a;

import androidx.constraintlayout.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/g.class */
public final class g extends b {
    c h;
    private int i = 128;
    private h[] j = new h[128];
    private h[] k = new h[128];
    private int l = 0;
    a g = new a(this);

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/g$a.class */
    final class a implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        h f1413a;

        /* renamed from: b  reason: collision with root package name */
        g f1414b;

        public a(g gVar) {
            this.f1414b = gVar;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f1413a.f1417b - ((h) obj).f1417b;
        }

        public final String toString() {
            String str = "[ ";
            String str2 = str;
            if (this.f1413a != null) {
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= 9) {
                        break;
                    }
                    str = str + this.f1413a.h[i] + StringUtils.SPACE;
                    i++;
                }
            }
            return str2 + "] " + this.f1413a;
        }
    }

    public g(c cVar) {
        super(cVar);
        this.h = cVar;
    }

    private final void e(h hVar) {
        int i;
        int i2 = this.l;
        h[] hVarArr = this.j;
        if (i2 + 1 > hVarArr.length) {
            h[] hVarArr2 = (h[]) Arrays.copyOf(hVarArr, hVarArr.length * 2);
            this.j = hVarArr2;
            this.k = (h[]) Arrays.copyOf(hVarArr2, hVarArr2.length * 2);
        }
        h[] hVarArr3 = this.j;
        int i3 = this.l;
        hVarArr3[i3] = hVar;
        int i4 = i3 + 1;
        this.l = i4;
        if (i4 > 1 && hVarArr3[i4 - 1].f1417b > hVar.f1417b) {
            int i5 = 0;
            while (true) {
                i = this.l;
                if (i5 >= i) {
                    break;
                }
                this.k[i5] = this.j[i5];
                i5++;
            }
            Arrays.sort(this.k, 0, i, new Comparator<h>() { // from class: androidx.constraintlayout.a.g.1
                @Override // java.util.Comparator
                public final /* bridge */ /* synthetic */ int compare(h hVar2, h hVar3) {
                    return hVar2.f1417b - hVar3.f1417b;
                }
            });
            for (int i6 = 0; i6 < this.l; i6++) {
                this.j[i6] = this.k[i6];
            }
        }
        hVar.f1416a = true;
        hVar.a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
        r5.l = r0 - 1;
        r6.f1416a = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        r0 = r5.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
        if (r7 >= (r0 - 1)) goto L_0x0037;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        r0 = r5.j;
        r0 = r7 + 1;
        r0[r7] = r0[r0];
        r7 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f(androidx.constraintlayout.a.h r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
        L_0x0002:
            r0 = r7
            r1 = r5
            int r1 = r1.l
            if (r0 >= r1) goto L_0x004a
            r0 = r5
            androidx.constraintlayout.a.h[] r0 = r0.j
            r1 = r7
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L_0x0044
        L_0x0014:
            r0 = r5
            int r0 = r0.l
            r8 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0037
            r0 = r5
            androidx.constraintlayout.a.h[] r0 = r0.j
            r9 = r0
            r0 = r7
            r1 = 1
            int r0 = r0 + r1
            r8 = r0
            r0 = r9
            r1 = r7
            r2 = r9
            r3 = r8
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r8
            r7 = r0
            goto L_0x0014
        L_0x0037:
            r0 = r5
            r1 = r8
            r2 = 1
            int r1 = r1 - r2
            r0.l = r1
            r0 = r6
            r1 = 0
            r0.f1416a = r1
            return
        L_0x0044:
            int r7 = r7 + 1
            goto L_0x0002
        L_0x004a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.g.f(androidx.constraintlayout.a.h):void");
    }

    @Override // androidx.constraintlayout.a.b, androidx.constraintlayout.a.d.a
    public final h a(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.l; i2++) {
            h hVar = this.j[i2];
            i = i;
            if (!zArr[hVar.f1417b]) {
                this.g.f1413a = hVar;
                int i3 = 8;
                boolean z = true;
                boolean z2 = true;
                if (i == -1) {
                    a aVar = this.g;
                    while (i3 >= 0) {
                        float f = aVar.f1413a.h[i3];
                        if (f > BitmapDescriptorFactory.HUE_RED) {
                            break;
                        } else if (f < BitmapDescriptorFactory.HUE_RED) {
                            break;
                        } else {
                            i3--;
                        }
                    }
                    z2 = false;
                    i = i;
                    if (!z2) {
                    }
                    i = i2;
                } else {
                    a aVar2 = this.g;
                    h hVar2 = this.j[i];
                    while (true) {
                        if (i3 < 0) {
                            break;
                        }
                        float f2 = hVar2.h[i3];
                        float f3 = aVar2.f1413a.h[i3];
                        if (f3 == f2) {
                            i3--;
                        } else if (f3 < f2) {
                        }
                    }
                    z = false;
                    i = i;
                    if (!z) {
                    }
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.j[i];
    }

    @Override // androidx.constraintlayout.a.b
    public final void a(d dVar, b bVar, boolean z) {
        h hVar = bVar.f1394a;
        if (hVar != null) {
            b.a aVar = bVar.e;
            int c2 = aVar.c();
            for (int i = 0; i < c2; i++) {
                h a2 = aVar.a(i);
                float b2 = aVar.b(i);
                this.g.f1413a = a2;
                a aVar2 = this.g;
                boolean z2 = true;
                boolean z3 = true;
                if (aVar2.f1413a.f1416a) {
                    for (int i2 = 0; i2 < 9; i2++) {
                        float[] fArr = aVar2.f1413a.h;
                        fArr[i2] = fArr[i2] + (hVar.h[i2] * b2);
                        if (Math.abs(aVar2.f1413a.h[i2]) < 1.0E-4f) {
                            aVar2.f1413a.h[i2] = 0.0f;
                        } else {
                            z3 = false;
                        }
                    }
                    if (z3) {
                        g.this.f(aVar2.f1413a);
                    }
                    z2 = false;
                } else {
                    for (int i3 = 0; i3 < 9; i3++) {
                        float f = hVar.h[i3];
                        if (f != BitmapDescriptorFactory.HUE_RED) {
                            float f2 = f * b2;
                            float f3 = f2;
                            if (Math.abs(f2) < 1.0E-4f) {
                                f3 = BitmapDescriptorFactory.HUE_RED;
                            }
                            aVar2.f1413a.h[i3] = f3;
                        } else {
                            aVar2.f1413a.h[i3] = 0.0f;
                        }
                    }
                }
                if (z2) {
                    e(a2);
                }
                this.f1395b += bVar.f1395b * b2;
            }
            f(hVar);
        }
    }

    @Override // androidx.constraintlayout.a.b, androidx.constraintlayout.a.d.a
    public final boolean b() {
        return this.l == 0;
    }

    @Override // androidx.constraintlayout.a.b, androidx.constraintlayout.a.d.a
    public final void c() {
        this.l = 0;
        this.f1395b = BitmapDescriptorFactory.HUE_RED;
    }

    @Override // androidx.constraintlayout.a.b, androidx.constraintlayout.a.d.a
    public final void d(h hVar) {
        this.g.f1413a = hVar;
        Arrays.fill(this.g.f1413a.h, (float) BitmapDescriptorFactory.HUE_RED);
        hVar.h[hVar.f1419d] = 1.0f;
        e(hVar);
    }

    @Override // androidx.constraintlayout.a.b
    public final String toString() {
        String str = " goal -> (" + this.f1395b + ") : ";
        for (int i = 0; i < this.l; i++) {
            this.g.f1413a = this.j[i];
            str = str + this.g + StringUtils.SPACE;
        }
        return str;
    }
}
