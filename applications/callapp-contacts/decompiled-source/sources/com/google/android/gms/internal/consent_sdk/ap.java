package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ap.class */
public final class ap implements bq<ak> {

    /* renamed from: a  reason: collision with root package name */
    private final bu<Application> f28710a;

    /* renamed from: b  reason: collision with root package name */
    private final bu<ai> f28711b;

    /* renamed from: c  reason: collision with root package name */
    private final bu<Handler> f28712c;

    /* renamed from: d  reason: collision with root package name */
    private final bu<Executor> f28713d;
    private final bu<bx> e;
    private final bu<k> f;
    private final bu<u> g;

    public ap(bu<Application> buVar, bu<ai> buVar2, bu<Handler> buVar3, bu<Executor> buVar4, bu<bx> buVar5, bu<k> buVar6, bu<u> buVar7) {
        this.f28710a = buVar;
        this.f28711b = buVar2;
        this.f28712c = buVar3;
        this.f28713d = buVar4;
        this.e = buVar5;
        this.f = buVar6;
        this.g = buVar7;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final /* synthetic */ Object a() {
        return new ak(this.f28710a.a(), this.f28711b.a(), this.f28712c.a(), this.f28713d.a(), this.e.a(), this.f.a(), this.g.a());
    }
}
