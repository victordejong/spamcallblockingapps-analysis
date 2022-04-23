package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/a.class */
public final /* synthetic */ class C2499a implements AbstractC2387a {

    /* renamed from: a */
    private final C2503e f10761a;

    private C2499a(C2503e eVar) {
        this.f10761a = eVar;
    }

    /* renamed from: b */
    public static AbstractC2387a m3315b(C2503e eVar) {
        return new C2499a(eVar);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g gVar) {
        boolean k;
        k = this.f10761a.m3301k(gVar);
        return Boolean.valueOf(k);
    }
}
