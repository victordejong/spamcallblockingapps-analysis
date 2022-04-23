package androidx.work;

import androidx.work.impl.p009l.C0589j;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
/* renamed from: androidx.work.l */
/* loaded from: classes-dex2jar.jar:androidx/work/l.class */
public abstract class AbstractC0610l {

    /* renamed from: a */
    private UUID f3158a;

    /* renamed from: b */
    private C0589j f3159b;

    /* renamed from: c */
    private Set<String> f3160c;

    /* renamed from: androidx.work.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/l$a.class */
    public static abstract class AbstractC0611a<B extends AbstractC0611a, W extends AbstractC0610l> {

        /* renamed from: c */
        C0589j f3163c;

        /* renamed from: a */
        boolean f3161a = false;

        /* renamed from: d */
        Set<String> f3164d = new HashSet();

        /* renamed from: b */
        UUID f3162b = UUID.randomUUID();

        AbstractC0611a(Class<? extends ListenableWorker> cls) {
            this.f3163c = new C0589j(this.f3162b.toString(), cls.getName());
            m11584a(cls.getName());
        }

        /* renamed from: a */
        public final B m11584a(String str) {
            this.f3164d.add(str);
            m11581d();
            return this;
        }

        /* renamed from: b */
        public final W m11583b() {
            W c = m11582c();
            this.f3162b = UUID.randomUUID();
            C0589j jVar = new C0589j(this.f3163c);
            this.f3163c = jVar;
            jVar.f3085a = this.f3162b.toString();
            return c;
        }

        /* renamed from: c */
        abstract W m11582c();

        /* renamed from: d */
        abstract B m11581d();

        /* renamed from: e */
        public final B m11580e(C0548b bVar) {
            this.f3163c.f3094j = bVar;
            m11581d();
            return this;
        }

        /* renamed from: f */
        public final B m11579f(C0552d dVar) {
            this.f3163c.f3089e = dVar;
            m11581d();
            return this;
        }
    }

    protected AbstractC0610l(UUID uuid, C0589j jVar, Set<String> set) {
        this.f3158a = uuid;
        this.f3159b = jVar;
        this.f3160c = set;
    }

    /* renamed from: a */
    public String m11587a() {
        return this.f3158a.toString();
    }

    /* renamed from: b */
    public Set<String> m11586b() {
        return this.f3160c;
    }

    /* renamed from: c */
    public C0589j m11585c() {
        return this.f3159b;
    }
}
