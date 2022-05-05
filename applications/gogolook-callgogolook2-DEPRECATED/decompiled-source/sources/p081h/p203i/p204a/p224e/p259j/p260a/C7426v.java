package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.v */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v.class */
public final class C7426v implements AbstractC7270i2<AbstractC7296k2, Object> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7305l f17487a;

    public C7426v(BinderC7390s sVar, AbstractC7305l lVar, AbstractC7291ja jaVar) {
        this.f17487a = lVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7270i2
    /* renamed from: a */
    public final void mo20626a(String str) {
        try {
            this.f17487a.mo20803a(str);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}
