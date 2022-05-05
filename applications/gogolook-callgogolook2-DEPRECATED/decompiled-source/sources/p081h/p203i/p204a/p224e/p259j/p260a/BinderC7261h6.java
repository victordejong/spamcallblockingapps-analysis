package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
/* renamed from: h.i.a.e.j.a.h6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/h6.class */
public final class BinderC7261h6 extends AbstractBinderC7233f4 {

    /* renamed from: a */
    public final /* synthetic */ BinderC7235f6 f17346a;

    public BinderC7261h6(BinderC7235f6 f6Var) {
        this.f17346a = f6Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    /* renamed from: H */
    public final String mo20917H() throws RemoteException {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    /* renamed from: a */
    public final void mo20916a(zzjk zzjkVar) throws RemoteException {
        mo20915a(zzjkVar, 1);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    /* renamed from: a */
    public final void mo20915a(zzjk zzjkVar, int i) throws RemoteException {
        C7452x1.m20574a("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        C7343o1.f17401a.post(new RunnableC7274i6(this));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    public final boolean isLoading() throws RemoteException {
        return false;
    }
}
