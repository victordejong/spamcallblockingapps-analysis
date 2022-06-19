package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bax.class */
final class bax implements anu<anv> {

    /* renamed from: a */
    private final Map<String, bsk<anv>> f43431a;

    /* renamed from: b */
    private final Map<String, bsk<bcf>> f43432b;

    /* renamed from: c */
    private final Map<String, buz<bcf>> f43433c;

    /* renamed from: d */
    private final dsv<anu<alq>> f43434d;

    /* renamed from: e */
    private final bcy f43435e;

    public bax(Map<String, bsk<anv>> map, Map<String, bsk<bcf>> map2, Map<String, buz<bcf>> map3, dsv<anu<alq>> dsvVar, bcy bcyVar) {
        this.f43431a = map;
        this.f43432b = map2;
        this.f43433c = map3;
        this.f43434d = dsvVar;
        this.f43435e = bcyVar;
    }

    @Override // com.google.android.gms.internal.ads.anu
    /* renamed from: a */
    public final bsk<anv> mo18263a(int i, String str) {
        bsk<alq> mo18263a;
        bsk<anv> bskVar = this.f43431a.get(str);
        if (bskVar != null) {
            return bskVar;
        }
        if (i == 1) {
            if (this.f43435e.f43611d != null && (mo18263a = this.f43434d.mo14005a().mo18263a(i, str)) != null) {
                return anv.m18521a(mo18263a);
            }
            return null;
        } else if (i != 4) {
            return null;
        } else {
            buz<bcf> buzVar = this.f43433c.get(str);
            if (buzVar != null) {
                return new bsj(buzVar, any.f42503a);
            }
            bsk<bcf> bskVar2 = this.f43432b.get(str);
            if (bskVar2 == null) {
                return null;
            }
            return anv.m18521a(bskVar2);
        }
    }
}
