package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ais.class */
public final class ais {

    /* renamed from: a */
    private final String f9758a;

    /* renamed from: b */
    private final C3257js f9759b;

    /* renamed from: c */
    private final Executor f9760c;

    /* renamed from: d */
    private ajb f9761d;

    /* renamed from: e */
    private final AbstractC3131fa<Object> f9762e = new aiv(this);

    /* renamed from: f */
    private final AbstractC3131fa<Object> f9763f = new aix(this);

    public ais(String str, C3257js c3257js, Executor executor) {
        this.f9758a = str;
        this.f9759b = c3257js;
        this.f9760c = executor;
    }

    /* renamed from: a */
    public final boolean m13088a(Map<String, String> map) {
        boolean z;
        if (map == null) {
            z = false;
        } else {
            String str = map.get("hashCode");
            z = !TextUtils.isEmpty(str) && str.equals(this.f9758a);
        }
        return z;
    }

    /* renamed from: a */
    public final void m13093a() {
        this.f9759b.m7717b("/updateActiveView", this.f9762e);
        this.f9759b.m7717b("/untrackActiveViewUnit", this.f9763f);
    }

    /* renamed from: a */
    public final void m13092a(act actVar) {
        actVar.mo13462a("/updateActiveView", this.f9762e);
        actVar.mo13462a("/untrackActiveViewUnit", this.f9763f);
    }

    /* renamed from: a */
    public final void m13089a(ajb ajbVar) {
        this.f9759b.m7719a("/updateActiveView", this.f9762e);
        this.f9759b.m7719a("/untrackActiveViewUnit", this.f9763f);
        this.f9761d = ajbVar;
    }

    /* renamed from: b */
    public final void m13087b(act actVar) {
        actVar.mo13453b("/updateActiveView", this.f9762e);
        actVar.mo13453b("/untrackActiveViewUnit", this.f9763f);
    }
}
