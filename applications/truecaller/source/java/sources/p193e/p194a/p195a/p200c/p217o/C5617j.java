package p193e.p194a.p195a.p200c.p217o;

import com.truecaller.messaging.data.types.Conversation;
import java.util.Objects;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import s1.w.f;
/* renamed from: e.a.a.c.o.j */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o/j.class */
public final class C5617j {

    /* renamed from: a */
    public final AbstractC15539j2 f18907a;

    /* renamed from: b */
    public final C5601b f18908b;

    /* renamed from: c */
    public final C5617j f18909c = this;

    /* renamed from: d */
    public Provider<AbstractC6248w> f18910d = new C5619b(this, 1);

    /* renamed from: e */
    public Provider<C5604e> f18911e;

    /* renamed from: f */
    public Provider<AbstractC5602c> f18912f;

    /* renamed from: e.a.a.c.o.j$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/o/j$b.class */
    public static final class C5619b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5617j f18913a;

        /* renamed from: b */
        public final int f18914b;

        public C5619b(C5617j c5617j, int i) {
            this.f18913a = c5617j;
            this.f18914b = i;
        }

        public T get() {
            int i = this.f18914b;
            if (i != 0) {
                if (i != 1) {
                    throw new AssertionError(this.f18914b);
                }
                T t = (T) this.f18913a.f18907a.mo12144x3();
                Objects.requireNonNull(t, "Cannot return null from a non-@Nullable component method");
                return t;
            }
            C5617j c5617j = this.f18913a;
            f mo12378g = c5617j.f18907a.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            f mo12765D2 = c5617j.f18907a.mo12765D2();
            Objects.requireNonNull(mo12765D2, "Cannot return null from a non-@Nullable component method");
            Conversation conversation = c5617j.f18908b.f18857a;
            Objects.requireNonNull(conversation, "Cannot return null from a non-@Nullable @Provides method");
            a a = b.a(c5617j.f18910d);
            AbstractC5614h mo12695I3 = c5617j.f18907a.mo12695I3();
            Objects.requireNonNull(mo12695I3, "Cannot return null from a non-@Nullable component method");
            AbstractC18951b0 mo12399e7 = c5617j.f18907a.mo12399e7();
            Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
            AbstractC19219a0 mo11647c = c5617j.f18907a.mo11647c();
            Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
            AbstractC19223c0 mo12349i = c5617j.f18907a.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC19462a mo12776C4 = c5617j.f18907a.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            AbstractC19056l1 mo12212s4 = c5617j.f18907a.mo12212s4();
            Objects.requireNonNull(mo12212s4, "Cannot return null from a non-@Nullable component method");
            return (T) new C5604e(mo12378g, mo12765D2, conversation, a, mo12695I3, mo12399e7, mo11647c, mo12349i, mo12776C4, mo12212s4);
        }
    }

    public C5617j(C5601b c5601b, AbstractC15539j2 abstractC15539j2, C5618a c5618a) {
        this.f18907a = abstractC15539j2;
        this.f18908b = c5601b;
        C5619b c5619b = new C5619b(this, 0);
        this.f18911e = c5619b;
        this.f18912f = b.b(c5619b);
    }
}
