package p081h.p203i.p204a.p224e.p259j.p260a;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.z */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/z.class */
public final class C7474z extends AbstractC7112f<AbstractC7203d0> {
    public C7474z() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC7164a0 m20464a(Activity activity) {
        try {
            IBinder k = m21057a((Context) activity).mo20940k(BinderC7110d.m21058a(activity));
            if (k == null) {
                return null;
            }
            IInterface queryLocalInterface = k.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return queryLocalInterface instanceof AbstractC7164a0 ? (AbstractC7164a0) queryLocalInterface : new C7190c0(k);
        } catch (RemoteException e) {
            C7452x1.m20569c("Could not create remote AdOverlay.", e);
            return null;
        } catch (AbstractC7112f.C7113a e2) {
            C7452x1.m20569c("Could not create remote AdOverlay.", e2);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7203d0 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return queryLocalInterface instanceof AbstractC7203d0 ? (AbstractC7203d0) queryLocalInterface : new C7216e0(iBinder);
    }
}
