package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/l.class */
final class l implements s {

    /* renamed from: a  reason: collision with root package name */
    private bu<ai> f28839a;

    /* renamed from: b  reason: collision with root package name */
    private bu<ad> f28840b;

    /* renamed from: c  reason: collision with root package name */
    private bu<u> f28841c;

    /* renamed from: d  reason: collision with root package name */
    private bu f28842d;
    private bu<zzbe> e;
    private final /* synthetic */ h f;

    private l(h hVar, ad adVar) {
        bu buVar;
        bu buVar2;
        o oVar;
        q qVar;
        bu buVar3;
        bu buVar4;
        o oVar2;
        bu buVar5;
        bu buVar6;
        bu buVar7;
        this.f = hVar;
        buVar = hVar.f28829a;
        this.f28839a = br.a(new al(buVar));
        this.f28840b = bt.a(adVar);
        this.f28841c = new bo();
        buVar2 = hVar.f28829a;
        bu<ai> buVar8 = this.f28839a;
        oVar = r.f28850a;
        qVar = t.f28851a;
        buVar3 = hVar.h;
        buVar4 = hVar.i;
        this.f28842d = new ap(buVar2, buVar8, oVar, qVar, buVar3, buVar4, this.f28841c);
        bu<ai> buVar9 = this.f28839a;
        oVar2 = r.f28850a;
        this.e = new aj(buVar9, oVar2, this.f28842d);
        bu<u> buVar10 = this.f28841c;
        buVar5 = hVar.f28829a;
        buVar6 = hVar.f28831c;
        bu<ai> buVar11 = this.f28839a;
        buVar7 = hVar.f28830b;
        bu<T> a2 = br.a(new ac(buVar5, buVar6, buVar11, buVar7, this.f28840b, this.e));
        bv.a(a2);
        bo boVar = (bo) buVar10;
        if (boVar.f28766a == null) {
            boVar.f28766a = a2;
            return;
        }
        throw new IllegalStateException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(h hVar, ad adVar, g gVar) {
        this(hVar, adVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.s
    public final u a() {
        return this.f28841c.a();
    }
}
