package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.a;
import androidx.constraintlayout.a.a.a.f;
import androidx.constraintlayout.a.a.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/k.class */
public final class k extends p {
    public k(e eVar) {
        super(eVar);
    }

    private void a(f fVar) {
        this.j.k.add(fVar);
        fVar.l.add(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void c() {
        this.e = null;
        this.j.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r0 < r9) goto L_0x0048;
     */
    @Override // androidx.constraintlayout.a.a.a.p, androidx.constraintlayout.a.a.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d() {
        /*
            r4 = this;
            r0 = r4
            androidx.constraintlayout.a.a.e r0 = r0.f1353d
            androidx.constraintlayout.a.a.a r0 = (androidx.constraintlayout.a.a.a) r0
            r5 = r0
            r0 = r5
            int r0 = r0.f1313a
            r6 = r0
            r0 = r4
            androidx.constraintlayout.a.a.a.f r0 = r0.j
            java.util.List<androidx.constraintlayout.a.a.a.f> r0 = r0.l
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = -1
            r9 = r0
        L_0x0020:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0062
            r0 = r7
            java.lang.Object r0 = r0.next()
            androidx.constraintlayout.a.a.a.f r0 = (androidx.constraintlayout.a.a.a.f) r0
            int r0 = r0.g
            r10 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0048
            r0 = r9
            r11 = r0
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x004c
        L_0x0048:
            r0 = r10
            r11 = r0
        L_0x004c:
            r0 = r11
            r9 = r0
            r0 = r8
            r1 = r10
            if (r0 >= r1) goto L_0x0020
            r0 = r10
            r8 = r0
            r0 = r11
            r9 = r0
            goto L_0x0020
        L_0x0062:
            r0 = r6
            if (r0 == 0) goto L_0x007d
            r0 = r6
            r1 = 2
            if (r0 != r1) goto L_0x006e
            goto L_0x007d
        L_0x006e:
            r0 = r4
            androidx.constraintlayout.a.a.a.f r0 = r0.j
            r1 = r8
            r2 = r5
            int r2 = r2.f1315c
            int r1 = r1 + r2
            r0.a(r1)
            return
        L_0x007d:
            r0 = r4
            androidx.constraintlayout.a.a.a.f r0 = r0.j
            r1 = r9
            r2 = r5
            int r2 = r2.f1315c
            int r1 = r1 + r2
            r0.a(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.a.a.k.d():void");
    }

    @Override // androidx.constraintlayout.a.a.a.p
    public final void e() {
        if (this.f1353d instanceof a) {
            int i = ((a) this.f1353d).f1313a;
            if (i == 0 || i == 1) {
                this.f1353d.e(this.j.g);
            } else {
                this.f1353d.f(this.j.g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.a.a.a.p
    public final void f() {
        if (this.f1353d instanceof a) {
            this.j.f1331b = true;
            a aVar = (a) this.f1353d;
            int i = aVar.f1313a;
            boolean z = aVar.f1314b;
            if (i == 0) {
                this.j.e = f.a.LEFT;
                for (int i2 = 0; i2 < aVar.aY; i2++) {
                    e eVar = aVar.aX[i2];
                    if (z || eVar.ak != 8) {
                        f fVar = eVar.i.j;
                        fVar.k.add(this.j);
                        this.j.l.add(fVar);
                    }
                }
                a(this.f1353d.i.j);
                a(this.f1353d.i.k);
            } else if (i == 1) {
                this.j.e = f.a.RIGHT;
                for (int i3 = 0; i3 < aVar.aY; i3++) {
                    e eVar2 = aVar.aX[i3];
                    if (z || eVar2.ak != 8) {
                        f fVar2 = eVar2.i.k;
                        fVar2.k.add(this.j);
                        this.j.l.add(fVar2);
                    }
                }
                a(this.f1353d.i.j);
                a(this.f1353d.i.k);
            } else if (i == 2) {
                this.j.e = f.a.TOP;
                for (int i4 = 0; i4 < aVar.aY; i4++) {
                    e eVar3 = aVar.aX[i4];
                    if (z || eVar3.ak != 8) {
                        f fVar3 = eVar3.j.j;
                        fVar3.k.add(this.j);
                        this.j.l.add(fVar3);
                    }
                }
                a(this.f1353d.j.j);
                a(this.f1353d.j.k);
            } else if (i == 3) {
                this.j.e = f.a.BOTTOM;
                for (int i5 = 0; i5 < aVar.aY; i5++) {
                    e eVar4 = aVar.aX[i5];
                    if (z || eVar4.ak != 8) {
                        f fVar4 = eVar4.j.k;
                        fVar4.k.add(this.j);
                        this.j.l.add(fVar4);
                    }
                }
                a(this.f1353d.j.j);
                a(this.f1353d.j.k);
            }
        }
    }
}
