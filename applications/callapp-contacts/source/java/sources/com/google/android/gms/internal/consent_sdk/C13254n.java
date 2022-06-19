package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.consent_sdk.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/n.class */
public final class C13254n implements AbstractC13215bq<C13251k> {

    /* renamed from: a */
    private final AbstractC13219bu<Application> f50498a;

    /* renamed from: b */
    private final AbstractC13219bu<C13253m> f50499b;

    /* renamed from: c */
    private final AbstractC13219bu<Executor> f50500c;

    public C13254n(AbstractC13219bu<Application> abstractC13219bu, AbstractC13219bu<C13253m> abstractC13219bu2, AbstractC13219bu<Executor> abstractC13219bu3) {
        this.f50498a = abstractC13219bu;
        this.f50499b = abstractC13219bu2;
        this.f50500c = abstractC13219bu3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final /* synthetic */ Object mo13528a() {
        return new C13251k(this.f50498a.mo13528a(), this.f50499b.mo13528a(), this.f50500c.mo13528a());
    }
}
