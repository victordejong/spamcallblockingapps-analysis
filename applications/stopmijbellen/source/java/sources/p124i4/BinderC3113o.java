package p124i4;

import android.os.Bundle;
import android.os.RemoteException;
import p189o4.AbstractBinderC3889z;
import p201p6.C4018c;
import p220r4.C4203l;
/* renamed from: i4.o */
/* loaded from: classes-dex2jar.jar:i4/o.class */
public class BinderC3113o extends AbstractBinderC3889z {

    /* renamed from: a */
    public final C4018c f10539a;

    /* renamed from: b */
    public final C4203l f10540b;

    /* renamed from: c */
    public final /* synthetic */ C3116r f10541c;

    public BinderC3113o(C3116r c3116r, C4018c c4018c, C4203l c4203l) {
        this.f10541c = c3116r;
        this.f10539a = c4018c;
        this.f10540b = c4203l;
    }

    @Override // p189o4.AbstractC3857a0
    /* renamed from: b */
    public void mo1762b(Bundle bundle) throws RemoteException {
        this.f10541c.f10546a.m1747c(this.f10540b);
        this.f10539a.m1507e("onRequestInfo", new Object[0]);
    }

    @Override // p189o4.AbstractC3857a0
    public void zzb(Bundle bundle) throws RemoteException {
        this.f10541c.f10546a.m1747c(this.f10540b);
        this.f10539a.m1507e("onCompleteUpdate", new Object[0]);
    }
}
