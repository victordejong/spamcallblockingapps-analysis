package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import java.util.HashMap;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.n9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n9.class */
public final class C7339n9 extends AbstractC7112f<AbstractC7224e8> {
    public C7339n9() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    /* renamed from: a */
    public final AbstractC7185b8 m20782a(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        try {
            IBinder b = m21057a(view.getContext()).mo20929b(BinderC7110d.m21058a(view), BinderC7110d.m21058a(hashMap), BinderC7110d.m21058a(hashMap2));
            if (b == null) {
                return null;
            }
            IInterface queryLocalInterface = b.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return queryLocalInterface instanceof AbstractC7185b8 ? (AbstractC7185b8) queryLocalInterface : new C7211d8(b);
        } catch (RemoteException | AbstractC7112f.C7113a e) {
            C7452x1.m20569c("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7224e8 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return queryLocalInterface instanceof AbstractC7224e8 ? (AbstractC7224e8) queryLocalInterface : new C7237f8(iBinder);
    }
}
