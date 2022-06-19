package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import p000a.p001a.p002a.AbstractC0000a;
import p000a.p001a.p002a.AbstractC0003b;
import p020b.p036e.C1489a;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {

    /* renamed from: d */
    final Map<IBinder, IBinder.DeathRecipient> f1442d = new C1489a();

    /* renamed from: e */
    private AbstractC0003b.AbstractBinderC0004a f1443e = new BinderC0340a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.browser.customtabs.CustomTabsService$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$a.class */
    public class BinderC0340a extends AbstractC0003b.AbstractBinderC0004a {

        /* renamed from: androidx.browser.customtabs.CustomTabsService$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$a$a.class */
        class C0341a implements IBinder.DeathRecipient {

            /* renamed from: a */
            final /* synthetic */ C0356f f1445a;

            C0341a(C0356f c0356f) {
                BinderC0340a.this = r4;
                this.f1445a = c0356f;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                CustomTabsService.this.m34681a(this.f1445a);
            }
        }

        BinderC0340a() {
            CustomTabsService.this = r4;
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: P4 */
        public boolean mo34672P4(AbstractC0000a abstractC0000a, Bundle bundle) {
            return CustomTabsService.this.m34675g(new C0356f(abstractC0000a), bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: R2 */
        public boolean mo34671R2(long j) {
            return CustomTabsService.this.m34673i(j);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: R3 */
        public int mo34670R3(AbstractC0000a abstractC0000a, String str, Bundle bundle) {
            return CustomTabsService.this.m34677e(new C0356f(abstractC0000a), str, bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: c4 */
        public boolean mo34669c4(AbstractC0000a abstractC0000a) {
            C0356f c0356f = new C0356f(abstractC0000a);
            try {
                C0341a c0341a = new C0341a(c0356f);
                synchronized (CustomTabsService.this.f1442d) {
                    abstractC0000a.asBinder().linkToDeath(c0341a, 0);
                    CustomTabsService.this.f1442d.put(abstractC0000a.asBinder(), c0341a);
                }
                return CustomTabsService.this.m34678d(c0356f);
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: h1 */
        public boolean mo34668h1(AbstractC0000a abstractC0000a, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.m34679c(new C0356f(abstractC0000a), uri, bundle, list);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: n2 */
        public Bundle mo34667n2(String str, Bundle bundle) {
            return CustomTabsService.this.m34680b(str, bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: o1 */
        public boolean mo34666o1(AbstractC0000a abstractC0000a, int i, Uri uri, Bundle bundle) {
            return CustomTabsService.this.m34674h(new C0356f(abstractC0000a), i, uri, bundle);
        }

        @Override // p000a.p001a.p002a.AbstractC0003b
        /* renamed from: o5 */
        public boolean mo34665o5(AbstractC0000a abstractC0000a, Uri uri) {
            return CustomTabsService.this.m34676f(new C0356f(abstractC0000a), uri);
        }
    }

    /* renamed from: a */
    protected boolean m34681a(C0356f c0356f) {
        try {
            synchronized (this.f1442d) {
                IBinder m34650a = c0356f.m34650a();
                m34650a.unlinkToDeath(this.f1442d.get(m34650a), 0);
                this.f1442d.remove(m34650a);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    /* renamed from: b */
    protected abstract Bundle m34680b(String str, Bundle bundle);

    /* renamed from: c */
    protected abstract boolean m34679c(C0356f c0356f, Uri uri, Bundle bundle, List<Bundle> list);

    /* renamed from: d */
    protected abstract boolean m34678d(C0356f c0356f);

    /* renamed from: e */
    protected abstract int m34677e(C0356f c0356f, String str, Bundle bundle);

    /* renamed from: f */
    protected abstract boolean m34676f(C0356f c0356f, Uri uri);

    /* renamed from: g */
    protected abstract boolean m34675g(C0356f c0356f, Bundle bundle);

    /* renamed from: h */
    protected abstract boolean m34674h(C0356f c0356f, int i, Uri uri, Bundle bundle);

    /* renamed from: i */
    protected abstract boolean m34673i(long j);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1443e;
    }
}
