package com.google.android.gms.internal.consent_sdk;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.consent_sdk.ca */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ca.class */
public final class C13226ca implements AbstractC13215bq<C13222bx> {

    /* renamed from: a */
    private final AbstractC13219bu<Executor> f50411a;

    public C13226ca(AbstractC13219bu<Executor> abstractC13219bu) {
        this.f50411a = abstractC13219bu;
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final /* synthetic */ Object mo13528a() {
        return new C13222bx(this.f50411a.mo13528a());
    }
}
