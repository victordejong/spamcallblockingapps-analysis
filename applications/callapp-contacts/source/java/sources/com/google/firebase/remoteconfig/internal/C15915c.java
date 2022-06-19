package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.tasks.AbstractC14184g;
import com.google.android.gms.tasks.AbstractC14185h;
/* renamed from: com.google.firebase.remoteconfig.internal.c */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/c.class */
public final /* synthetic */ class C15915c implements AbstractC14184g {

    /* renamed from: a */
    private final C15911a f56504a;

    /* renamed from: b */
    private final boolean f56505b;

    /* renamed from: c */
    private final C15918f f56506c;

    private C15915c(C15911a c15911a, boolean z, C15918f c15918f) {
        this.f56504a = c15911a;
        this.f56505b = z;
        this.f56506c = c15918f;
    }

    /* renamed from: a */
    public static AbstractC14184g m8072a(C15911a c15911a, boolean z, C15918f c15918f) {
        return new C15915c(c15911a, true, c15918f);
    }

    @Override // com.google.android.gms.tasks.AbstractC14184g
    public final AbstractC14185h then(Object obj) {
        return C15911a.m8079a(this.f56504a, this.f56505b, this.f56506c);
    }
}
