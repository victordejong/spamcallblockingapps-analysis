package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.d3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/d3.class */
public final class C7206d3 extends AbstractC7112f<AbstractC7298k4> {
    public C7206d3() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC7259h4 m20944a(Context context, String str, AbstractC7226ea eaVar) {
        try {
            IBinder b = m21057a(context).mo20819b(BinderC7110d.m21058a(context), str, eaVar, 13000000);
            if (b == null) {
                return null;
            }
            IInterface queryLocalInterface = b.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            return queryLocalInterface instanceof AbstractC7259h4 ? (AbstractC7259h4) queryLocalInterface : new C7285j4(b);
        } catch (RemoteException | AbstractC7112f.C7113a e) {
            C7452x1.m20569c("Could not create remote builder for AdLoader.", e);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7298k4 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
        return queryLocalInterface instanceof AbstractC7298k4 ? (AbstractC7298k4) queryLocalInterface : new C7310l4(iBinder);
    }
}
