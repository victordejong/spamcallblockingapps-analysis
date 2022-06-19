package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
import android.util.Log;
/* renamed from: androidx.browser.customtabs.g */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/g.class */
public final class C0463g {

    /* renamed from: a */
    final AbstractC0006a f1814a;

    /* renamed from: b */
    private final PendingIntent f1815b;

    /* renamed from: c */
    private final C0449b f1816c;

    public C0463g(AbstractC0006a abstractC0006a, PendingIntent pendingIntent) {
        if (abstractC0006a == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f1814a = abstractC0006a;
        this.f1815b = pendingIntent;
        this.f1816c = abstractC0006a == null ? null : new C0449b() { // from class: androidx.browser.customtabs.g.1
            @Override // androidx.browser.customtabs.C0449b
            /* renamed from: a */
            public final void mo45462a(int i, Uri uri, boolean z, Bundle bundle) {
                try {
                    C0463g.this.f1814a.mo45473a(i, uri, z, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.C0449b
            /* renamed from: a */
            public final void mo45461a(int i, Bundle bundle) {
                try {
                    C0463g.this.f1814a.mo45472a(i, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.C0449b
            /* renamed from: a */
            public final void mo45460a(Bundle bundle) {
                try {
                    C0463g.this.f1814a.mo45471a(bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.C0449b
            /* renamed from: a */
            public final void mo45459a(String str, Bundle bundle) {
                try {
                    C0463g.this.f1814a.mo45470a(str, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.C0449b
            /* renamed from: b */
            public final Bundle mo45458b(String str, Bundle bundle) {
                try {
                    return C0463g.this.f1814a.mo45468c(str, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                    return null;
                }
            }

            @Override // androidx.browser.customtabs.C0449b
            /* renamed from: c */
            public final void mo45457c(String str, Bundle bundle) {
                try {
                    C0463g.this.f1814a.mo45469b(str, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }
        };
    }

    /* renamed from: a */
    private IBinder m45463a() {
        AbstractC0006a abstractC0006a = this.f1814a;
        if (abstractC0006a != null) {
            return abstractC0006a.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0463g)) {
            return false;
        }
        C0463g c0463g = (C0463g) obj;
        PendingIntent pendingIntent = c0463g.f1815b;
        PendingIntent pendingIntent2 = this.f1815b;
        boolean z = true;
        boolean z2 = pendingIntent2 == null;
        if (pendingIntent != null) {
            z = false;
        }
        if (z2 != z) {
            return false;
        }
        return pendingIntent2 != null ? pendingIntent2.equals(pendingIntent) : m45463a().equals(c0463g.m45463a());
    }

    public final int hashCode() {
        PendingIntent pendingIntent = this.f1815b;
        return pendingIntent != null ? pendingIntent.hashCode() : m45463a().hashCode();
    }
}
