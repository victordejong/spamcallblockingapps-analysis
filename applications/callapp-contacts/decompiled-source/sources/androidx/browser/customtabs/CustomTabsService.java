package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.a.a;
import android.support.a.b;
import androidx.b.g;
import androidx.browser.customtabs.CustomTabsService;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: a  reason: collision with root package name */
    final g<IBinder, IBinder.DeathRecipient> f1198a = new g<>();

    /* renamed from: b  reason: collision with root package name */
    private b.a f1199b = new AnonymousClass1();

    /* renamed from: androidx.browser.customtabs.CustomTabsService$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$1.class */
    final class AnonymousClass1 extends b.a {
        AnonymousClass1() {
        }

        private static PendingIntent a(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(g gVar) {
            CustomTabsService.this.a(gVar);
        }

        private boolean a(a aVar, PendingIntent pendingIntent) {
            final g gVar = new g(aVar, pendingIntent);
            try {
                IBinder.DeathRecipient ___lambda_customtabsservice_1_izgzislyp02xxhwnq14gz5pxyai = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs._$$Lambda$CustomTabsService$1$izgZIslYP02xXHWNq14Gz5pxyaI
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        CustomTabsService.AnonymousClass1.this.a(gVar);
                    }
                };
                synchronized (CustomTabsService.this.f1198a) {
                    aVar.asBinder().linkToDeath(___lambda_customtabsservice_1_izgzislyp02xxhwnq14gz5pxyai, 0);
                    CustomTabsService.this.f1198a.put(aVar.asBinder(), ___lambda_customtabsservice_1_izgzislyp02xxhwnq14gz5pxyai);
                }
                return CustomTabsService.this.b();
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // android.support.a.b
        public final int a(a aVar, String str, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, a(bundle));
            return customTabsService.g();
        }

        @Override // android.support.a.b
        public final Bundle a(String str, Bundle bundle) {
            return CustomTabsService.this.d();
        }

        @Override // android.support.a.b
        public final boolean a(long j) {
            return CustomTabsService.this.a();
        }

        @Override // android.support.a.b
        public final boolean a(a aVar) {
            return a(aVar, (PendingIntent) null);
        }

        @Override // android.support.a.b
        public final boolean a(a aVar, int i, Uri uri, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, a(bundle));
            return customTabsService.h();
        }

        @Override // android.support.a.b
        public final boolean a(a aVar, Uri uri) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, null);
            return customTabsService.f();
        }

        @Override // android.support.a.b
        public final boolean a(a aVar, Uri uri, int i, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, a(bundle));
            return customTabsService.i();
        }

        @Override // android.support.a.b
        public final boolean a(a aVar, Uri uri, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, a(bundle));
            return customTabsService.f();
        }

        @Override // android.support.a.b
        public final boolean a(a aVar, Uri uri, Bundle bundle, List<Bundle> list) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, a(bundle));
            return customTabsService.c();
        }

        @Override // android.support.a.b
        public final boolean a(a aVar, Bundle bundle) {
            return a(aVar, a(bundle));
        }

        @Override // android.support.a.b
        public final boolean b(a aVar, Bundle bundle) {
            CustomTabsService customTabsService = CustomTabsService.this;
            new g(aVar, a(bundle));
            return customTabsService.e();
        }
    }

    protected abstract boolean a();

    protected final boolean a(g gVar) {
        try {
            synchronized (this.f1198a) {
                IBinder asBinder = gVar.f1245a == null ? null : gVar.f1245a.asBinder();
                if (asBinder == null) {
                    return false;
                }
                asBinder.unlinkToDeath(this.f1198a.get(asBinder), 0);
                this.f1198a.remove(asBinder);
                return true;
            }
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    protected abstract boolean b();

    protected abstract boolean c();

    protected abstract Bundle d();

    protected abstract boolean e();

    protected abstract boolean f();

    protected abstract int g();

    protected abstract boolean h();

    protected abstract boolean i();
}
