package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f60.class */
public final class f60 implements u40, e60 {

    /* renamed from: d */
    private final e60 f22735d;

    /* renamed from: e */
    private final HashSet<AbstractMap.SimpleEntry<String, n20<? super e60>>> f22736e = new HashSet<>();

    public f60(e60 e60Var) {
        this.f22735d = e60Var;
    }

    @Override // com.google.android.gms.internal.ads.s40
    /* renamed from: D0 */
    public final void mo7959D0(String str, Map map) {
        t40.m10838d(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.g50
    /* renamed from: E0 */
    public final void mo7957E0(String str, JSONObject jSONObject) {
        t40.m10841a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.e60
    /* renamed from: U */
    public final void mo15305U(String str, n20<? super e60> n20Var) {
        this.f22735d.mo15305U(str, n20Var);
        this.f22736e.remove(new AbstractMap.SimpleEntry(str, n20Var));
    }

    @Override // com.google.android.gms.internal.ads.u40
    /* renamed from: a */
    public final void mo7920a(String str, JSONObject jSONObject) {
        t40.m10839c(this, str, jSONObject);
    }

    /* renamed from: b */
    public final void m15304b() {
        Iterator<AbstractMap.SimpleEntry<String, n20<? super e60>>> it = this.f22736e.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, n20<? super e60>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            C5722o1.m17990k(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f22735d.mo15305U(next.getKey(), next.getValue());
        }
        this.f22736e.clear();
    }

    @Override // com.google.android.gms.internal.ads.e60
    /* renamed from: i0 */
    public final void mo15303i0(String str, n20<? super e60> n20Var) {
        this.f22735d.mo15303i0(str, n20Var);
        this.f22736e.add(new AbstractMap.SimpleEntry<>(str, n20Var));
    }

    @Override // com.google.android.gms.internal.ads.u40
    /* renamed from: n */
    public final void mo7896n(String str) {
        this.f22735d.mo7896n(str);
    }

    @Override // com.google.android.gms.internal.ads.u40
    /* renamed from: r */
    public final void mo7890r(String str, String str2) {
        t40.m10840b(this, str, str2);
    }
}
