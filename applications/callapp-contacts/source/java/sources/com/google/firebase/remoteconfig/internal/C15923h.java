package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
/* renamed from: com.google.firebase.remoteconfig.internal.h */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/h.class */
public final /* synthetic */ class C15923h implements AbstractC14179b {

    /* renamed from: a */
    private final C15921g f56534a;

    /* renamed from: b */
    private final long f56535b;

    private C15923h(C15921g c15921g, long j) {
        this.f56534a = c15921g;
        this.f56535b = j;
    }

    /* renamed from: a */
    public static AbstractC14179b m8054a(C15921g c15921g, long j) {
        return new C15923h(c15921g, j);
    }

    @Override // com.google.android.gms.tasks.AbstractC14179b
    public final Object then(AbstractC14185h abstractC14185h) {
        return C15921g.m8059a(this.f56534a, this.f56535b, abstractC14185h);
    }
}
