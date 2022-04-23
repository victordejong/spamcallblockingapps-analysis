package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.d;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    static boolean[] f1391a = new boolean[3];

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(f fVar, d dVar, e eVar) {
        eVar.m = -1;
        eVar.n = -1;
        if (fVar.R[0] != e.a.WRAP_CONTENT && eVar.R[0] == e.a.MATCH_PARENT) {
            int i = eVar.H.g;
            int o = fVar.o() - eVar.J.g;
            eVar.H.i = dVar.a(eVar.H);
            eVar.J.i = dVar.a(eVar.J);
            dVar.a(eVar.H.i, i);
            dVar.a(eVar.J.i, o);
            eVar.m = 2;
            eVar.e(i, o);
        }
        if (fVar.R[1] != e.a.WRAP_CONTENT && eVar.R[1] == e.a.MATCH_PARENT) {
            int i2 = eVar.I.g;
            int p = fVar.p() - eVar.K.g;
            eVar.I.i = dVar.a(eVar.I);
            eVar.K.i = dVar.a(eVar.K);
            dVar.a(eVar.I.i, i2);
            dVar.a(eVar.K.i, p);
            if (eVar.ad > 0 || eVar.ak == 8) {
                eVar.L.i = dVar.a(eVar.L);
                dVar.a(eVar.L.i, eVar.ad + i2);
            }
            eVar.n = 2;
            eVar.f(i2, p);
        }
    }

    public static final boolean a(int i, int i2) {
        return (i & i2) == i2;
    }
}
