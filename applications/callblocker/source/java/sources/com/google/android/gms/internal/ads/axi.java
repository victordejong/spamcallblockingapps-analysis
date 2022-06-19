package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/axi.class */
final class axi implements amm<amn> {

    /* renamed from: a */
    private final Map<String, bmv<amn>> f10518a;

    /* renamed from: b */
    private final Map<String, bmv<aym>> f10519b;

    /* renamed from: c */
    private final Map<String, box<aym>> f10520c;

    /* renamed from: d */
    private final dig<amm<akk>> f10521d;

    /* renamed from: e */
    private final azg f10522e;

    public axi(Map<String, bmv<amn>> map, Map<String, bmv<aym>> map2, Map<String, box<aym>> map3, dig<amm<akk>> digVar, azg azgVar) {
        this.f10518a = map;
        this.f10519b = map2;
        this.f10520c = map3;
        this.f10521d = digVar;
        this.f10522e = azgVar;
    }

    @Override // com.google.android.gms.internal.ads.amm
    /* renamed from: a */
    public final bmv<amn> mo12358a(int i, String str) {
        bmv<amn> bmvVar;
        bmv<amn> bmvVar2 = this.f10518a.get(str);
        if (bmvVar2 == null) {
            switch (i) {
                case 1:
                    if (this.f10522e.m12213d() != null) {
                        bmv<akk> mo12358a = this.f10521d.mo9430a().mo12358a(i, str);
                        if (mo12358a != null) {
                            bmvVar = amn.m12931a(mo12358a);
                            break;
                        } else {
                            bmvVar = null;
                            break;
                        }
                    } else {
                        bmvVar = null;
                        break;
                    }
                case 2:
                case 3:
                default:
                    bmvVar = null;
                    break;
                case 4:
                    box<aym> boxVar = this.f10520c.get(str);
                    if (boxVar == null) {
                        bmv<aym> bmvVar3 = this.f10519b.get(str);
                        if (bmvVar3 == null) {
                            bmvVar = null;
                            break;
                        } else {
                            bmvVar = amn.m12931a(bmvVar3);
                            break;
                        }
                    } else {
                        bmvVar = amn.m12930a((box<? extends amh>) boxVar);
                        break;
                    }
            }
        } else {
            bmvVar = bmvVar2;
        }
        return bmvVar;
    }
}
