package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bax.class */
final class bax implements anu<anv> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, bsk<anv>> f24105a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, bsk<bcf>> f24106b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, buz<bcf>> f24107c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<anu<alq>> f24108d;
    private final bcy e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bax(Map<String, bsk<anv>> map, Map<String, bsk<bcf>> map2, Map<String, buz<bcf>> map3, dsv<anu<alq>> dsvVar, bcy bcyVar) {
        this.f24105a = map;
        this.f24106b = map2;
        this.f24107c = map3;
        this.f24108d = dsvVar;
        this.e = bcyVar;
    }

    @Override // com.google.android.gms.internal.ads.anu
    public final bsk<anv> a(int i, String str) {
        bsk<alq> a2;
        bsk<anv> bskVar = this.f24105a.get(str);
        if (bskVar != null) {
            return bskVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            buz<bcf> buzVar = this.f24107c.get(str);
            if (buzVar != null) {
                return new bsj(buzVar, any.f23644a);
            }
            bsk<bcf> bskVar2 = this.f24106b.get(str);
            if (bskVar2 != null) {
                return anv.a(bskVar2);
            }
            return null;
        } else if (this.e.f24196d == null || (a2 = this.f24108d.a().a(i, str)) == null) {
            return null;
        } else {
            return anv.a(a2);
        }
    }
}
