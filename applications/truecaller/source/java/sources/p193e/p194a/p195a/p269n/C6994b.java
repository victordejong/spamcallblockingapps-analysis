package p193e.p194a.p195a.p269n;

import com.truecaller.messaging.data.types.Conversation;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p241i1.C6395c;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p271o.AbstractC7084f;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.w.f;
/* renamed from: e.a.a.n.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/b.class */
public final class C6994b {

    /* renamed from: a */
    public final AbstractC15539j2 f22586a;

    /* renamed from: b */
    public final C6998d f22587b;

    /* renamed from: c */
    public final C6994b f22588c = this;

    /* renamed from: d */
    public Provider<C7001g> f22589d;

    /* renamed from: e */
    public Provider<AbstractC6999e> f22590e;

    /* renamed from: e.a.a.n.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/b$b.class */
    public static final class C6996b<T> implements Provider<T> {

        /* renamed from: a */
        public final C6994b f22591a;

        public C6996b(C6994b c6994b, int i) {
            this.f22591a = c6994b;
        }

        public T get() {
            C6994b c6994b = this.f22591a;
            f mo12378g = c6994b.f22586a.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            f mo12315k6 = c6994b.f22586a.mo12315k6();
            Objects.requireNonNull(mo12315k6, "Cannot return null from a non-@Nullable component method");
            Conversation conversation = c6994b.f22587b.f22594a;
            Objects.requireNonNull(conversation, "Cannot return null from a non-@Nullable @Provides method");
            String str = c6994b.f22587b.f22595b;
            Objects.requireNonNull(str, "Cannot return null from a non-@Nullable @Provides method");
            boolean z = c6994b.f22587b.f22596c;
            AbstractC19222c mo11637k = c6994b.f22586a.mo11637k();
            Objects.requireNonNull(mo11637k, "Cannot return null from a non-@Nullable component method");
            AbstractC19462a mo12776C4 = c6994b.f22586a.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            AbstractC19510i0 mo12264o4 = c6994b.f22586a.mo12264o4();
            Objects.requireNonNull(mo12264o4, "Cannot return null from a non-@Nullable component method");
            C6997c c6997c = new C6997c(mo12776C4, mo12264o4);
            AbstractC19223c0 mo12349i = c6994b.f22586a.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC6489q mo12466Z5 = c6994b.f22586a.mo12466Z5();
            Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
            AbstractC18951b0 mo12399e7 = c6994b.f22586a.mo12399e7();
            Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
            C20592g mo11648b = c6994b.f22586a.mo11648b();
            Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
            AbstractC14840m mo11655T = c6994b.f22586a.mo11655T();
            Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S = c6994b.f22586a.mo12565S();
            Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
            AbstractC19222c mo11637k2 = c6994b.f22586a.mo11637k();
            Objects.requireNonNull(mo11637k2, "Cannot return null from a non-@Nullable component method");
            C6395c c6395c = new C6395c(mo12349i, mo12466Z5, mo12399e7, mo11648b, mo11655T, mo12565S, mo11637k2);
            AbstractC7084f mo12737F2 = c6994b.f22586a.mo12737F2();
            Objects.requireNonNull(mo12737F2, "Cannot return null from a non-@Nullable component method");
            AbstractC7107p mo12216s0 = c6994b.f22586a.mo12216s0();
            Objects.requireNonNull(mo12216s0, "Cannot return null from a non-@Nullable component method");
            return (T) new C7001g(mo12378g, mo12315k6, conversation, str, z, mo11637k, c6997c, c6395c, mo12737F2, mo12216s0);
        }
    }

    public C6994b(C6998d c6998d, AbstractC15539j2 abstractC15539j2, C6995a c6995a) {
        this.f22586a = abstractC15539j2;
        this.f22587b = c6998d;
        C6996b c6996b = new C6996b(this, 0);
        this.f22589d = c6996b;
        this.f22590e = b.b(c6996b);
    }
}
