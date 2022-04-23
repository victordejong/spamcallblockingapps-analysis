package androidx.constraintlayout.a;

import androidx.constraintlayout.a.d;
import androidx.constraintlayout.a.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/b.class */
public class b implements d.a {
    public a e;

    /* renamed from: a  reason: collision with root package name */
    h f1394a = null;

    /* renamed from: b  reason: collision with root package name */
    public float f1395b = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: c  reason: collision with root package name */
    boolean f1396c = false;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<h> f1397d = new ArrayList<>();
    boolean f = false;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/b$a.class */
    public interface a {
        float a(b bVar, boolean z);

        float a(h hVar, boolean z);

        h a(int i);

        void a();

        void a(float f);

        void a(h hVar, float f);

        void a(h hVar, float f, boolean z);

        boolean a(h hVar);

        float b(int i);

        float b(h hVar);

        void b();

        int c();
    }

    public b() {
    }

    public b(c cVar) {
        this.e = new androidx.constraintlayout.a.a(this, cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(h hVar) {
        return hVar.l <= 1;
    }

    public final b a(d dVar, int i) {
        this.e.a(dVar.a(i, "ep"), 1.0f);
        this.e.a(dVar.a(i, "em"), -1.0f);
        return this;
    }

    public final b a(h hVar, h hVar2, h hVar3, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f1395b = i2;
        }
        if (!z) {
            this.e.a(hVar, -1.0f);
            this.e.a(hVar2, 1.0f);
            this.e.a(hVar3, 1.0f);
        } else {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar3, -1.0f);
        }
        return this;
    }

    public final b a(h hVar, h hVar2, h hVar3, h hVar4, float f) {
        this.e.a(hVar, -1.0f);
        this.e.a(hVar2, 1.0f);
        this.e.a(hVar3, f);
        this.e.a(hVar4, -f);
        return this;
    }

    @Override // androidx.constraintlayout.a.d.a
    public h a(boolean[] zArr) {
        return a(zArr, (h) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h a(boolean[] zArr, h hVar) {
        int c2 = this.e.c();
        h hVar2 = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < c2; i++) {
            float b2 = this.e.b(i);
            hVar2 = hVar2;
            f = f;
            if (b2 < BitmapDescriptorFactory.HUE_RED) {
                h a2 = this.e.a(i);
                if (zArr != null) {
                    hVar2 = hVar2;
                    f = f;
                    if (zArr[a2.f1417b]) {
                    }
                }
                hVar2 = hVar2;
                f = f;
                if (a2 != hVar) {
                    if (a2.i != h.a.SLACK) {
                        hVar2 = hVar2;
                        f = f;
                        if (a2.i != h.a.ERROR) {
                        }
                    }
                    hVar2 = hVar2;
                    f = f;
                    if (b2 < f) {
                        f = b2;
                        hVar2 = a2;
                    }
                }
            }
        }
        return hVar2;
    }

    public final void a() {
        this.f1394a = null;
        this.e.a();
        this.f1395b = BitmapDescriptorFactory.HUE_RED;
        this.f = false;
    }

    @Override // androidx.constraintlayout.a.d.a
    public final void a(d.a aVar) {
        if (aVar instanceof b) {
            b bVar = (b) aVar;
            this.f1394a = null;
            this.e.a();
            for (int i = 0; i < bVar.e.c(); i++) {
                this.e.a(bVar.e.a(i), bVar.e.b(i), true);
            }
        }
    }

    public void a(d dVar, b bVar, boolean z) {
        this.f1395b += bVar.f1395b * this.e.a(bVar, z);
        if (z) {
            bVar.f1394a.b(this);
        }
        if (d.f1404c && this.f1394a != null && this.e.c() == 0) {
            this.f = true;
            dVar.g = true;
        }
    }

    public final void a(d dVar, h hVar, boolean z) {
        if (hVar.f) {
            this.f1395b += hVar.e * this.e.b(hVar);
            this.e.a(hVar, z);
            if (z) {
                hVar.b(this);
            }
            if (d.f1404c && hVar != null && this.e.c() == 0) {
                this.f = true;
                dVar.g = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(h hVar) {
        return this.e.a(hVar);
    }

    public final b b(h hVar, h hVar2, h hVar3, int i) {
        boolean z = false;
        z = false;
        if (i != 0) {
            int i2 = i;
            if (i < 0) {
                i2 = i * (-1);
                z = true;
            }
            this.f1395b = i2;
        }
        if (!z) {
            this.e.a(hVar, -1.0f);
            this.e.a(hVar2, 1.0f);
            this.e.a(hVar3, -1.0f);
        } else {
            this.e.a(hVar, 1.0f);
            this.e.a(hVar2, -1.0f);
            this.e.a(hVar3, 1.0f);
        }
        return this;
    }

    public final b b(h hVar, h hVar2, h hVar3, h hVar4, float f) {
        this.e.a(hVar3, 0.5f);
        this.e.a(hVar4, 0.5f);
        this.e.a(hVar, -0.5f);
        this.e.a(hVar2, -0.5f);
        this.f1395b = -f;
        return this;
    }

    @Override // androidx.constraintlayout.a.d.a
    public boolean b() {
        return this.f1394a == null && this.f1395b == BitmapDescriptorFactory.HUE_RED && this.e.c() == 0;
    }

    @Override // androidx.constraintlayout.a.d.a
    public void c() {
        this.e.a();
        this.f1394a = null;
        this.f1395b = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(h hVar) {
        h hVar2 = this.f1394a;
        if (hVar2 != null) {
            this.e.a(hVar2, -1.0f);
            this.f1394a.f1418c = -1;
            this.f1394a = null;
        }
        float a2 = this.e.a(hVar, true) * (-1.0f);
        this.f1394a = hVar;
        if (a2 != 1.0f) {
            this.f1395b /= a2;
            this.e.a(a2);
        }
    }

    @Override // androidx.constraintlayout.a.d.a
    public final h d() {
        return this.f1394a;
    }

    @Override // androidx.constraintlayout.a.d.a
    public void d(h hVar) {
        float f = 1.0f;
        if (hVar.f1419d != 1) {
            if (hVar.f1419d == 2) {
                f = 1000.0f;
            } else if (hVar.f1419d == 3) {
                f = 1000000.0f;
            } else if (hVar.f1419d == 4) {
                f = 1.0E9f;
            } else if (hVar.f1419d == 5) {
                f = 1.0E12f;
            }
        }
        this.e.a(hVar, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x015c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.b.toString():java.lang.String");
    }
}
