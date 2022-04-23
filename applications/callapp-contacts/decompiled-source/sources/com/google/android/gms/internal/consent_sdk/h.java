package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/h.class */
public final class h extends bb {

    /* renamed from: a  reason: collision with root package name */
    private bu<Application> f28829a;

    /* renamed from: b  reason: collision with root package name */
    private bu<m> f28830b;

    /* renamed from: c  reason: collision with root package name */
    private bu<c> f28831c;

    /* renamed from: d  reason: collision with root package name */
    private bu<v> f28832d;
    private bu<aa> e;
    private bu<ab> f;
    private bu<cf> g;
    private bu<bx> h;
    private bu<k> i;
    private bu<cr> j;
    private bu<ch> k;
    private bu<cc> l;

    private h(Application application) {
        f fVar;
        q qVar;
        q qVar2;
        o oVar;
        q qVar3;
        bq a2 = bt.a(application);
        this.f28829a = a2;
        this.f28830b = br.a(new p(a2));
        fVar = e.f28827a;
        this.f28831c = br.a(fVar);
        g gVar = new g(this);
        this.f28832d = gVar;
        this.e = br.a(new ae(gVar));
        bw bwVar = new bw(this.f28829a);
        this.f = bwVar;
        this.g = new ci(this.f28829a, bwVar, this.f28830b);
        qVar = t.f28851a;
        this.h = br.a(new ca(qVar));
        bu<Application> buVar = this.f28829a;
        bu<m> buVar2 = this.f28830b;
        qVar2 = t.f28851a;
        n nVar = new n(buVar, buVar2, qVar2);
        this.i = nVar;
        this.j = new d(this.h, nVar, this.f28830b);
        bu<Application> buVar3 = this.f28829a;
        bu<c> buVar4 = this.f28831c;
        oVar = r.f28850a;
        qVar3 = t.f28851a;
        cn cnVar = new cn(buVar3, buVar4, oVar, qVar3, this.f28830b, this.e, this.g, this.j, this.h);
        this.k = cnVar;
        this.l = br.a(new ce(this.f28830b, cnVar, this.e));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h(Application application, g gVar) {
        this(application);
    }

    @Override // com.google.android.gms.internal.consent_sdk.bb
    public final cc a() {
        return this.l.a();
    }

    @Override // com.google.android.gms.internal.consent_sdk.bb
    public final aa b() {
        return this.e.a();
    }
}
