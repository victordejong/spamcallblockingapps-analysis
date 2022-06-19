package p193e.p194a.p195a.p269n.p270j;

import android.content.ContentResolver;
import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.mediamanager.AttachmentType;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.C5678q5;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5733j;
import p193e.p194a.p195a.p200c.p222s8.C5731h;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p233k0.C6161b;
import p193e.p194a.p195a.p241i1.AbstractC6397d;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p195a.p269n.C6997c;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/d.class */
public final class C7010d {

    /* renamed from: a */
    public final AbstractC15539j2 f22633a;

    /* renamed from: b */
    public final C7031l f22634b;

    /* renamed from: c */
    public final C7010d f22635c = this;

    /* renamed from: d */
    public Provider<AbstractC5733j> f22636d;

    /* renamed from: e */
    public Provider<C7041v> f22637e;

    /* renamed from: f */
    public Provider<AbstractC7038s> f22638f;

    /* renamed from: g */
    public Provider<C7017i> f22639g;

    /* renamed from: h */
    public Provider<Object> f22640h;

    /* renamed from: i */
    public Provider<C7013e> f22641i;

    /* renamed from: j */
    public Provider<Object> f22642j;

    /* renamed from: k */
    public Provider<C7007a> f22643k;

    /* renamed from: l */
    public Provider<Object> f22644l;

    /* renamed from: m */
    public Provider<C7015g> f22645m;

    /* renamed from: n */
    public Provider<Object> f22646n;

    /* renamed from: e.a.a.n.j.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/j/d$b.class */
    public static final class C7012b<T> implements Provider<T> {

        /* renamed from: a */
        public final C7010d f22647a;

        /* renamed from: b */
        public final int f22648b;

        public C7012b(C7010d c7010d, int i) {
            this.f22647a = c7010d;
            this.f22648b = i;
        }

        public T get() {
            int i = this.f22648b;
            if (i == 0) {
                C7010d c7010d = this.f22647a;
                f mo12378g = c7010d.f22633a.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                Conversation conversation = c7010d.f22634b.f22701a;
                Objects.requireNonNull(conversation, "Cannot return null from a non-@Nullable @Provides method");
                AttachmentType attachmentType = c7010d.f22634b.f22702b;
                Objects.requireNonNull(attachmentType, "Cannot return null from a non-@Nullable @Provides method");
                boolean z = c7010d.f22634b.f22703c;
                ContentResolver mo11652Z = c7010d.f22633a.mo11652Z();
                Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
                AbstractC5733j abstractC5733j = (AbstractC5733j) c7010d.f22636d.get();
                AbstractC19854f<AbstractC6233m> mo12453a7 = c7010d.f22633a.mo12453a7();
                Objects.requireNonNull(mo12453a7, "Cannot return null from a non-@Nullable component method");
                AbstractC6397d mo12362h1 = c7010d.f22633a.mo12362h1();
                Objects.requireNonNull(mo12362h1, "Cannot return null from a non-@Nullable component method");
                AbstractC7004h mo12791B3 = c7010d.f22633a.mo12791B3();
                Objects.requireNonNull(mo12791B3, "Cannot return null from a non-@Nullable component method");
                Context mo12335j = c7010d.f22633a.mo12335j();
                Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
                f mo12315k6 = c7010d.f22633a.mo12315k6();
                Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
                C5678q5 c5678q5 = new C5678q5(mo12335j, mo12315k6);
                AbstractC8571b mo12317k4 = c7010d.f22633a.mo12317k4();
                Objects.requireNonNull(mo12317k4, "Cannot return null from a non-@Nullable component method");
                C6161b c6161b = new C6161b(mo12317k4);
                AbstractC19462a mo12776C4 = c7010d.f22633a.mo12776C4();
                Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
                AbstractC19510i0 mo12264o4 = c7010d.f22633a.mo12264o4();
                Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
                C6997c c6997c = new C6997c(mo12776C4, mo12264o4);
                AbstractC19222c mo11637k = c7010d.f22633a.mo11637k();
                Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S = c7010d.f22633a.mo12565S();
                Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
                return (T) new C7041v(mo12378g, conversation, attachmentType, z, mo11652Z, abstractC5733j, mo12453a7, mo12362h1, mo12791B3, c5678q5, c6161b, c6997c, mo11637k, mo12565S);
            } else if (i == 1) {
                C7010d c7010d2 = this.f22647a;
                C7031l c7031l = c7010d2.f22634b;
                Context mo12335j2 = c7010d2.f22633a.mo12335j();
                Objects.requireNonNull(mo12335j2, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c7031l);
                l.e(mo12335j2, AnalyticsConstants.CONTEXT);
                return (T) new C5731h(mo12335j2);
            } else if (i == 2) {
                C7010d c7010d3 = this.f22647a;
                AbstractC7037r abstractC7037r = (AbstractC7037r) c7010d3.f22638f.get();
                AbstractC7034o abstractC7034o = (AbstractC7034o) c7010d3.f22638f.get();
                AbstractC18951b0 mo12399e7 = c7010d3.f22633a.mo12399e7();
                Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
                AbstractC7107p mo12216s0 = c7010d3.f22633a.mo12216s0();
                Objects.requireNonNull(mo12216s0, "Cannot return null from a non-@Nullable component method");
                return (T) new C7017i(abstractC7037r, abstractC7034o, mo12399e7, mo12216s0);
            } else if (i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        throw new AssertionError(this.f22648b);
                    }
                    C7010d c7010d4 = this.f22647a;
                    AbstractC7037r abstractC7037r2 = (AbstractC7037r) c7010d4.f22638f.get();
                    AbstractC7034o abstractC7034o2 = (AbstractC7034o) c7010d4.f22638f.get();
                    AbstractC19223c0 mo12349i = c7010d4.f22633a.mo12349i();
                    Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                    return (T) new C7015g(abstractC7037r2, abstractC7034o2, mo12349i);
                }
                C7010d c7010d5 = this.f22647a;
                AbstractC7037r abstractC7037r3 = (AbstractC7037r) c7010d5.f22638f.get();
                AbstractC7034o abstractC7034o3 = (AbstractC7034o) c7010d5.f22638f.get();
                AbstractC18951b0 mo12399e72 = c7010d5.f22633a.mo12399e7();
                Objects.requireNonNull(mo12399e72, "Cannot return null from a non-@Nullable component method");
                AbstractC8541a mo12420d = c7010d5.f22633a.mo12420d();
                Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
                AbstractC7107p mo12216s02 = c7010d5.f22633a.mo12216s0();
                Objects.requireNonNull(mo12216s02, "Cannot return null from a non-@Nullable component method");
                return (T) new C7007a(abstractC7037r3, abstractC7034o3, mo12399e72, mo12420d, mo12216s02);
            } else {
                C7010d c7010d6 = this.f22647a;
                AbstractC7037r abstractC7037r4 = (AbstractC7037r) c7010d6.f22638f.get();
                AbstractC7034o abstractC7034o4 = (AbstractC7034o) c7010d6.f22638f.get();
                AbstractC18951b0 mo12399e73 = c7010d6.f22633a.mo12399e7();
                Objects.requireNonNull(mo12399e73, "Cannot return null from a non-@Nullable component method");
                AbstractC19223c0 mo12349i2 = c7010d6.f22633a.mo12349i();
                Objects.requireNonNull(mo12349i2, "Cannot return null from a non-@Nullable component method");
                AbstractC6489q mo12466Z5 = c7010d6.f22633a.mo12466Z5();
                Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
                AbstractC18951b0 mo12399e74 = c7010d6.f22633a.mo12399e7();
                Objects.requireNonNull(mo12399e74, "Cannot return null from a non-@Nullable component method");
                C20592g mo11648b = c7010d6.f22633a.mo11648b();
                Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                AbstractC14840m mo11655T = c7010d6.f22633a.mo11655T();
                Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
                AbstractC6392i0 mo12565S2 = c7010d6.f22633a.mo12565S();
                Objects.requireNonNull(mo12565S2, "Cannot return null from a non-@Nullable component method");
                AbstractC19222c mo11637k2 = c7010d6.f22633a.mo11637k();
                Objects.requireNonNull(mo11637k2, "Cannot return null from a non-@Nullable component method");
                C6395c c6395c = new C6395c(mo12349i2, mo12466Z5, mo12399e74, mo11648b, mo11655T, mo12565S2, mo11637k2);
                C7031l c7031l2 = c7010d6.f22634b;
                Context mo12335j3 = c7010d6.f22633a.mo12335j();
                Objects.requireNonNull(mo12335j3, "Cannot return null from a non-@Nullable component method");
                Objects.requireNonNull(c7031l2);
                l.e(mo12335j3, AnalyticsConstants.CONTEXT);
                C19235i0 c19235i0 = new C19235i0(mo12335j3);
                AbstractC7107p mo12216s03 = c7010d6.f22633a.mo12216s0();
                Objects.requireNonNull(mo12216s03, "Cannot return null from a non-@Nullable component method");
                return (T) new C7013e(abstractC7037r4, abstractC7034o4, mo12399e73, c6395c, c19235i0, mo12216s03);
            }
        }
    }

    public C7010d(C7031l c7031l, AbstractC15539j2 abstractC15539j2, C7011a c7011a) {
        this.f22633a = abstractC15539j2;
        this.f22634b = c7031l;
        Provider c7012b = new C7012b(this, 1);
        Object obj = b.c;
        this.f22636d = !(c7012b instanceof b) ? new b(c7012b) : c7012b;
        C7012b c7012b2 = new C7012b(this, 0);
        this.f22637e = c7012b2;
        this.f22638f = b.b(c7012b2);
        C7012b c7012b3 = new C7012b(this, 2);
        this.f22639g = c7012b3;
        this.f22640h = b.b(c7012b3);
        C7012b c7012b4 = new C7012b(this, 3);
        this.f22641i = c7012b4;
        this.f22642j = b.b(c7012b4);
        C7012b c7012b5 = new C7012b(this, 4);
        this.f22643k = c7012b5;
        this.f22644l = b.b(c7012b5);
        C7012b c7012b6 = new C7012b(this, 5);
        this.f22645m = c7012b6;
        this.f22646n = b.b(c7012b6);
    }
}
