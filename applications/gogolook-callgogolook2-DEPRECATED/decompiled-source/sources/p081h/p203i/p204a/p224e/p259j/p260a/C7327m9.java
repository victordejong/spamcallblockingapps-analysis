package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.m9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/m9.class */
public final class C7327m9 extends AbstractC7112f<AbstractC7482z7> {
    public C7327m9() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC7446w7 m20792a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            IBinder a = m21057a(context).mo20448a(BinderC7110d.m21058a(context), BinderC7110d.m21058a(frameLayout), BinderC7110d.m21058a(frameLayout2), 13000000);
            if (a == null) {
                return null;
            }
            IInterface queryLocalInterface = a.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            return queryLocalInterface instanceof AbstractC7446w7 ? (AbstractC7446w7) queryLocalInterface : new C7470y7(a);
        } catch (RemoteException | AbstractC7112f.C7113a e) {
            C7452x1.m20569c("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7482z7 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
        return queryLocalInterface instanceof AbstractC7482z7 ? (AbstractC7482z7) queryLocalInterface : new C7172a8(iBinder);
    }
}
