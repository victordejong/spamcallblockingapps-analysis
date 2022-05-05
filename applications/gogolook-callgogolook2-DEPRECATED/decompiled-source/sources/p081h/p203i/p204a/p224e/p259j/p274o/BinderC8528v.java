package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6854d;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.j.o.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/v.class */
public final class BinderC8528v extends AbstractBinderC8517l {

    /* renamed from: a */
    public AbstractC6854d<LocationSettingsResult> f19555a;

    public BinderC8528v(AbstractC6854d<LocationSettingsResult> dVar) {
        C7021t.m21285a(dVar != null, "listener can't be null.");
        this.f19555a = dVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.AbstractC8515k
    /* renamed from: a */
    public final void mo17866a(LocationSettingsResult locationSettingsResult) throws RemoteException {
        this.f19555a.mo21767a(locationSettingsResult);
        this.f19555a = null;
    }
}
