package p081h.p203i.p204a.p224e.p226b;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p259j.p264e.AbstractBinderC7526n;
/* renamed from: h.i.a.e.b.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/k.class */
public final class C6774k implements AbstractC6775l<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f16651a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f16652b;

    public C6774k(String str, Bundle bundle) {
        this.f16651a = str;
        this.f16652b = bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p226b.AbstractC6775l
    /* renamed from: a */
    public final /* synthetic */ Void mo21933a(IBinder iBinder) throws RemoteException, IOException, C6710a {
        Bundle a = AbstractBinderC7526n.m20397a(iBinder).mo20395a(this.f16651a, this.f16652b);
        C6772i.m21936a(a);
        Bundle bundle = a;
        String string = bundle.getString("Error");
        if (bundle.getBoolean("booleanResult")) {
            return null;
        }
        throw new C6710a(string);
    }
}
