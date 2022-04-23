package com.google.android.gms.internal.consent_sdk;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ca.class */
public final class ca implements bq<bx> {

    /* renamed from: a  reason: collision with root package name */
    private final bu<Executor> f28780a;

    public ca(bu<Executor> buVar) {
        this.f28780a = buVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final /* synthetic */ Object a() {
        return new bx(this.f28780a.a());
    }
}
