package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.le */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/le.class */
public final class C12711le implements AbstractC12668jp, AbstractC12712lf {

    /* renamed from: a */
    private final AbstractC12709lc f49465a;

    /* renamed from: b */
    private final HashSet<AbstractMap.SimpleEntry<String, AbstractC12607hi<? super AbstractC12709lc>>> f49466b = new HashSet<>();

    public C12711le(AbstractC12709lc abstractC12709lc) {
        this.f49465a = abstractC12709lc;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12712lf
    /* renamed from: a */
    public final void mo14530a() {
        Iterator<AbstractMap.SimpleEntry<String, AbstractC12607hi<? super AbstractC12709lc>>> it2 = this.f49466b.iterator();
        while (it2.hasNext()) {
            AbstractMap.SimpleEntry<String, AbstractC12607hi<? super AbstractC12709lc>> next = it2.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zzd.zzed(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f49465a.mo14531b(next.getKey(), next.getValue());
        }
        this.f49466b.clear();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12668jp, com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: a */
    public final void mo13775a(String str) {
        this.f49465a.mo13775a(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12709lc
    /* renamed from: a */
    public final void mo14533a(String str, AbstractC12607hi<? super AbstractC12709lc> abstractC12607hi) {
        this.f49465a.mo14533a(str, abstractC12607hi);
        this.f49466b.add(new AbstractMap.SimpleEntry<>(str, abstractC12607hi));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12668jp
    /* renamed from: a */
    public final void mo14532a(String str, String str2) {
        C12671js.m14573a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13770a(String str, Map map) {
        C12671js.m14572a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12668jp, com.google.android.gms.internal.ads.AbstractC12669jq
    /* renamed from: a */
    public final void mo13769a(String str, JSONObject jSONObject) {
        C12671js.m14570b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12709lc
    /* renamed from: b */
    public final void mo14531b(String str, AbstractC12607hi<? super AbstractC12709lc> abstractC12607hi) {
        this.f49465a.mo14531b(str, abstractC12607hi);
        this.f49466b.remove(new AbstractMap.SimpleEntry(str, abstractC12607hi));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12685kf
    /* renamed from: b */
    public final void mo13757b(String str, JSONObject jSONObject) {
        C12671js.m14571a(this, str, jSONObject);
    }
}
