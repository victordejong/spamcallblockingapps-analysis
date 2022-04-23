package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/le.class */
public final class le implements jp, lf {

    /* renamed from: a  reason: collision with root package name */
    private final lc f28148a;

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<AbstractMap.SimpleEntry<String, hi<? super lc>>> f28149b = new HashSet<>();

    public le(lc lcVar) {
        this.f28148a = lcVar;
    }

    @Override // com.google.android.gms.internal.ads.lf
    public final void a() {
        Iterator<AbstractMap.SimpleEntry<String, hi<? super lc>>> it2 = this.f28149b.iterator();
        while (it2.hasNext()) {
            AbstractMap.SimpleEntry<String, hi<? super lc>> next = it2.next();
            String valueOf = String.valueOf(next.getValue().toString());
            zzd.zzed(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f28148a.b(next.getKey(), next.getValue());
        }
        this.f28149b.clear();
    }

    @Override // com.google.android.gms.internal.ads.jp, com.google.android.gms.internal.ads.kf
    public final void a(String str) {
        this.f28148a.a(str);
    }

    @Override // com.google.android.gms.internal.ads.lc
    public final void a(String str, hi<? super lc> hiVar) {
        this.f28148a.a(str, hiVar);
        this.f28149b.add(new AbstractMap.SimpleEntry<>(str, hiVar));
    }

    @Override // com.google.android.gms.internal.ads.jp
    public final void a(String str, String str2) {
        js.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.jq
    public final void a(String str, Map map) {
        js.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.jp, com.google.android.gms.internal.ads.jq
    public final void a(String str, JSONObject jSONObject) {
        js.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.lc
    public final void b(String str, hi<? super lc> hiVar) {
        this.f28148a.b(str, hiVar);
        this.f28149b.remove(new AbstractMap.SimpleEntry(str, hiVar));
    }

    @Override // com.google.android.gms.internal.ads.kf
    public final void b(String str, JSONObject jSONObject) {
        js.a(this, str, jSONObject);
    }
}
