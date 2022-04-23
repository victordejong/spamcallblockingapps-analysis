package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ci.class */
public final class ci implements bq<cf> {

    /* renamed from: a  reason: collision with root package name */
    private final bu<Application> f28798a;

    /* renamed from: b  reason: collision with root package name */
    private final bu<ab> f28799b;

    /* renamed from: c  reason: collision with root package name */
    private final bu<m> f28800c;

    public ci(bu<Application> buVar, bu<ab> buVar2, bu<m> buVar3) {
        this.f28798a = buVar;
        this.f28799b = buVar2;
        this.f28800c = buVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final /* synthetic */ Object a() {
        return new cf(this.f28798a.a(), this.f28799b.a(), this.f28800c.a());
    }
}
