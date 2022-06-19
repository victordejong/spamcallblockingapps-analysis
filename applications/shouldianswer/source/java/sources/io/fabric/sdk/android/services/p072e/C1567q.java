package io.fabric.sdk.android.services.p072e;

import android.content.Context;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.p068b.C1478g;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1494p;
import io.fabric.sdk.android.services.p068b.C1504t;
import io.fabric.sdk.android.services.p068b.EnumC1487l;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: io.fabric.sdk.android.services.e.q */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/q.class */
public class C1567q {

    /* renamed from: a */
    private final AtomicReference<C1572t> f4271a;

    /* renamed from: b */
    private final CountDownLatch f4272b;

    /* renamed from: c */
    private AbstractC1571s f4273c;

    /* renamed from: d */
    private boolean f4274d;

    /* renamed from: io.fabric.sdk.android.services.e.q$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/e/q$a.class */
    public static class C1569a {

        /* renamed from: a */
        private static final C1567q f4275a = new C1567q();
    }

    private C1567q() {
        this.f4271a = new AtomicReference<>();
        this.f4272b = new CountDownLatch(1);
        this.f4274d = false;
    }

    /* renamed from: a */
    public static C1567q m3307a() {
        return C1569a.f4275a;
    }

    /* renamed from: a */
    private void m3305a(C1572t c1572t) {
        this.f4271a.set(c1572t);
        this.f4272b.countDown();
    }

    /* renamed from: a */
    public C1567q m3306a(AbstractC1459h abstractC1459h, C1494p c1494p, AbstractC1588d abstractC1588d, String str, String str2, String str3) {
        synchronized (this) {
            if (this.f4274d) {
                return this;
            }
            if (this.f4273c == null) {
                Context context = abstractC1459h.getContext();
                String m3440c = c1494p.m3440c();
                String m3512a = new C1478g().m3512a(context);
                String m3434i = c1494p.m3434i();
                this.f4273c = new C1560j(abstractC1459h, new C1575w(m3512a, c1494p.m3436g(), c1494p.m3437f(), c1494p.m3438e(), c1494p.m3443b(), C1480i.m3485a(C1480i.m3464m(context)), str2, str, EnumC1487l.m3457a(m3434i).m3458a(), C1480i.m3466k(context)), new C1504t(), new C1561k(), new C1559i(abstractC1459h), new C1562l(abstractC1459h, str3, String.format(Locale.US, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings", m3440c), abstractC1588d));
            }
            this.f4274d = true;
            return this;
        }
    }

    /* renamed from: b */
    public C1572t m3304b() {
        try {
            this.f4272b.await();
            return this.f4271a.get();
        } catch (InterruptedException e) {
            C1449c.m3572g().mo3546e("Fabric", "Interrupted while waiting for settings data.");
            return null;
        }
    }

    /* renamed from: c */
    public boolean m3303c() {
        boolean z;
        synchronized (this) {
            C1572t mo3300a = this.f4273c.mo3300a();
            m3305a(mo3300a);
            z = mo3300a != null;
        }
        return z;
    }

    /* renamed from: d */
    public boolean m3302d() {
        boolean z;
        synchronized (this) {
            C1572t mo3299a = this.f4273c.mo3299a(EnumC1570r.SKIP_CACHE_LOOKUP);
            m3305a(mo3299a);
            if (mo3299a == null) {
                C1449c.m3572g().mo3545e("Fabric", "Failed to force reload of settings from Crashlytics.", null);
            }
            z = mo3299a != null;
        }
        return z;
    }
}
