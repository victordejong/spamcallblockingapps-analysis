package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.a.a;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    final a f1245a;

    /* renamed from: b  reason: collision with root package name */
    private final PendingIntent f1246b;

    /* renamed from: c  reason: collision with root package name */
    private final b f1247c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(a aVar, PendingIntent pendingIntent) {
        if (aVar == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f1245a = aVar;
        this.f1246b = pendingIntent;
        this.f1247c = aVar == null ? null : new b() { // from class: androidx.browser.customtabs.g.1
            @Override // androidx.browser.customtabs.b
            public final void a(int i, Uri uri, boolean z, Bundle bundle) {
                try {
                    g.this.f1245a.a(i, uri, z, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.b
            public final void a(int i, Bundle bundle) {
                try {
                    g.this.f1245a.a(i, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.b
            public final void a(Bundle bundle) {
                try {
                    g.this.f1245a.a(bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.b
            public final void a(String str, Bundle bundle) {
                try {
                    g.this.f1245a.a(str, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }

            @Override // androidx.browser.customtabs.b
            public final Bundle b(String str, Bundle bundle) {
                try {
                    return g.this.f1245a.c(str, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                    return null;
                }
            }

            @Override // androidx.browser.customtabs.b
            public final void c(String str, Bundle bundle) {
                try {
                    g.this.f1245a.b(str, bundle);
                } catch (RemoteException e) {
                    Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                }
            }
        };
    }

    private IBinder a() {
        a aVar = this.f1245a;
        if (aVar != null) {
            return aVar.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        PendingIntent pendingIntent = gVar.f1246b;
        PendingIntent pendingIntent2 = this.f1246b;
        boolean z = true;
        boolean z2 = pendingIntent2 == null;
        if (pendingIntent != null) {
            z = false;
        }
        if (z2 != z) {
            return false;
        }
        return pendingIntent2 != null ? pendingIntent2.equals(pendingIntent) : a().equals(gVar.a());
    }

    public final int hashCode() {
        PendingIntent pendingIntent = this.f1246b;
        return pendingIntent != null ? pendingIntent.hashCode() : a().hashCode();
    }
}
