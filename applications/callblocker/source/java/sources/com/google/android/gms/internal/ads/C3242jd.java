package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.jd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jd.class */
public final class C3242jd implements AbstractC3195hk, AbstractC3240jb {

    /* renamed from: a */
    private final AbstractC3241jc f16798a;

    /* renamed from: b */
    private final HashSet<AbstractMap.SimpleEntry<String, AbstractC3131fa<? super AbstractC3241jc>>> f16799b = new HashSet<>();

    public C3242jd(AbstractC3241jc abstractC3241jc) {
        this.f16798a = abstractC3241jc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3240jb
    /* renamed from: a */
    public final void mo7740a() {
        Iterator<AbstractMap.SimpleEntry<String, AbstractC3131fa<? super AbstractC3241jc>>> it = this.f16799b.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, AbstractC3131fa<? super AbstractC3241jc>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            C3556uu.m7052a(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f16798a.mo7735b(next.getKey(), next.getValue());
        }
        this.f16799b.clear();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3241jc
    /* renamed from: a */
    public final void mo7739a(String str, AbstractC3131fa<? super AbstractC3241jc> abstractC3131fa) {
        this.f16798a.mo7739a(str, abstractC3131fa);
        this.f16799b.add(new AbstractMap.SimpleEntry<>(str, abstractC3131fa));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk
    /* renamed from: a */
    public final void mo7738a(String str, String str2) {
        C3194hj.m7796a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: a */
    public final void mo7737a(String str, Map map) {
        C3194hj.m7795a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: a */
    public final void mo7736a(String str, JSONObject jSONObject) {
        C3194hj.m7794a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3241jc
    /* renamed from: b */
    public final void mo7735b(String str, AbstractC3131fa<? super AbstractC3241jc> abstractC3131fa) {
        this.f16798a.mo7735b(str, abstractC3131fa);
        this.f16799b.remove(new AbstractMap.SimpleEntry(str, abstractC3131fa));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk, com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: b */
    public final void mo7734b(String str, JSONObject jSONObject) {
        C3194hj.m7793b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk, com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public final void mo7733d(String str) {
        this.f16798a.mo7733d(str);
    }
}
