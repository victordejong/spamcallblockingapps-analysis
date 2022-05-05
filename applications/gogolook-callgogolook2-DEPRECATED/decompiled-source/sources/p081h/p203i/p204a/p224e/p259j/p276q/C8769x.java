package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Bundle;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/x.class */
public final class C8769x extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Long f20096e;

    /* renamed from: f */
    public final /* synthetic */ String f20097f;

    /* renamed from: g */
    public final /* synthetic */ String f20098g;

    /* renamed from: h */
    public final /* synthetic */ Bundle f20099h;

    /* renamed from: i */
    public final /* synthetic */ boolean f20100i = true;

    /* renamed from: j */
    public final /* synthetic */ boolean f20101j;

    /* renamed from: k */
    public final /* synthetic */ C8613h f20102k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8769x(C8613h hVar, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(hVar);
        this.f20102k = hVar;
        this.f20096e = l;
        this.f20097f = str;
        this.f20098g = str2;
        this.f20099h = bundle;
        this.f20101j = z2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() throws RemoteException {
        AbstractC8554b bVar;
        Long l = this.f20096e;
        long longValue = l == null ? this.f19728a : l.longValue();
        bVar = this.f20102k.f19724i;
        bVar.mo17724a(this.f20097f, this.f20098g, this.f20099h, this.f20100i, this.f20101j, longValue);
    }
}
