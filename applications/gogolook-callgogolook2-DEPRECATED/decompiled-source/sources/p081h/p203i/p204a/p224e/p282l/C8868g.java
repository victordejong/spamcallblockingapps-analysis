package p081h.p203i.p204a.p224e.p282l;

import android.os.RemoteException;
import com.google.android.gms.maps.model.VisibleRegion;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8877d;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* renamed from: h.i.a.e.l.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/g.class */
public final class C8868g {

    /* renamed from: a */
    public final AbstractC8877d f20177a;

    public C8868g(AbstractC8877d dVar) {
        this.f20177a = dVar;
    }

    /* renamed from: a */
    public final VisibleRegion m16856a() {
        try {
            return this.f20177a.mo16819S();
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }
}
