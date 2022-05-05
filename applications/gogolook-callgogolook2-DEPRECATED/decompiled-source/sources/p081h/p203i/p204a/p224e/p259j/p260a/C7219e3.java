package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.e3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e3.class */
public final class C7219e3 extends AbstractC7112f<AbstractC7358p4> {
    public C7219e3() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC7322m4 m20937a(Context context, zzjo zzjoVar, String str, AbstractC7226ea eaVar, int i) {
        try {
            IBinder a = m21057a(context).mo20735a(BinderC7110d.m21058a(context), zzjoVar, str, eaVar, 13000000, i);
            if (a == null) {
                return null;
            }
            IInterface queryLocalInterface = a.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            return queryLocalInterface instanceof AbstractC7322m4 ? (AbstractC7322m4) queryLocalInterface : new C7346o4(a);
        } catch (RemoteException | AbstractC7112f.C7113a e) {
            C7452x1.m20573a("Could not create remote AdManager.", e);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7358p4 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        return queryLocalInterface instanceof AbstractC7358p4 ? (AbstractC7358p4) queryLocalInterface : new C7371q4(iBinder);
    }
}
