package p193e.p194a.p195a.p279r0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC5945d0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7289w;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p231g.AbstractC6116g0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6493u;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.r0.f */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/f.class */
public final class C7213f {

    /* renamed from: a */
    public final C7239l f23108a;

    /* renamed from: b */
    public final AbstractC15539j2 f23109b;

    /* renamed from: c */
    public final C7213f f23110c = this;

    /* renamed from: d */
    public Provider<AbstractC7240m> f23111d;

    /* renamed from: e.a.a.r0.f$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/r0/f$b.class */
    public static final class C7215b<T> implements Provider<T> {

        /* renamed from: a */
        public final C7213f f23112a;

        public C7215b(C7213f c7213f, int i) {
            this.f23112a = c7213f;
        }

        public T get() {
            C7213f c7213f = this.f23112a;
            C7239l c7239l = c7213f.f23108a;
            AbstractC14965w mo12182u6 = c7213f.f23109b.mo12182u6();
            Objects.requireNonNull(mo12182u6, "Cannot return null from a non-@Nullable component method");
            AbstractC19230g mo12512W = c7213f.f23109b.mo12512W();
            Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
            AbstractC19462a mo12776C4 = c7213f.f23109b.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            AbstractC6116g0 mo12214s2 = c7213f.f23109b.mo12214s2();
            Objects.requireNonNull(mo12214s2, "Cannot return null from a non-@Nullable component method");
            AbstractC10060c mo12282n = c7213f.f23109b.mo12282n();
            Objects.requireNonNull(mo12282n, "Cannot return null from a non-@Nullable component method");
            AbstractC17405c mo12289m6 = c7213f.f23109b.mo12289m6();
            Objects.requireNonNull(mo12289m6, "Cannot return null from a non-@Nullable component method");
            AbstractC9691j mo12578R0 = c7213f.f23109b.mo12578R0();
            Objects.requireNonNull(mo12578R0, "Cannot return null from a non-@Nullable component method");
            f mo12378g = c7213f.f23109b.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S = c7213f.f23109b.mo12565S();
            Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
            AbstractC6493u mo12358h5 = c7213f.f23109b.mo12358h5();
            Objects.requireNonNull(mo12358h5, "Cannot return null from a non-@Nullable component method");
            AbstractC6005m mo12507W4 = c7213f.f23109b.mo12507W4();
            Objects.requireNonNull(mo12507W4, "Cannot return null from a non-@Nullable component method");
            AbstractC7289w mo12316k5 = c7213f.f23109b.mo12316k5();
            Objects.requireNonNull(mo12316k5, "Cannot return null from a non-@Nullable component method");
            AbstractC10028o mo12615O4 = c7213f.f23109b.mo12615O4();
            Objects.requireNonNull(mo12615O4, "Cannot return null from a non-@Nullable component method");
            boolean mo12263o5 = c7213f.f23109b.mo12263o5();
            AbstractC5945d0 mo12653L6 = c7213f.f23109b.mo12653L6();
            Objects.requireNonNull(mo12653L6, "Cannot return null from a non-@Nullable component method");
            Objects.requireNonNull(c7239l);
            l.e(mo12182u6, "permissionUtil");
            l.e(mo12512W, "deviceInfoUtil");
            l.e(mo12776C4, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            l.e(mo12214s2, "unreadThreadsCounter");
            l.e(mo12282n, "insightsAnalyticsManager");
            l.e(mo12289m6, "availabilityManager");
            l.e(mo12578R0, "insightsStatusProvider");
            l.e(mo12378g, "uiContext");
            l.e(mo12565S, "messageSettings");
            l.e(mo12358h5, "reportHelper");
            l.e(mo12507W4, "inboxCleaner");
            l.e(mo12316k5, "inboxTabsProvider");
            l.e(mo12615O4, "insightConfig");
            l.e(mo12653L6, "helper");
            return (T) new C7242o(mo12182u6, mo12512W, mo12776C4, mo12214s2, mo12289m6, mo12282n, mo12578R0, mo12378g, mo12565S, mo12358h5, mo12507W4, mo12316k5, mo12615O4, mo12263o5, mo12653L6);
        }
    }

    public C7213f(C7239l c7239l, AbstractC15539j2 abstractC15539j2, C7214a c7214a) {
        this.f23108a = c7239l;
        this.f23109b = abstractC15539j2;
        Provider c7215b = new C7215b(this, 0);
        Object obj = b.c;
        this.f23111d = !(c7215b instanceof b) ? new b(c7215b) : c7215b;
    }
}
