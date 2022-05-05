package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/d1.class */
public final class C7204d1 extends AbstractC7112f<AbstractC7451x0> {
    public C7204d1() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC7415u0 m20963a(Context context, AbstractC7226ea eaVar) {
        try {
            IBinder a = m21057a(context).mo20514a(BinderC7110d.m21058a(context), eaVar, 13000000);
            if (a == null) {
                return null;
            }
            IInterface queryLocalInterface = a.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
            return queryLocalInterface instanceof AbstractC7415u0 ? (AbstractC7415u0) queryLocalInterface : new C7439w0(a);
        } catch (RemoteException | AbstractC7112f.C7113a e) {
            C7452x1.m20569c("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7451x0 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
        return queryLocalInterface instanceof AbstractC7451x0 ? (AbstractC7451x0) queryLocalInterface : new C7463y0(iBinder);
    }
}
