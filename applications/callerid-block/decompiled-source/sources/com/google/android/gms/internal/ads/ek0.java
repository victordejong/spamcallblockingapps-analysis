package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ek0.class */
public final class ek0 {

    /* renamed from: a */
    private final so0 f6411a;

    /* renamed from: b */
    private final mn0 f6412b;

    /* renamed from: c */
    private final m00 f6413c;

    /* renamed from: d */
    private final bj0 f6414d;

    public ek0(so0 so0Var, mn0 mn0Var, m00 m00Var, bj0 bj0Var) {
        this.f6411a = so0Var;
        this.f6412b = mn0Var;
        this.f6413c = m00Var;
        this.f6414d = bj0Var;
    }

    /* renamed from: a */
    public final View m7614a() {
        View a = this.f6411a.m5639a(zzyx.p(), null, null);
        View view = a;
        view.setVisibility(8);
        a.T0("/sendMessageToSdk", new yj0(this));
        a.T0("/adMuted", new zj0(this));
        this.f6412b.m6536h(new WeakReference(a), "/loadHtml", new ak0(this));
        this.f6412b.m6536h(new WeakReference(a), "/showOverlay", new bk0(this));
        this.f6412b.m6536h(new WeakReference(a), "/hideOverlay", new ck0(this));
        return view;
    }

    /* renamed from: b */
    final /* synthetic */ void m7613b(jt jtVar, Map map) {
        C1894po.m6181e("Hiding native ads overlay.");
        jtVar.G().setVisibility(8);
        this.f6413c.d(false);
    }

    /* renamed from: c */
    final /* synthetic */ void m7612c(jt jtVar, Map map) {
        C1894po.m6181e("Showing native ads overlay.");
        jtVar.G().setVisibility(0);
        this.f6413c.d(true);
    }

    /* renamed from: d */
    final /* synthetic */ void m7611d(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f6412b.m6538f("sendMessageToNativeJs", hashMap);
    }

    /* renamed from: e */
    final /* synthetic */ void m7610e(jt jtVar, Map map) {
        this.f6414d.m7970o();
    }

    /* renamed from: f */
    final /* synthetic */ void m7609f(jt jtVar, Map map) {
        this.f6412b.m6538f("sendMessageToNativeJs", map);
    }
}
