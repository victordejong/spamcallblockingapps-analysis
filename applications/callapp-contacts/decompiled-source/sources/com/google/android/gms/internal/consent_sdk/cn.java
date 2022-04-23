package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cn.class */
public final class cn implements bq<ch> {

    /* renamed from: a  reason: collision with root package name */
    private final bu<Application> f28810a;

    /* renamed from: b  reason: collision with root package name */
    private final bu<c> f28811b;

    /* renamed from: c  reason: collision with root package name */
    private final bu<Handler> f28812c;

    /* renamed from: d  reason: collision with root package name */
    private final bu<Executor> f28813d;
    private final bu<m> e;
    private final bu<aa> f;
    private final bu<cf> g;
    private final bu<cr> h;
    private final bu<bx> i;

    public cn(bu<Application> buVar, bu<c> buVar2, bu<Handler> buVar3, bu<Executor> buVar4, bu<m> buVar5, bu<aa> buVar6, bu<cf> buVar7, bu<cr> buVar8, bu<bx> buVar9) {
        this.f28810a = buVar;
        this.f28811b = buVar2;
        this.f28812c = buVar3;
        this.f28813d = buVar4;
        this.e = buVar5;
        this.f = buVar6;
        this.g = buVar7;
        this.h = buVar8;
        this.i = buVar9;
    }

    @Override // com.google.android.gms.internal.consent_sdk.bu
    public final /* synthetic */ Object a() {
        Application a2 = this.f28810a.a();
        c a3 = this.f28811b.a();
        Handler a4 = this.f28812c.a();
        Executor a5 = this.f28813d.a();
        m a6 = this.e.a();
        aa a7 = this.f.a();
        cf a8 = this.g.a();
        return new ch(a2, a3, a4, a5, a6, a7, a8, this.h.a(), this.i.a());
    }
}
