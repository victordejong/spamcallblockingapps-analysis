package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.consent_sdk.cn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/cn.class */
public final class C13239cn implements AbstractC13215bq<C13233ch> {

    /* renamed from: a */
    private final AbstractC13219bu<Application> f50447a;

    /* renamed from: b */
    private final AbstractC13219bu<C13225c> f50448b;

    /* renamed from: c */
    private final AbstractC13219bu<Handler> f50449c;

    /* renamed from: d */
    private final AbstractC13219bu<Executor> f50450d;

    /* renamed from: e */
    private final AbstractC13219bu<C13253m> f50451e;

    /* renamed from: f */
    private final AbstractC13219bu<C13170aa> f50452f;

    /* renamed from: g */
    private final AbstractC13219bu<C13231cf> f50453g;

    /* renamed from: h */
    private final AbstractC13219bu<C13243cr> f50454h;

    /* renamed from: i */
    private final AbstractC13219bu<C13222bx> f50455i;

    public C13239cn(AbstractC13219bu<Application> abstractC13219bu, AbstractC13219bu<C13225c> abstractC13219bu2, AbstractC13219bu<Handler> abstractC13219bu3, AbstractC13219bu<Executor> abstractC13219bu4, AbstractC13219bu<C13253m> abstractC13219bu5, AbstractC13219bu<C13170aa> abstractC13219bu6, AbstractC13219bu<C13231cf> abstractC13219bu7, AbstractC13219bu<C13243cr> abstractC13219bu8, AbstractC13219bu<C13222bx> abstractC13219bu9) {
        this.f50447a = abstractC13219bu;
        this.f50448b = abstractC13219bu2;
        this.f50449c = abstractC13219bu3;
        this.f50450d = abstractC13219bu4;
        this.f50451e = abstractC13219bu5;
        this.f50452f = abstractC13219bu6;
        this.f50453g = abstractC13219bu7;
        this.f50454h = abstractC13219bu8;
        this.f50455i = abstractC13219bu9;
    }

    @Override // com.google.android.gms.internal.consent_sdk.AbstractC13219bu
    /* renamed from: a */
    public final /* synthetic */ Object mo13528a() {
        Application mo13528a = this.f50447a.mo13528a();
        C13225c mo13528a2 = this.f50448b.mo13528a();
        Handler mo13528a3 = this.f50449c.mo13528a();
        Executor mo13528a4 = this.f50450d.mo13528a();
        C13253m mo13528a5 = this.f50451e.mo13528a();
        C13170aa mo13528a6 = this.f50452f.mo13528a();
        C13231cf mo13528a7 = this.f50453g.mo13528a();
        return new C13233ch(mo13528a, mo13528a2, mo13528a3, mo13528a4, mo13528a5, mo13528a6, mo13528a7, this.f50454h.mo13528a(), this.f50455i.mo13528a());
    }
}
