package p193e.p194a.p195a.p236h;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.network.search.BulkSearcherImpl;
import e.m.f.a.j;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p241i1.C6404g;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p751f4.p762g.C14008g;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14835j;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.h.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/b.class */
public final class C6281b {

    /* renamed from: a */
    public final C6287f f21059a;

    /* renamed from: b */
    public final AbstractC15539j2 f21060b;

    /* renamed from: c */
    public final C6281b f21061c = this;

    /* renamed from: d */
    public Provider<C6290i> f21062d;

    /* renamed from: e */
    public Provider<AbstractC6288g> f21063e;

    /* renamed from: f */
    public Provider<C6308p> f21064f;

    /* renamed from: g */
    public Provider<AbstractC6306n> f21065g;

    /* renamed from: e.a.a.h.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/b$b.class */
    public static final class C6283b<T> implements Provider<T> {

        /* renamed from: a */
        public final C6281b f21066a;

        /* renamed from: b */
        public final int f21067b;

        public C6283b(C6281b c6281b, int i) {
            this.f21066a = c6281b;
            this.f21067b = i;
        }

        public T get() {
            int i = this.f21067b;
            if (i == 0) {
                C6281b c6281b = this.f21066a;
                Conversation conversation = c6281b.f21059a.f21072a;
                Objects.requireNonNull(conversation, "Cannot return null from a non-@Nullable @Provides method");
                C6287f c6287f = c6281b.f21059a;
                AbstractC19870l mo12119z1 = c6281b.f21060b.mo12119z1();
                Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c6287f);
                l.e(mo12119z1, "actorsThreads");
                AbstractC19868j mo11845d = mo12119z1.mo11845d();
                l.d(mo11845d, "actorsThreads.ui()");
                AbstractC19854f<AbstractC6485m> mo12224r4 = c6281b.f21060b.mo12224r4();
                Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
                ContentResolver mo11652Z = c6281b.f21060b.mo11652Z();
                Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c6281b.f21059a);
                Uri m28338C = C8582g0.m28338C();
                l.d(m28338C, "ImGroupInfoTable.getContentUri()");
                AbstractC6489q mo12466Z5 = c6281b.f21060b.mo12466Z5();
                Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                AbstractC19462a mo12776C4 = c6281b.f21060b.mo12776C4();
                Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                AbstractC19854f<AbstractC19463a0> mo12217s = c6281b.f21060b.mo12217s();
                Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S = c6281b.f21060b.mo12565S();
                Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                AbstractC19223c0 mo12349i = c6281b.f21060b.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                AbstractC7004h mo12791B3 = c6281b.f21060b.mo12791B3();
                Objects.requireNonNull(mo12791B3, "Cannot return null from a non-@Nullable component method");
                f mo12378g = c6281b.f21060b.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                C20592g mo11648b = c6281b.f21060b.mo11648b();
                Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                ContentResolver mo11652Z2 = c6281b.f21060b.mo11652Z();
                Objects.requireNonNull(mo11652Z2, "Cannot return null from a non-@Nullable component method");
                AbstractC6115g mo12491X6 = c6281b.f21060b.mo12491X6();
                Objects.requireNonNull(mo12491X6, "Cannot return null from a non-@Nullable component method");
                return (T) new C6290i(conversation, mo11845d, mo12224r4, mo11652Z, m28338C, mo12466Z5, mo12776C4, mo12217s, mo12565S, mo12349i, mo12791B3, mo12378g, mo11648b, new C6286e(mo11652Z2, mo12491X6, new C19235i0(c6281b.f21059a.f21073b)));
            } else if (i != 1) {
                throw new AssertionError(this.f21067b);
            } else {
                C6281b c6281b2 = this.f21066a;
                AbstractC6304l abstractC6304l = (AbstractC6304l) c6281b2.f21063e.get();
                AbstractC19022f0 mo12377g0 = c6281b2.f21060b.mo12377g0();
                Objects.requireNonNull(mo12377g0, "Cannot return null from a non-@Nullable component method");
                AbstractC6305m abstractC6305m = (AbstractC6305m) c6281b2.f21063e.get();
                AbstractC6489q mo12466Z52 = c6281b2.f21060b.mo12466Z5();
                Objects.requireNonNull(mo12466Z52, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S2 = c6281b2.f21060b.mo12565S();
                Objects.requireNonNull(mo12565S2, "Cannot return null from a non-@Nullable component method");
                AbstractC8541a mo12420d = c6281b2.f21060b.mo12420d();
                Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
                AbstractC8438a mo12484Y = c6281b2.f21060b.mo12484Y();
                Objects.requireNonNull(mo12484Y, "Cannot return null from a non-@Nullable component method");
                AbstractC19223c0 mo12349i2 = c6281b2.f21060b.mo12349i();
                Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                C6287f c6287f2 = c6281b2.f21059a;
                Context mo12335j = c6281b2.f21060b.mo12335j();
                Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                AbstractC19854f<AbstractC19463a0> mo12217s2 = c6281b2.f21060b.mo12217s();
                Objects.requireNonNull(mo12217s2, "Cannot return null from a non-@Nullable component method");
                AbstractC14835j mo12670K2 = c6281b2.f21060b.mo12670K2();
                Objects.requireNonNull(mo12670K2, "Cannot return null from a non-@Nullable component method");
                AbstractC19462a mo12776C42 = c6281b2.f21060b.mo12776C4();
                Objects.requireNonNull(mo12776C42, "Cannot return null from a non-@Nullable component method");
                AbstractC19321u mo12725G1 = c6281b2.f21060b.mo12725G1();
                Objects.requireNonNull(mo12725G1, "Cannot return null from a non-@Nullable component method");
                AbstractC19222c mo11637k = c6281b2.f21060b.mo11637k();
                Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                AbstractC14537p mo12619O = c6281b2.f21060b.mo12619O();
                Objects.requireNonNull(mo12619O, "Cannot return null from a non-@Nullable component method");
                j mo12239q3 = c6281b2.f21060b.mo12239q3();
                Objects.requireNonNull(mo12239q3, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c6287f2);
                l.e(mo12335j, AnalyticsConstants.CONTEXT);
                l.e(mo12217s2, "eventsTracker");
                l.e(mo12670K2, "filterManager");
                l.e(mo12776C42, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                l.e(mo12725G1, "networkUtil");
                l.e(mo11637k, "clock");
                l.e(mo12619O, "tagDisplayUtil");
                l.e(mo12239q3, "phoneNumberUtil");
                C14008g c14008g = new C14008g("imGroupInfo", mo12335j, mo12217s2, mo12670K2, mo12776C42, mo12725G1, mo11637k, mo12619O, mo12239q3);
                C6287f c6287f3 = c6281b2.f21059a;
                Context mo12335j2 = c6281b2.f21060b.mo12335j();
                Objects.requireNonNull(mo12335j2, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c6287f3);
                l.e(mo12335j2, AnalyticsConstants.CONTEXT);
                BulkSearcherImpl bulkSearcherImpl = new BulkSearcherImpl(mo12335j2, 20, "imGroupInfo", null);
                AbstractC21204d mo12802A6 = c6281b2.f21060b.mo12802A6();
                Objects.requireNonNull(mo12802A6, "Cannot return null from a non-@Nullable component method");
                return (T) new C6308p(abstractC6304l, mo12377g0, abstractC6305m, mo12466Z52, mo12565S2, mo12420d, mo12484Y, mo12349i2, new C6404g(c14008g, bulkSearcherImpl, mo12802A6));
            }
        }
    }

    public C6281b(C6287f c6287f, AbstractC15539j2 abstractC15539j2, C6282a c6282a) {
        this.f21059a = c6287f;
        this.f21060b = abstractC15539j2;
        C6283b c6283b = new C6283b(this, 0);
        this.f21062d = c6283b;
        this.f21063e = b.b(c6283b);
        C6283b c6283b2 = new C6283b(this, 1);
        this.f21064f = c6283b2;
        this.f21065g = b.b(c6283b2);
    }
}
