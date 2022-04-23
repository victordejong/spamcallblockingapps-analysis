package androidx.constraintlayout.a.a.a;

import androidx.constraintlayout.a.a.d;
import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.a.h;
import androidx.constraintlayout.a.a.j;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/a/i.class */
public final class i {
    public static o a(e eVar, int i, ArrayList<o> arrayList, o oVar) {
        o oVar2;
        int i2 = i == 0 ? eVar.aG : eVar.aH;
        int i3 = 0;
        if (i2 != -1 && (oVar == null || i2 != oVar.f1346c)) {
            int i4 = 0;
            while (true) {
                oVar2 = oVar;
                if (i4 >= arrayList.size()) {
                    break;
                }
                oVar2 = arrayList.get(i4);
                if (oVar2.f1346c != i2) {
                    i4++;
                } else if (oVar != null) {
                    oVar.a(i, oVar2);
                    arrayList.remove(oVar);
                }
            }
        } else {
            oVar2 = oVar;
            if (i2 != -1) {
                return oVar;
            }
        }
        o oVar3 = oVar2;
        if (oVar2 == null) {
            o oVar4 = oVar2;
            if (eVar instanceof j) {
                int o = ((j) eVar).o(i);
                oVar4 = oVar2;
                if (o != -1) {
                    int i5 = 0;
                    while (true) {
                        oVar4 = oVar2;
                        if (i5 >= arrayList.size()) {
                            break;
                        }
                        oVar4 = arrayList.get(i5);
                        if (oVar4.f1346c == o) {
                            break;
                        }
                        i5++;
                    }
                }
            }
            o oVar5 = oVar4;
            if (oVar4 == null) {
                oVar5 = new o(i);
            }
            arrayList.add(oVar5);
            oVar3 = oVar5;
        }
        if (oVar3.a(eVar)) {
            if (eVar instanceof h) {
                h hVar = (h) eVar;
                d dVar = hVar.f1389d;
                if (hVar.aI == 0) {
                    i3 = 1;
                }
                dVar.a(i3, arrayList, oVar3);
            }
            if (i == 0) {
                eVar.aG = oVar3.f1346c;
                eVar.H.a(i, arrayList, oVar3);
                eVar.J.a(i, arrayList, oVar3);
            } else {
                eVar.aH = oVar3.f1346c;
                eVar.I.a(i, arrayList, oVar3);
                eVar.L.a(i, arrayList, oVar3);
                eVar.K.a(i, arrayList, oVar3);
            }
            eVar.O.a(i, arrayList, oVar3);
        }
        return oVar3;
    }

    public static o a(ArrayList<o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = arrayList.get(i2);
            if (i == oVar.f1346c) {
                return oVar;
            }
        }
        return null;
    }

    public static boolean a(e.a aVar, e.a aVar2, e.a aVar3, e.a aVar4) {
        return (aVar3 == e.a.FIXED || aVar3 == e.a.WRAP_CONTENT || (aVar3 == e.a.MATCH_PARENT && aVar != e.a.WRAP_CONTENT)) || (aVar4 == e.a.FIXED || aVar4 == e.a.WRAP_CONTENT || (aVar4 == e.a.MATCH_PARENT && aVar2 != e.a.WRAP_CONTENT));
    }
}
