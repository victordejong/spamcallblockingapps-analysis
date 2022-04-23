package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* renamed from: h.i.a.e.j.a.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w.class */
public final class C7438w implements AbstractC7270i2<UnifiedNativeAdMapper, Object> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC7280j f17507a;

    public C7438w(BinderC7390s sVar, AbstractC7280j jVar, AbstractC7291ja jaVar) {
        this.f17507a = jVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7270i2
    /* renamed from: a */
    public final void mo20626a(String str) {
        try {
            this.f17507a.mo20871a(str);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}
