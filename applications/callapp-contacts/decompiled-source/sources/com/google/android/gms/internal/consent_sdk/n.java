package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/n.class */
public final class n implements bq<k> {

    /* renamed from: a  reason: collision with root package name */
    private final bu<Application> f28846a;

    /* renamed from: b  reason: collision with root package name */
    private final bu<m> f28847b;

    /* renamed from: c  reason: collision with root package name */
    private final bu<Executor> f28848c;

    public n(bu<Application> buVar, bu<m> buVar2, bu<Executor> buVar3) {
        this.f28846a = buVar;
        this.f28847b = buVar2;
        this.f28848c = buVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final /* synthetic */ Object a() {
        return new k(this.f28846a.a(), this.f28847b.a(), this.f28848c.a());
    }
}
