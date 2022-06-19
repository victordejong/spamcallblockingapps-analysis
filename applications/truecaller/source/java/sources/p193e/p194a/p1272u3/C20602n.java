package p193e.p194a.p1272u3;

import javax.inject.Provider;
import p193e.p194a.p1220s4.AbstractC20235a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.u3.n */
/* loaded from: classes9-dex2jar.jar:e/a/u3/n.class */
public class C20602n extends C20592g {

    /* renamed from: q6 */
    public final AbstractC20585d f58100q6;

    /* renamed from: e.a.u3.n$a */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/n$a.class */
    public static final class C20603a extends m implements l<C20610s, C20610s> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC20583b f58101b;

        /* renamed from: c */
        public final /* synthetic */ C20602n f58102c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC20235a f58103d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20603a(AbstractC20583b abstractC20583b, C20602n c20602n, AbstractC20235a abstractC20235a) {
            super(1);
            this.f58101b = abstractC20583b;
            this.f58102c = c20602n;
            this.f58103d = abstractC20235a;
        }

        /* renamed from: d */
        public Object m10935d(Object obj) {
            s1.z.c.l.e((C20610s) obj, "$receiver");
            C20610s c20610s = (C20610s) this.f58101b;
            C20600l c20600l = new C20600l(new C20601m(this), this.f58102c.f58100q6);
            String str = c20610s.f58114b;
            boolean z = c20610s.f58115c;
            AbstractC20585d abstractC20585d = c20610s.f58116d;
            boolean z2 = c20610s.f58118f;
            s1.z.c.l.e(str, "remoteKey");
            s1.z.c.l.e(abstractC20585d, "prefs");
            s1.z.c.l.e(c20600l, "delegate");
            return new C20610s(str, z, abstractC20585d, c20600l, z2);
        }
    }

    /* renamed from: e.a.u3.n$b */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/n$b.class */
    public static final class C20604b extends m implements l<C20598j, C20598j> {

        /* renamed from: b */
        public final /* synthetic */ AbstractC20583b f58104b;

        /* renamed from: c */
        public final /* synthetic */ C20602n f58105c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC20235a f58106d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20604b(AbstractC20583b abstractC20583b, C20602n c20602n, AbstractC20235a abstractC20235a) {
            super(1);
            this.f58104b = abstractC20583b;
            this.f58105c = c20602n;
            this.f58106d = abstractC20235a;
        }

        /* renamed from: d */
        public Object m10934d(Object obj) {
            s1.z.c.l.e((C20598j) obj, "$receiver");
            C20606o c20606o = new C20606o(this);
            AbstractC20235a abstractC20235a = this.f58106d;
            C20598j c20598j = (C20598j) this.f58104b;
            return new C20598j(c20606o, abstractC20235a, c20598j.f58090c, this.f58105c.f58100q6, c20598j.f58092e);
        }
    }

    /* renamed from: e.a.u3.n$c */
    /* loaded from: classes9-dex2jar.jar:e/a/u3/n$c.class */
    public static final class C20605c extends m implements l<AbstractC20583b, AbstractC20583b> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC20235a f58108c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20605c(AbstractC20235a abstractC20235a) {
            super(1);
            C20602n.this = r4;
            this.f58108c = abstractC20235a;
        }

        /* renamed from: d */
        public Object m10933d(Object obj) {
            AbstractC20583b abstractC20583b = (AbstractC20583b) obj;
            s1.z.c.l.e(abstractC20583b, "$receiver");
            return new C20600l(abstractC20583b, C20602n.this.f58100q6);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20602n(AbstractC20582a abstractC20582a, AbstractC20585d abstractC20585d, AbstractC20235a abstractC20235a, Provider<C20590f> provider) {
        super(abstractC20582a, abstractC20585d, abstractC20235a, provider);
        s1.z.c.l.e(abstractC20582a, "environment");
        s1.z.c.l.e(abstractC20585d, "prefs");
        s1.z.c.l.e(abstractC20235a, "remoteConfig");
        s1.z.c.l.e(provider, "observer");
        this.f58100q6 = abstractC20585d;
        for (AbstractC20583b abstractC20583b : m10980Y()) {
            if (abstractC20583b instanceof C20610s) {
                m10959j0(abstractC20583b, new C20603a(abstractC20583b, this, abstractC20235a));
            } else if (abstractC20583b instanceof C20598j) {
                m10959j0(abstractC20583b, new C20604b(abstractC20583b, this, abstractC20235a));
            } else {
                m10959j0(abstractC20583b, new C20605c(abstractC20235a));
            }
        }
    }
}
