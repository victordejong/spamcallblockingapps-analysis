package p193e.p194a.p195a.p200c.p206i;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.C5389j;
import p193e.p194a.p195a.p200c.C5445k6;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p712e4.AbstractC13477b0;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.z.c.l;
/* renamed from: e.a.a.c.i.n */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/n.class */
public final class C5367n {

    /* renamed from: a */
    public final C5351c f18340a;

    /* renamed from: b */
    public final AbstractC15539j2 f18341b;

    /* renamed from: c */
    public final C5367n f18342c = this;

    /* renamed from: d */
    public Provider<C5354e> f18343d;

    /* renamed from: e */
    public Provider<AbstractC5352d> f18344e;

    /* renamed from: f */
    public Provider<C6395c> f18345f;

    /* renamed from: g */
    public Provider<AbstractC6394b> f18346g;

    /* renamed from: h */
    public Provider<C5361k> f18347h;

    /* renamed from: i */
    public Provider<AbstractC5360j> f18348i;

    /* renamed from: j */
    public Provider<C5349b> f18349j;

    /* renamed from: k */
    public Provider<AbstractC5357g> f18350k;

    /* renamed from: e.a.a.c.i.n$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/n$b.class */
    public static final class C5369b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5367n f18351a;

        /* renamed from: b */
        public final int f18352b;

        public C5369b(C5367n c5367n, int i) {
            this.f18351a = c5367n;
            this.f18352b = i;
        }

        public T get() {
            int i = this.f18352b;
            if (i == 0) {
                C5367n c5367n = this.f18351a;
                Participant participant = c5367n.f18340a.f18303b;
                Objects.requireNonNull(participant, "Cannot return null from a non-@Nullable @Provides method");
                C5351c c5351c = c5367n.f18340a;
                long j = c5351c.f18304c;
                long j2 = c5351c.f18305d;
                boolean z = c5351c.f18306e;
                boolean z2 = c5351c.f18307f;
                FlashContact flashContact = c5351c.f18308g;
                AbstractC5352d abstractC5352d = (AbstractC5352d) c5367n.f18344e.get();
                AbstractC19854f<AbstractC17348c> mo12471Z0 = c5367n.f18341b.mo12471Z0();
                Objects.requireNonNull(mo12471Z0, "Cannot return null from a non-@Nullable component method");
                AbstractC19870l mo12119z1 = c5367n.f18341b.mo12119z1();
                Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
                AbstractC11476s1 mo12679J6 = c5367n.f18341b.mo12679J6();
                Objects.requireNonNull(mo12679J6, "Cannot return null from a non-@Nullable component method");
                C5351c c5351c2 = c5367n.f18340a;
                AbstractC19233h0 m25913p2 = C10480a.m25913p2(c5351c2);
                Context mo12335j = c5367n.f18341b.mo12335j();
                Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                AbstractC13497p mo11636l = c5367n.f18341b.mo11636l();
                Objects.requireNonNull(mo11636l, "Cannot return null from a non-@Nullable component method");
                AbstractC13477b0 mo12185u3 = c5367n.f18341b.mo12185u3();
                Objects.requireNonNull(mo12185u3, "Cannot return null from a non-@Nullable component method");
                AbstractC18951b0 mo12399e7 = c5367n.f18341b.mo12399e7();
                Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
                AbstractC6394b abstractC6394b = (AbstractC6394b) c5367n.f18346g.get();
                Objects.requireNonNull(c5351c2);
                l.e(m25913p2, "resourceProvider");
                l.e(mo12335j, AnalyticsConstants.CONTEXT);
                l.e(mo11636l, "multiSimManager");
                l.e(mo12185u3, "simInfoCache");
                l.e(mo12399e7, "dateHelper");
                l.e(abstractC6394b, "messageUtil");
                C5389j c5389j = new C5389j(m25913p2, mo12399e7, mo12185u3, mo11636l.mo21740h(), abstractC6394b, mo12335j);
                AbstractC19223c0 mo12349i = c5367n.f18341b.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                return (T) new C5361k(participant, j, j2, z, z2, flashContact, abstractC5352d, mo12471Z0, mo12119z1, mo12679J6, c5389j, mo12349i);
            } else if (i == 1) {
                return (T) new C5354e();
            } else {
                if (i == 2) {
                    C5367n c5367n2 = this.f18351a;
                    AbstractC19223c0 mo12349i2 = c5367n2.f18341b.mo12349i();
                    Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                    AbstractC6489q mo12466Z5 = c5367n2.f18341b.mo12466Z5();
                    Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                    AbstractC18951b0 mo12399e72 = c5367n2.f18341b.mo12399e7();
                    Objects.requireNonNull(mo12399e72, "Cannot return null from a non-@Nullable component method");
                    C20592g mo11648b = c5367n2.f18341b.mo11648b();
                    Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                    AbstractC14840m mo11655T = c5367n2.f18341b.mo11655T();
                    Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
                    AbstractC6392i0 mo12565S = c5367n2.f18341b.mo12565S();
                    Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                    AbstractC19222c mo11637k = c5367n2.f18341b.mo11637k();
                    Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                    return (T) new C6395c(mo12349i2, mo12466Z5, mo12399e72, mo11648b, mo11655T, mo12565S, mo11637k);
                } else if (i != 3) {
                    throw new AssertionError(this.f18352b);
                } else {
                    C5367n c5367n3 = this.f18351a;
                    AbstractC5352d abstractC5352d2 = (AbstractC5352d) c5367n3.f18344e.get();
                    AbstractC19854f<AbstractC17348c> mo12471Z02 = c5367n3.f18341b.mo12471Z0();
                    Objects.requireNonNull(mo12471Z02, "Cannot return null from a non-@Nullable component method");
                    AbstractC19233h0 m25913p22 = C10480a.m25913p2(c5367n3.f18340a);
                    AbstractC18951b0 mo12399e73 = c5367n3.f18341b.mo12399e7();
                    Objects.requireNonNull(mo12399e73, "Cannot return null from a non-@Nullable component method");
                    C5351c c5351c3 = c5367n3.f18340a;
                    AbstractC19233h0 m25913p23 = C10480a.m25913p2(c5351c3);
                    AbstractC13497p mo11636l2 = c5367n3.f18341b.mo11636l();
                    Objects.requireNonNull(mo11636l2, "Cannot return null from a non-@Nullable component method");
                    AbstractC13477b0 mo12185u32 = c5367n3.f18341b.mo12185u3();
                    Objects.requireNonNull(mo12185u32, "Cannot return null from a non-@Nullable component method");
                    Objects.requireNonNull(c5351c3);
                    l.e(m25913p23, "resourceProvider");
                    l.e(mo11636l2, "multiSimManager");
                    l.e(mo12185u32, "simInfoCache");
                    return (T) new C5349b(abstractC5352d2, mo12471Z02, m25913p22, mo12399e73, new C5445k6(m25913p23, mo11636l2.mo21740h(), mo12185u32), c5367n3.f18340a.f18307f);
                }
            }
        }
    }

    public C5367n(C5351c c5351c, AbstractC15539j2 abstractC15539j2, C5368a c5368a) {
        this.f18340a = c5351c;
        this.f18341b = abstractC15539j2;
        C5369b c5369b = new C5369b(this, 1);
        this.f18343d = c5369b;
        this.f18344e = b.b(c5369b);
        C5369b c5369b2 = new C5369b(this, 2);
        this.f18345f = c5369b2;
        this.f18346g = b.b(c5369b2);
        C5369b c5369b3 = new C5369b(this, 0);
        this.f18347h = c5369b3;
        this.f18348i = b.b(c5369b3);
        C5369b c5369b4 = new C5369b(this, 3);
        this.f18349j = c5369b4;
        this.f18350k = b.b(c5369b4);
    }
}
