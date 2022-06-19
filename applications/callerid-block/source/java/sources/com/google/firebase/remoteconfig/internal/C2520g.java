package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC2387a;
import com.google.android.gms.tasks.AbstractC2397g;
/* renamed from: com.google.firebase.remoteconfig.internal.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/g.class */
public final /* synthetic */ class C2520g implements AbstractC2387a {

    /* renamed from: a */
    private final C2524k f10810a;

    /* renamed from: b */
    private final long f10811b;

    private C2520g(C2524k c2524k, long j) {
        this.f10810a = c2524k;
        this.f10811b = j;
    }

    /* renamed from: b */
    public static AbstractC2387a m3248b(C2524k c2524k, long j) {
        return new C2520g(c2524k, j);
    }

    @Override // com.google.android.gms.tasks.AbstractC2387a
    /* renamed from: a */
    public Object mo3246a(AbstractC2397g abstractC2397g) {
        AbstractC2397g m3235h;
        m3235h = this.f10810a.m3235h(abstractC2397g, this.f10811b);
        return m3235h;
    }
}
