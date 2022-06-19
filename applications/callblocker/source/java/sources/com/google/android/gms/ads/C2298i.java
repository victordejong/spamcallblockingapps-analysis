package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AbstractC2394d;
import com.google.android.gms.ads.reward.C2391a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.internal.ads.dxs;
import com.google.android.gms.internal.ads.ebm;
/* renamed from: com.google.android.gms.ads.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/i.class */
public final class C2298i {

    /* renamed from: a */
    private final ebm f6627a;

    public C2298i(Context context) {
        this.f6627a = new ebm(context);
        C2662s.m13980a(context, "Context cannot be null");
    }

    /* renamed from: a */
    public final void m14811a(C2249b c2249b) {
        this.f6627a.m8002a(c2249b);
        if (c2249b != null && (c2249b instanceof dxs)) {
            this.f6627a.m7999a((dxs) c2249b);
        } else if (c2249b != null) {
        } else {
            this.f6627a.m7999a((dxs) null);
        }
    }

    /* renamed from: a */
    public final void m14810a(C2282d c2282d) {
        this.f6627a.m7998a(c2282d.m14842a());
    }

    /* renamed from: a */
    public final void m14809a(C2391a c2391a) {
        this.f6627a.m8001a(c2391a);
    }

    /* renamed from: a */
    public final void m14808a(AbstractC2394d abstractC2394d) {
        this.f6627a.m8000a(abstractC2394d);
    }

    /* renamed from: a */
    public final void m14807a(String str) {
        this.f6627a.m7997a(str);
    }

    /* renamed from: a */
    public final void m14806a(boolean z) {
        this.f6627a.m7996a(true);
    }

    /* renamed from: a */
    public final boolean m14812a() {
        return this.f6627a.m8003a();
    }

    /* renamed from: b */
    public final void m14805b() {
        this.f6627a.m7992c();
    }

    /* renamed from: b */
    public final void m14804b(boolean z) {
        this.f6627a.m7993b(z);
    }

    /* renamed from: c */
    public final Bundle m14803c() {
        return this.f6627a.m7995b();
    }
}
