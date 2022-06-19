package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* renamed from: com.google.android.gms.internal.consent_sdk.ci */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ci.class */
public final class C13234ci implements AbstractC13215bq<C13231cf> {

    /* renamed from: a */
    private final AbstractC13219bu<Application> f50434a;

    /* renamed from: b */
    private final AbstractC13219bu<C13171ab> f50435b;

    /* renamed from: c */
    private final AbstractC13219bu<C13253m> f50436c;

    public C13234ci(AbstractC13219bu<Application> abstractC13219bu, AbstractC13219bu<C13171ab> abstractC13219bu2, AbstractC13219bu<C13253m> abstractC13219bu3) {
        this.f50434a = abstractC13219bu;
        this.f50435b = abstractC13219bu2;
        this.f50436c = abstractC13219bu3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final /* synthetic */ Object mo13528a() {
        return new C13231cf(this.f50434a.mo13528a(), this.f50435b.mo13528a(), this.f50436c.mo13528a());
    }
}
