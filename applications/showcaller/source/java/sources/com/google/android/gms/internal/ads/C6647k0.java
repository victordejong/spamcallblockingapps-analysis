package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.k0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k0.class */
public final class C6647k0 implements gt2 {

    /* renamed from: a */
    private final or2 f25040a;

    /* renamed from: b */
    private final gs2 f25041b;

    /* renamed from: c */
    private final View$OnAttachStateChangeListenerC7128x0 f25042c;

    /* renamed from: d */
    private final zzabk f25043d;

    /* renamed from: e */
    private final C7090w f25044e;

    public C6647k0(or2 or2Var, gs2 gs2Var, View$OnAttachStateChangeListenerC7128x0 view$OnAttachStateChangeListenerC7128x0, zzabk zzabkVar, C7090w c7090w) {
        this.f25040a = or2Var;
        this.f25041b = gs2Var;
        this.f25042c = view$OnAttachStateChangeListenerC7128x0;
        this.f25043d = zzabkVar;
        this.f25044e = c7090w;
    }

    /* renamed from: d */
    private final Map<String, Object> m14005d() {
        HashMap hashMap = new HashMap();
        z14 m14819c = this.f25041b.m14819c();
        hashMap.put("v", this.f25040a.mo10920a());
        hashMap.put("gms", Boolean.valueOf(this.f25040a.mo10918c()));
        hashMap.put("int", m14819c.m8567t0());
        hashMap.put("up", Boolean.valueOf(this.f25043d.m8119a()));
        hashMap.put("t", new Throwable());
        return hashMap;
    }

    /* renamed from: a */
    public final void m14008a(View view) {
        this.f25042c.m9391a(view);
    }

    @Override // com.google.android.gms.internal.ads.gt2
    /* renamed from: b */
    public final Map<String, Object> mo14007b() {
        Map<String, Object> m14005d = m14005d();
        z14 m14820b = this.f25041b.m14820b();
        m14005d.put("gai", Boolean.valueOf(this.f25040a.mo10919b()));
        m14005d.put("did", m14820b.m8566u0());
        m14005d.put("dst", Integer.valueOf(m14820b.m8574m0() - 1));
        m14005d.put("doo", Boolean.valueOf(m14820b.m8565v0()));
        C7090w c7090w = this.f25044e;
        if (c7090w != null) {
            m14005d.put("nt", Long.valueOf(c7090w.m9816d()));
        }
        return m14005d;
    }

    @Override // com.google.android.gms.internal.ads.gt2
    /* renamed from: c */
    public final Map<String, Object> mo14006c() {
        return m14005d();
    }

    @Override // com.google.android.gms.internal.ads.gt2
    /* renamed from: e */
    public final Map<String, Object> mo14004e() {
        Map<String, Object> m14005d = m14005d();
        m14005d.put("lts", Long.valueOf(this.f25042c.m9389c()));
        return m14005d;
    }
}
