package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zu0.class */
public final class zu0 {

    /* renamed from: a */
    private final String f33401a;

    /* renamed from: b */
    private final a70 f33402b;

    /* renamed from: c */
    private final Executor f33403c;

    /* renamed from: d */
    private ev0 f33404d;

    /* renamed from: e */
    private final n20<Object> f33405e = new wu0(this);

    /* renamed from: f */
    private final n20<Object> f33406f = new yu0(this);

    public zu0(String str, a70 a70Var, Executor executor) {
        this.f33401a = str;
        this.f33402b = a70Var;
        this.f33403c = executor;
    }

    /* renamed from: g */
    public static /* synthetic */ boolean m8174g(zu0 zu0Var, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(zu0Var.f33401a);
    }

    /* renamed from: c */
    public final void m8178c(ev0 ev0Var) {
        this.f33402b.m16678b("/updateActiveView", this.f33405e);
        this.f33402b.m16678b("/untrackActiveViewUnit", this.f33406f);
        this.f33404d = ev0Var;
    }

    /* renamed from: d */
    public final void m8177d(wn0 wn0Var) {
        wn0Var.mo7899l0("/updateActiveView", this.f33405e);
        wn0Var.mo7899l0("/untrackActiveViewUnit", this.f33406f);
    }

    /* renamed from: e */
    public final void m8176e(wn0 wn0Var) {
        wn0Var.mo7910e0("/updateActiveView", this.f33405e);
        wn0Var.mo7910e0("/untrackActiveViewUnit", this.f33406f);
    }

    /* renamed from: f */
    public final void m8175f() {
        this.f33402b.m16677c("/updateActiveView", this.f33405e);
        this.f33402b.m16677c("/untrackActiveViewUnit", this.f33406f);
    }
}
