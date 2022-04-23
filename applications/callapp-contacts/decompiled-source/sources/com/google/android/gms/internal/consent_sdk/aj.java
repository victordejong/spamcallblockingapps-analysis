package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/aj.class */
public final class aj implements bq<zzbe> {

    /* renamed from: a  reason: collision with root package name */
    private final bu<ai> f28696a;

    /* renamed from: b  reason: collision with root package name */
    private final bu<Handler> f28697b;

    /* renamed from: c  reason: collision with root package name */
    private final bu<ak> f28698c;

    public aj(bu<ai> buVar, bu<Handler> buVar2, bu<ak> buVar3) {
        this.f28696a = buVar;
        this.f28697b = buVar2;
        this.f28698c = buVar3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final /* synthetic */ Object a() {
        return new zzbe(this.f28696a.a(), this.f28697b.a(), this.f28698c.a());
    }
}
