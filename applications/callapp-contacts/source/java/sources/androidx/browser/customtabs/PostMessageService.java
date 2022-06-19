package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
import android.support.p006a.AbstractC0017c;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/PostMessageService.class */
public class PostMessageService extends Service {

    /* renamed from: a */
    private AbstractC0017c.AbstractBinderC0018a f1763a = new AbstractC0017c.AbstractBinderC0018a() { // from class: androidx.browser.customtabs.PostMessageService.1
        @Override // android.support.p006a.AbstractC0017c
        /* renamed from: a */
        public final void mo45480a(AbstractC0006a abstractC0006a, Bundle bundle) throws RemoteException {
            abstractC0006a.mo45471a(bundle);
        }

        @Override // android.support.p006a.AbstractC0017c
        /* renamed from: a */
        public final void mo45479a(AbstractC0006a abstractC0006a, String str, Bundle bundle) throws RemoteException {
            abstractC0006a.mo45469b(str, bundle);
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1763a;
    }
}
