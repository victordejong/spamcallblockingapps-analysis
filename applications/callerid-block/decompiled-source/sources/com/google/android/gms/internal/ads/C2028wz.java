package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.wz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wz.class */
public final class C2028wz {

    /* renamed from: a */
    private final String f9076a;

    /* renamed from: b */
    private final C1940sd f9077b;

    /* renamed from: c */
    private final Executor f9078c;

    /* renamed from: d */
    private b00 f9079d;

    /* renamed from: e */
    private final AbstractC1766h9<Object> f9080e = new tz(this);

    /* renamed from: f */
    private final AbstractC1766h9<Object> f9081f = new vz(this);

    public C2028wz(String str, C1940sd sdVar, Executor executor) {
        this.f9076a = str;
        this.f9077b = sdVar;
        this.f9078c = executor;
    }

    /* renamed from: e */
    static /* synthetic */ boolean m4977e(C2028wz wzVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(wzVar.f9076a);
    }

    /* renamed from: a */
    public final void m4981a(b00 b00Var) {
        this.f9077b.m5753b("/updateActiveView", this.f9080e);
        this.f9077b.m5753b("/untrackActiveViewUnit", this.f9081f);
        this.f9079d = b00Var;
    }

    /* renamed from: b */
    public final void m4980b(jt jtVar) {
        jtVar.T0("/updateActiveView", this.f9080e);
        jtVar.T0("/untrackActiveViewUnit", this.f9081f);
    }

    /* renamed from: c */
    public final void m4979c(jt jtVar) {
        jtVar.C0("/updateActiveView", this.f9080e);
        jtVar.C0("/untrackActiveViewUnit", this.f9081f);
    }

    /* renamed from: d */
    public final void m4978d() {
        this.f9077b.m5752c("/updateActiveView", this.f9080e);
        this.f9077b.m5752c("/untrackActiveViewUnit", this.f9081f);
    }
}
