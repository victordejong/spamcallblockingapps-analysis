package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.RemoteException;
import com.google.android.gms.location.LocationRequest;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6885j;
import p081h.p203i.p204a.p224e.p280k.AbstractC8825g;
/* renamed from: h.i.a.e.j.o.k0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/k0.class */
public final class C8516k0 extends AbstractC8497b {

    /* renamed from: s */
    public final /* synthetic */ LocationRequest f19540s;

    /* renamed from: t */
    public final /* synthetic */ AbstractC8825g f19541t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8516k0(C8514j0 j0Var, AbstractC6825f fVar, LocationRequest locationRequest, AbstractC8825g gVar) {
        super(fVar);
        this.f19540s = locationRequest;
        this.f19541t = gVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6850c
    /* renamed from: a */
    public final /* synthetic */ void mo17881a(C8526t tVar) throws RemoteException {
        tVar.m17869a(this.f19540s, C6885j.m21661a(this.f19541t, C8500c0.m17893a(), AbstractC8825g.class.getSimpleName()), new BinderC8499c(this));
    }
}
