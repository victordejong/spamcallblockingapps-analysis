package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.ui */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ui.class */
public final class C3544ui extends AbstractC3552uq {

    /* renamed from: a */
    private final /* synthetic */ C3542ug f17432a;

    public C3544ui(C3542ug c3542ug) {
        this.f17432a = c3542ug;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3552uq
    /* renamed from: a */
    public final void mo6839a() {
        Context context;
        C3647yd c3647yd;
        Object obj;
        C3102e c3102e;
        context = this.f17432a.f17416f;
        c3647yd = this.f17432a.f17417g;
        C3130f c3130f = new C3130f(context, c3647yd.f17636a);
        obj = this.f17432a.f17411a;
        synchronized (obj) {
            try {
                C2341q.m14735l();
                c3102e = this.f17432a.f17418h;
                C3157g.m7819a(c3102e, c3130f);
            } catch (IllegalArgumentException e) {
                C3556uu.m6746d("Cannot config CSI reporter.", e);
            }
        }
    }
}
