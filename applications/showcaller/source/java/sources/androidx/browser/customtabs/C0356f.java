package androidx.browser.customtabs;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import p000a.p001a.p002a.AbstractC0000a;
/* renamed from: androidx.browser.customtabs.f */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/f.class */
public class C0356f {

    /* renamed from: a */
    final AbstractC0000a f1482a;

    /* renamed from: b */
    private final C0343a f1483b = new C0357a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.customtabs.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/f$a.class */
    public class C0357a extends C0343a {
        C0357a() {
            C0356f.this = r4;
        }

        @Override // androidx.browser.customtabs.C0343a
        /* renamed from: a */
        public void mo34649a(String str, Bundle bundle) {
            try {
                C0356f.this.f1482a.mo34655o4(str, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.C0343a
        /* renamed from: b */
        public void mo34648b(Bundle bundle) {
            try {
                C0356f.this.f1482a.mo34658V5(bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.C0343a
        /* renamed from: c */
        public void mo34647c(int i, Bundle bundle) {
            try {
                C0356f.this.f1482a.mo34657X4(i, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.C0343a
        /* renamed from: d */
        public void mo34646d(String str, Bundle bundle) {
            try {
                C0356f.this.f1482a.mo34659L5(str, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override // androidx.browser.customtabs.C0343a
        /* renamed from: e */
        public void mo34645e(int i, Uri uri, boolean z, Bundle bundle) {
            try {
                C0356f.this.f1482a.mo34656f6(i, uri, z, bundle);
            } catch (RemoteException e) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }
    }

    public C0356f(AbstractC0000a abstractC0000a) {
        this.f1482a = abstractC0000a;
    }

    /* renamed from: a */
    public IBinder m34650a() {
        return this.f1482a.asBinder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0356f)) {
            return false;
        }
        return ((C0356f) obj).m34650a().equals(this.f1482a.asBinder());
    }

    public int hashCode() {
        return m34650a().hashCode();
    }
}
