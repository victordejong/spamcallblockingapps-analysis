package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.consent_sdk.ap */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ap.class */
public final class C13185ap implements AbstractC13215bq<C13180ak> {

    /* renamed from: a */
    private final AbstractC13219bu<Application> f50323a;

    /* renamed from: b */
    private final AbstractC13219bu<C13178ai> f50324b;

    /* renamed from: c */
    private final AbstractC13219bu<Handler> f50325c;

    /* renamed from: d */
    private final AbstractC13219bu<Executor> f50326d;

    /* renamed from: e */
    private final AbstractC13219bu<C13222bx> f50327e;

    /* renamed from: f */
    private final AbstractC13219bu<C13251k> f50328f;

    /* renamed from: g */
    private final AbstractC13219bu<C13261u> f50329g;

    public C13185ap(AbstractC13219bu<Application> abstractC13219bu, AbstractC13219bu<C13178ai> abstractC13219bu2, AbstractC13219bu<Handler> abstractC13219bu3, AbstractC13219bu<Executor> abstractC13219bu4, AbstractC13219bu<C13222bx> abstractC13219bu5, AbstractC13219bu<C13251k> abstractC13219bu6, AbstractC13219bu<C13261u> abstractC13219bu7) {
        this.f50323a = abstractC13219bu;
        this.f50324b = abstractC13219bu2;
        this.f50325c = abstractC13219bu3;
        this.f50326d = abstractC13219bu4;
        this.f50327e = abstractC13219bu5;
        this.f50328f = abstractC13219bu6;
        this.f50329g = abstractC13219bu7;
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final /* synthetic */ Object mo13528a() {
        return new C13180ak(this.f50323a.mo13528a(), this.f50324b.mo13528a(), this.f50325c.mo13528a(), this.f50326d.mo13528a(), this.f50327e.mo13528a(), this.f50328f.mo13528a(), this.f50329g.mo13528a());
    }
}
