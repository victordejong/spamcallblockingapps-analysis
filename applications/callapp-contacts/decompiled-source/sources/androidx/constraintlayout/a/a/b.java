package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.e;
import androidx.constraintlayout.a.d;
import androidx.constraintlayout.a.h;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/b.class */
public final class b {
    public static void a(f fVar, d dVar, ArrayList<e> arrayList, int i) {
        int i2;
        int i3;
        c[] cVarArr;
        int i4;
        boolean z;
        e eVar;
        boolean z2;
        boolean z3;
        boolean z4;
        h hVar;
        h hVar2;
        h hVar3;
        d dVar2;
        e eVar2;
        h hVar4;
        h hVar5;
        d dVar3;
        if (i == 0) {
            i3 = fVar.aO;
            cVarArr = fVar.aR;
            i2 = 0;
        } else {
            i3 = fVar.aP;
            cVarArr = fVar.aQ;
            i2 = 2;
        }
        int i5 = 0;
        while (i5 < i3) {
            c cVar = cVarArr[i5];
            if (!cVar.t) {
                cVar.a();
            }
            cVar.t = true;
            if (arrayList == null || (arrayList != null && arrayList.contains(cVar.f1359a))) {
                e eVar3 = cVar.f1359a;
                e eVar4 = cVar.f1361c;
                e eVar5 = cVar.f1360b;
                e eVar6 = cVar.f1362d;
                e eVar7 = cVar.e;
                float f = cVar.k;
                boolean z5 = fVar.R[i] == e.a.WRAP_CONTENT;
                if (i == 0) {
                    z2 = eVar7.ax == 0;
                    z4 = eVar7.ax == 1;
                    z = eVar7.ax == 2;
                    z3 = false;
                    eVar = eVar3;
                } else {
                    z2 = eVar7.ay == 0;
                    z4 = eVar7.ay == 1;
                    z = eVar7.ay == 2;
                    eVar = eVar3;
                    z3 = false;
                }
                while (true) {
                    hVar = null;
                    if (z3) {
                        break;
                    }
                    d dVar4 = eVar.P[i2];
                    int i6 = z ? 1 : 4;
                    int e = dVar4.e();
                    boolean z6 = eVar.R[i] == e.a.MATCH_CONSTRAINT && eVar.q[i] == 0;
                    int i7 = e;
                    if (dVar4.f != null) {
                        i7 = e;
                        if (eVar != eVar3) {
                            i7 = e + dVar4.f.e();
                        }
                    }
                    if (!(!z || eVar == eVar3 || eVar == eVar5)) {
                        i6 = 8;
                    }
                    if (dVar4.f != null) {
                        if (eVar == eVar5) {
                            dVar.a(dVar4.i, dVar4.f.i, i7, 6);
                        } else {
                            dVar.a(dVar4.i, dVar4.f.i, i7, 8);
                        }
                        if (z6 && !z) {
                            i6 = 5;
                        }
                        dVar.c(dVar4.i, dVar4.f.i, i7, i6);
                    }
                    if (z5) {
                        if (eVar.ak != 8 && eVar.R[i] == e.a.MATCH_CONSTRAINT) {
                            dVar.a(eVar.P[i2 + 1].i, eVar.P[i2].i, 0, 5);
                        }
                        dVar.a(eVar.P[i2].i, fVar.P[i2].i, 0, 8);
                    }
                    d dVar5 = eVar.P[i2 + 1].f;
                    e eVar8 = null;
                    if (dVar5 != null) {
                        e eVar9 = dVar5.f1366d;
                        eVar8 = null;
                        if (eVar9.P[i2].f != null) {
                            eVar8 = eVar9.P[i2].f.f1366d != eVar ? null : eVar9;
                        }
                    }
                    if (eVar8 != null) {
                        eVar = eVar8;
                    } else {
                        z3 = true;
                    }
                }
                if (eVar6 != null) {
                    int i8 = i2 + 1;
                    if (eVar4.P[i8].f != null) {
                        d dVar6 = eVar6.P[i8];
                        if ((eVar6.R[i] == e.a.MATCH_CONSTRAINT && eVar6.q[i] == 0) && !z && dVar6.f.f1366d == fVar) {
                            dVar.c(dVar6.i, dVar6.f.i, -dVar6.e(), 5);
                        } else if (z && dVar6.f.f1366d == fVar) {
                            dVar.c(dVar6.i, dVar6.f.i, -dVar6.e(), 4);
                        }
                        dVar.b(dVar6.i, eVar4.P[i8].f.i, -dVar6.e(), 6);
                    }
                }
                if (z5) {
                    int i9 = i2 + 1;
                    dVar.a(fVar.P[i9].i, eVar4.P[i9].i, eVar4.P[i9].e(), 8);
                }
                ArrayList<e> arrayList2 = cVar.h;
                c cVar2 = cVar;
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    cVar2 = cVar;
                    if (size > 1) {
                        float f2 = f;
                        if (cVar.p) {
                            f2 = f;
                            if (!cVar.r) {
                                f2 = cVar.j;
                            }
                        }
                        e eVar10 = null;
                        int i10 = 0;
                        float f3 = BitmapDescriptorFactory.HUE_RED;
                        while (true) {
                            cVar2 = cVar;
                            if (i10 >= size) {
                                break;
                            }
                            e eVar11 = arrayList2.get(i10);
                            f3 = eVar11.aB[i];
                            if (f3 < BitmapDescriptorFactory.HUE_RED) {
                                if (cVar.r) {
                                    dVar.c(eVar11.P[i2 + 1].i, eVar11.P[i2].i, 0, 4);
                                    f3 = f3;
                                    i10++;
                                } else {
                                    f3 = 1.0f;
                                }
                            }
                            int i11 = (f3 > BitmapDescriptorFactory.HUE_RED ? 1 : (f3 == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
                            if (i11 == 0) {
                                dVar.c(eVar11.P[i2 + 1].i, eVar11.P[i2].i, 0, 8);
                                f3 = f3;
                                i10++;
                            } else {
                                if (eVar10 != null) {
                                    h hVar6 = eVar10.P[i2].i;
                                    int i12 = i2 + 1;
                                    h hVar7 = eVar10.P[i12].i;
                                    h hVar8 = eVar11.P[i2].i;
                                    h hVar9 = eVar11.P[i12].i;
                                    androidx.constraintlayout.a.b c2 = dVar.c();
                                    c2.f1395b = BitmapDescriptorFactory.HUE_RED;
                                    if (f2 == BitmapDescriptorFactory.HUE_RED || f3 == f3) {
                                        c2.e.a(hVar6, 1.0f);
                                        c2.e.a(hVar7, -1.0f);
                                        c2.e.a(hVar9, 1.0f);
                                        c2.e.a(hVar8, -1.0f);
                                    } else if (f3 == BitmapDescriptorFactory.HUE_RED) {
                                        c2.e.a(hVar6, 1.0f);
                                        c2.e.a(hVar7, -1.0f);
                                    } else if (i11 == 0) {
                                        c2.e.a(hVar8, 1.0f);
                                        c2.e.a(hVar9, -1.0f);
                                    } else {
                                        float f4 = (f3 / f2) / (f3 / f2);
                                        c2.e.a(hVar6, 1.0f);
                                        c2.e.a(hVar7, -1.0f);
                                        c2.e.a(hVar9, f4);
                                        c2.e.a(hVar8, -f4);
                                    }
                                    dVar.a(c2);
                                }
                                eVar10 = eVar11;
                                i10++;
                            }
                        }
                    }
                }
                if (eVar5 != null && (eVar5 == eVar6 || z)) {
                    d dVar7 = eVar3.P[i2];
                    int i13 = i2 + 1;
                    d dVar8 = eVar4.P[i13];
                    h hVar10 = dVar7.f != null ? dVar7.f.i : null;
                    h hVar11 = dVar8.f != null ? dVar8.f.i : null;
                    d dVar9 = eVar5.P[i2];
                    d dVar10 = eVar6.P[i13];
                    if (!(hVar10 == null || hVar11 == null)) {
                        dVar.a(dVar9.i, hVar10, dVar9.e(), i == 0 ? eVar7.ah : eVar7.ai, hVar11, dVar10.i, dVar10.e(), 7);
                    }
                } else if (z2 && eVar5 != null) {
                    boolean z7 = cVar2.j > 0 && cVar2.i == cVar2.j;
                    e eVar12 = eVar5;
                    for (e eVar13 = eVar12; eVar13 != null; eVar13 = eVar2) {
                        eVar2 = eVar13.aD[i];
                        while (eVar2 != null && eVar2.ak == 8) {
                            eVar2 = eVar2.aD[i];
                        }
                        if (eVar2 != null || eVar13 == eVar6) {
                            d dVar11 = eVar13.P[i2];
                            h hVar12 = dVar11.i;
                            h hVar13 = dVar11.f != null ? dVar11.f.i : null;
                            if (eVar12 != eVar13) {
                                hVar4 = eVar12.P[i2 + 1].i;
                            } else {
                                hVar4 = hVar13;
                                if (eVar13 == eVar5) {
                                    hVar4 = hVar13;
                                    if (eVar12 == eVar13) {
                                        hVar4 = eVar3.P[i2].f != null ? eVar3.P[i2].f.i : null;
                                    }
                                }
                            }
                            int e2 = dVar11.e();
                            int i14 = i2 + 1;
                            int e3 = eVar13.P[i14].e();
                            if (eVar2 != null) {
                                dVar3 = eVar2.P[i2];
                                hVar5 = dVar3.i;
                            } else {
                                dVar3 = eVar4.P[i14].f;
                                hVar5 = dVar3 != null ? dVar3.i : null;
                            }
                            h hVar14 = eVar13.P[i14].i;
                            int i15 = e3;
                            if (dVar3 != null) {
                                i15 = e3 + dVar3.e();
                            }
                            int i16 = e2;
                            if (eVar12 != null) {
                                i16 = e2 + eVar12.P[i14].e();
                            }
                            if (!(hVar12 == null || hVar4 == null || hVar5 == null || hVar14 == null)) {
                                if (eVar13 == eVar5) {
                                    i16 = eVar5.P[i2].e();
                                }
                                if (eVar13 == eVar6) {
                                    i15 = eVar6.P[i14].e();
                                }
                                dVar.a(hVar12, hVar4, i16, 0.5f, hVar5, hVar14, i15, z7 ? 8 : 5);
                            }
                        }
                        if (eVar13.ak != 8) {
                            eVar12 = eVar13;
                        }
                    }
                } else if (z4 && eVar5 != null) {
                    boolean z8 = cVar2.j > 0 && cVar2.i == cVar2.j;
                    e eVar14 = eVar5;
                    e eVar15 = eVar14;
                    while (eVar14 != null) {
                        eVar14 = eVar14.aD[i];
                        while (eVar14 != null && eVar14.ak == 8) {
                            eVar14 = eVar14.aD[i];
                        }
                        if (!(eVar14 == eVar5 || eVar14 == eVar6 || eVar14 == null)) {
                            if (eVar14 == eVar6) {
                                eVar14 = null;
                            }
                            d dVar12 = eVar14.P[i2];
                            h hVar15 = dVar12.i;
                            int i17 = i2 + 1;
                            h hVar16 = eVar15.P[i17].i;
                            int e4 = dVar12.e();
                            int e5 = eVar14.P[i17].e();
                            if (eVar14 != null) {
                                dVar2 = eVar14.P[i2];
                                hVar2 = dVar2.i;
                                hVar3 = dVar2.f != null ? dVar2.f.i : null;
                            } else {
                                d dVar13 = eVar6.P[i2];
                                hVar2 = dVar13 != null ? dVar13.i : null;
                                hVar3 = eVar14.P[i17].i;
                                dVar2 = dVar13;
                            }
                            int i18 = e5;
                            if (dVar2 != null) {
                                i18 = e5 + dVar2.e();
                            }
                            int i19 = e4;
                            if (eVar15 != null) {
                                i19 = e4 + eVar15.P[i17].e();
                            }
                            int i20 = z8 ? 8 : 4;
                            if (!(hVar15 == null || hVar16 == null || hVar2 == null || hVar3 == null)) {
                                dVar.a(hVar15, hVar16, i19, 0.5f, hVar2, hVar3, i18, i20);
                            }
                        }
                        if (eVar14.ak != 8) {
                            eVar15 = eVar14;
                        }
                    }
                    d dVar14 = eVar5.P[i2];
                    d dVar15 = eVar3.P[i2].f;
                    d[] dVarArr = eVar6.P;
                    int i21 = i2 + 1;
                    d dVar16 = dVarArr[i21];
                    d dVar17 = eVar4.P[i21].f;
                    if (dVar15 != null) {
                        if (eVar5 != eVar6) {
                            dVar.c(dVar14.i, dVar15.i, dVar14.e(), 5);
                        } else if (dVar17 != null) {
                            dVar.a(dVar14.i, dVar15.i, dVar14.e(), 0.5f, dVar16.i, dVar17.i, dVar16.e(), 5);
                        }
                    }
                    if (!(dVar17 == null || eVar5 == eVar6)) {
                        dVar.c(dVar16.i, dVar17.i, -dVar16.e(), 5);
                    }
                }
                if (!z2) {
                    i4 = i5;
                    cVarArr = cVarArr;
                    i3 = i3;
                    if (!z4) {
                    }
                }
                i4 = i5;
                cVarArr = cVarArr;
                i3 = i3;
                if (eVar5 != null) {
                    i4 = i5;
                    cVarArr = cVarArr;
                    i3 = i3;
                    if (eVar5 != eVar6) {
                        d dVar18 = eVar5.P[i2];
                        d[] dVarArr2 = eVar6.P;
                        int i22 = i2 + 1;
                        d dVar19 = dVarArr2[i22];
                        h hVar17 = dVar18.f != null ? dVar18.f.i : null;
                        hVar = dVar19.f != null ? dVar19.f.i : null;
                        if (eVar4 != eVar6) {
                            d dVar20 = eVar4.P[i22];
                            if (dVar20.f != null) {
                                hVar = dVar20.f.i;
                            }
                        }
                        if (eVar5 == eVar6) {
                            dVar18 = eVar5.P[i2];
                            dVar19 = eVar5.P[i22];
                        }
                        i4 = i5;
                        cVarArr = cVarArr;
                        i3 = i3;
                        if (hVar17 != null) {
                            i4 = i5;
                            cVarArr = cVarArr;
                            i3 = i3;
                            if (hVar != null) {
                                int e6 = dVar18.e();
                                if (eVar6 != null) {
                                    eVar4 = eVar6;
                                }
                                dVar.a(dVar18.i, hVar17, e6, 0.5f, hVar, dVar19.i, eVar4.P[i22].e(), 5);
                                i3 = i3;
                                cVarArr = cVarArr;
                                i4 = i5;
                            }
                        }
                    }
                }
            } else {
                i3 = i3;
                i4 = i5;
            }
            i5 = i4 + 1;
        }
    }
}
