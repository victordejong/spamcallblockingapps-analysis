package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
/* renamed from: com.google.firebase.remoteconfig.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/a.class */
public final /* synthetic */ class C2499a implements AbstractC2387a {

    /* renamed from: a */
    private final C2503e f10761a;

    private C2499a(C2503e c2503e) {
        this.f10761a = c2503e;
    }

    /* renamed from: b */
    public static AbstractC2387a m3315b(C2503e c2503e) {
        return new C2499a(c2503e);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g abstractC2397g) {
        boolean m3301k;
        m3301k = this.f10761a.m3301k(abstractC2397g);
        return Boolean.valueOf(m3301k);
    }
}
