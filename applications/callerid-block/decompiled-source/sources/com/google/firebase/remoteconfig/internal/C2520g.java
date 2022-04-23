package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.internal.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/g.class */
public final /* synthetic */ class C2520g implements AbstractC2387a {

    /* renamed from: a */
    private final C2524k f10810a;

    /* renamed from: b */
    private final long f10811b;

    private C2520g(C2524k kVar, long j) {
        this.f10810a = kVar;
        this.f10811b = j;
    }

    /* renamed from: b */
    public static AbstractC2387a m3248b(C2524k kVar, long j) {
        return new C2520g(kVar, j);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g gVar) {
        AbstractC2397g h;
        h = this.f10810a.m3235h(gVar, this.f10811b);
        return h;
    }
}
