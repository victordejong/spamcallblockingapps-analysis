package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.p006a.AbstractC0006a;
import android.support.p006a.AbstractC0014b;
import androidx.browser.customtabs.CustomTabsService;
import androidx.p023b.C0441g;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: a */
    final C0441g<IBinder, IBinder.DeathRecipient> f1760a = new C0441g<>();

    /* renamed from: b */
    private AbstractC0014b.AbstractBinderC0015a f1761b = new BinderC04451();

    /* renamed from: androidx.browser.customtabs.CustomTabsService$1 */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$1.class */
    public final class BinderC04451 extends AbstractC0014b.AbstractBinderC0015a {
        BinderC04451() {
            CustomTabsService.this = r4;
        }

        /* renamed from: a */
        private static PendingIntent m45493a(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        /* renamed from: a */
        public /* synthetic */ void m45483a(C0463g c0463g) {
            CustomTabsService.this.m45503a(c0463g);
        }

        /* renamed from: a */
        private boolean m45490a(AbstractC0006a abstractC0006a, PendingIntent pendingIntent) {
            final C0463g c0463g = new C0463g(abstractC0006a, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs._$$Lambda$CustomTabsService$1$izgZIslYP02xXHWNq14Gz5pxyaI
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        CustomTabsService.BinderC04451.this.m45483a(c0463g);
                    }
                };
                synchronized (CustomTabsService.this.f1760a) {
                    abstractC0006a.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.f1760a.put(abstractC0006a.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.m45502b();
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final int mo45484a(AbstractC0006a abstractC0006a, String str, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, m45493a(bundle));
            return customTabsService.m45497g();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final Bundle mo45482a(String str, Bundle bundle) {
            return CustomTabsService.this.m45500d();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45494a(long j) {
            return CustomTabsService.this.m45504a();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45492a(AbstractC0006a abstractC0006a) {
            return m45490a(abstractC0006a, (PendingIntent) null);
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45491a(AbstractC0006a abstractC0006a, int i, Uri uri, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, m45493a(bundle));
            return customTabsService.m45496h();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45489a(AbstractC0006a abstractC0006a, Uri uri) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, null);
            return customTabsService.m45498f();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45488a(AbstractC0006a abstractC0006a, Uri uri, int i, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, m45493a(bundle));
            return customTabsService.m45495i();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45487a(AbstractC0006a abstractC0006a, Uri uri, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, m45493a(bundle));
            return customTabsService.m45498f();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45486a(AbstractC0006a abstractC0006a, Uri uri, Bundle bundle, List<Bundle> list) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, m45493a(bundle));
            return customTabsService.m45501c();
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: a */
        public final boolean mo45485a(AbstractC0006a abstractC0006a, Bundle bundle) {
            return m45490a(abstractC0006a, m45493a(bundle));
        }

        @Override // android.support.p006a.AbstractC0014b
        /* renamed from: b */
        public final boolean mo45481b(AbstractC0006a abstractC0006a, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new C0463g(abstractC0006a, m45493a(bundle));
            return customTabsService.m45499e();
        }
    }

    /* renamed from: a */
    protected abstract boolean m45504a();

    /* renamed from: a */
    protected final boolean m45503a(C0463g c0463g) {
        try {
            synchronized (this.f1760a) {
                IBinder asBinder = c0463g.f1814a == null ? null : c0463g.f1814a.asBinder();
                if (asBinder == null) {
                    return false;
                }
                asBinder.unlinkToDeath(this.f1760a.get(asBinder), 0);
                this.f1760a.remove(asBinder);
                return true;
            }
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    /* renamed from: b */
    protected abstract boolean m45502b();

    /* renamed from: c */
    protected abstract boolean m45501c();

    /* renamed from: d */
    protected abstract Bundle m45500d();

    /* renamed from: e */
    protected abstract boolean m45499e();

    /* renamed from: f */
    protected abstract boolean m45498f();

    /* renamed from: g */
    protected abstract int m45497g();

    /* renamed from: h */
    protected abstract boolean m45496h();

    /* renamed from: i */
    protected abstract boolean m45495i();
}
