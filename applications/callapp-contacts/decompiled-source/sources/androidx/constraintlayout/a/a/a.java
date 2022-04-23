package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.b;
import androidx.constraintlayout.a.d;
import androidx.constraintlayout.a.h;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a.class */
public final class a extends j {

    /* renamed from: a  reason: collision with root package name */
    public int f1313a = 0;

    /* renamed from: b  reason: collision with root package name */
    public boolean f1314b = true;

    /* renamed from: c  reason: collision with root package name */
    public int f1315c = 0;

    /* renamed from: d  reason: collision with root package name */
    boolean f1316d = false;

    public a() {
    }

    public a(String str) {
        this.al = str;
    }

    @Override // androidx.constraintlayout.a.a.j, androidx.constraintlayout.a.a.e
    public final void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        a aVar = (a) eVar;
        this.f1313a = aVar.f1313a;
        this.f1314b = aVar.f1314b;
        this.f1315c = aVar.f1315c;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final void a(d dVar, boolean z) {
        boolean z2;
        int i;
        int i2;
        int i3;
        this.P[0] = this.H;
        this.P[2] = this.I;
        this.P[1] = this.J;
        this.P[3] = this.K;
        for (int i4 = 0; i4 < this.P.length; i4++) {
            this.P[i4].i = dVar.a(this.P[i4]);
        }
        int i5 = this.f1313a;
        if (i5 >= 0 && i5 < 4) {
            d dVar2 = this.P[this.f1313a];
            if (!this.f1316d) {
                f();
            }
            if (this.f1316d) {
                this.f1316d = false;
                int i6 = this.f1313a;
                if (i6 == 0 || i6 == 1) {
                    dVar.a(this.H.i, this.X);
                    dVar.a(this.J.i, this.X);
                } else if (i6 == 2 || i6 == 3) {
                    dVar.a(this.I.i, this.Y);
                    dVar.a(this.K.i, this.Y);
                }
            } else {
                for (int i7 = 0; i7 < this.aY; i7++) {
                    e eVar = this.aX[i7];
                    if ((this.f1314b || eVar.a()) && ((((i2 = this.f1313a) == 0 || i2 == 1) && eVar.R[0] == e.a.MATCH_CONSTRAINT && eVar.H.f != null && eVar.J.f != null) || (((i3 = this.f1313a) == 2 || i3 == 3) && eVar.R[1] == e.a.MATCH_CONSTRAINT && eVar.I.f != null && eVar.K.f != null))) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                boolean z3 = this.H.b() || this.J.b();
                boolean z4 = this.I.b() || this.K.b();
                boolean z5 = !z2 && (((i = this.f1313a) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))));
                int i8 = 5;
                if (!z5) {
                    i8 = 4;
                }
                for (int i9 = 0; i9 < this.aY; i9++) {
                    e eVar2 = this.aX[i9];
                    if (this.f1314b || eVar2.a()) {
                        h a2 = dVar.a(eVar2.P[this.f1313a]);
                        eVar2.P[this.f1313a].i = a2;
                        int i10 = (eVar2.P[this.f1313a].f == null || eVar2.P[this.f1313a].f.f1366d != this) ? 0 : eVar2.P[this.f1313a].g + 0;
                        int i11 = this.f1313a;
                        if (i11 == 0 || i11 == 2) {
                            h hVar = dVar2.i;
                            int i12 = this.f1315c;
                            b c2 = dVar.c();
                            h d2 = dVar.d();
                            d2.f1419d = 0;
                            c2.b(hVar, a2, d2, i12 - i10);
                            dVar.a(c2);
                        } else {
                            h hVar2 = dVar2.i;
                            int i13 = this.f1315c;
                            b c3 = dVar.c();
                            h d3 = dVar.d();
                            d3.f1419d = 0;
                            c3.a(hVar2, a2, d3, i13 + i10);
                            dVar.a(c3);
                        }
                        dVar.c(dVar2.i, a2, this.f1315c + i10, i8);
                    }
                }
                int i14 = this.f1313a;
                if (i14 == 0) {
                    dVar.c(this.J.i, this.H.i, 0, 8);
                    dVar.c(this.H.i, this.S.J.i, 0, 4);
                    dVar.c(this.H.i, this.S.H.i, 0, 0);
                } else if (i14 == 1) {
                    dVar.c(this.H.i, this.J.i, 0, 8);
                    dVar.c(this.H.i, this.S.H.i, 0, 4);
                    dVar.c(this.H.i, this.S.J.i, 0, 0);
                } else if (i14 == 2) {
                    dVar.c(this.K.i, this.I.i, 0, 8);
                    dVar.c(this.I.i, this.S.K.i, 0, 4);
                    dVar.c(this.I.i, this.S.I.i, 0, 0);
                } else if (i14 == 3) {
                    dVar.c(this.I.i, this.K.i, 0, 8);
                    dVar.c(this.I.i, this.S.I.i, 0, 4);
                    dVar.c(this.I.i, this.S.K.i, 0, 0);
                }
            }
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public final boolean a() {
        return true;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final boolean b() {
        return this.f1316d;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final boolean c() {
        return this.f1316d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        for (int i = 0; i < this.aY; i++) {
            e eVar = this.aX[i];
            int i2 = this.f1313a;
            if (i2 == 0 || i2 == 1) {
                eVar.a(0, true);
            } else if (i2 == 2 || i2 == 3) {
                eVar.a(1, true);
            }
        }
    }

    public final int e() {
        int i = this.f1313a;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    public final boolean f() {
        boolean z = true;
        for (int i = 0; i < this.aY; i++) {
            e eVar = this.aX[i];
            if (!this.f1314b) {
                z = z;
                if (!eVar.a()) {
                }
            }
            int i2 = this.f1313a;
            if (!(i2 == 0 || i2 == 1) || eVar.b()) {
                int i3 = this.f1313a;
                if (i3 != 2) {
                    z = z;
                    if (i3 != 3) {
                    }
                }
                z = z;
                if (eVar.c()) {
                }
            }
            z = false;
        }
        if (!z || this.aY <= 0) {
            return false;
        }
        int i4 = 0;
        boolean z2 = false;
        for (int i5 = 0; i5 < this.aY; i5++) {
            e eVar2 = this.aX[i5];
            if (!this.f1314b) {
                i4 = i4;
                z2 = z2;
                if (!eVar2.a()) {
                }
            }
            int i6 = i4;
            boolean z3 = z2;
            if (!z2) {
                int i7 = this.f1313a;
                if (i7 == 0) {
                    i6 = eVar2.a(d.a.LEFT).c();
                } else if (i7 == 1) {
                    i6 = eVar2.a(d.a.RIGHT).c();
                } else if (i7 == 2) {
                    i6 = eVar2.a(d.a.TOP).c();
                } else {
                    i6 = i4;
                    if (i7 == 3) {
                        i6 = eVar2.a(d.a.BOTTOM).c();
                    }
                }
                z3 = true;
            }
            int i8 = this.f1313a;
            if (i8 == 0) {
                i4 = Math.min(i6, eVar2.a(d.a.LEFT).c());
                z2 = z3;
            } else if (i8 == 1) {
                i4 = Math.max(i6, eVar2.a(d.a.RIGHT).c());
                z2 = z3;
            } else if (i8 == 2) {
                i4 = Math.min(i6, eVar2.a(d.a.TOP).c());
                z2 = z3;
            } else {
                i4 = i6;
                z2 = z3;
                if (i8 == 3) {
                    i4 = Math.max(i6, eVar2.a(d.a.BOTTOM).c());
                    z2 = z3;
                }
            }
        }
        int i9 = i4 + this.f1315c;
        int i10 = this.f1313a;
        if (i10 == 0 || i10 == 1) {
            a(i9, i9);
        } else {
            b(i9, i9);
        }
        this.f1316d = true;
        return true;
    }

    @Override // androidx.constraintlayout.a.a.e
    public final String toString() {
        String str = "[Barrier] " + this.al + " {";
        for (int i = 0; i < this.aY; i++) {
            e eVar = this.aX[i];
            String str2 = str;
            if (i > 0) {
                str2 = str + ", ";
            }
            str = str2 + eVar.al;
        }
        return str + "}";
    }
}
