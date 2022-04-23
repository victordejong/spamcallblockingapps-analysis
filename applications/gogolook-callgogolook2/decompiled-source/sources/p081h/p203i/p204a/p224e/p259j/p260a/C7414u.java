package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u.class */
public final class C7414u implements AbstractC7270i2<AbstractC7283j2, Object> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7254h f17479a;

    public C7414u(BinderC7390s sVar, AbstractC7254h hVar, AbstractC7291ja jaVar) {
        this.f17479a = hVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7270i2
    /* renamed from: a */
    public final void mo20626a(String str) {
        try {
            this.f17479a.mo20901a(str);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}
