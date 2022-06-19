package androidx.work;

import androidx.work.impl.p055b.C1191p;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
/* renamed from: androidx.work.u */
/* loaded from: classes-dex2jar.jar:androidx/work/u.class */
public abstract class AbstractC1311u {

    /* renamed from: a */
    private UUID f4354a;

    /* renamed from: b */
    private C1191p f4355b;

    /* renamed from: c */
    private Set<String> f4356c;

    /* renamed from: androidx.work.u$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/u$a.class */
    public static abstract class AbstractC1312a<B extends AbstractC1312a<?, ?>, W extends AbstractC1311u> {

        /* renamed from: c */
        C1191p f4359c;

        /* renamed from: e */
        Class<? extends ListenableWorker> f4361e;

        /* renamed from: a */
        boolean f4357a = false;

        /* renamed from: d */
        Set<String> f4360d = new HashSet();

        /* renamed from: b */
        UUID f4358b = UUID.randomUUID();

        public AbstractC1312a(Class<? extends ListenableWorker> cls) {
            this.f4361e = cls;
            this.f4359c = new C1191p(this.f4358b.toString(), cls.getName());
            m17525a(cls.getName());
        }

        /* renamed from: a */
        public final B m17525a(String str) {
            this.f4360d.add(str);
            return mo17524c();
        }

        /* renamed from: c */
        abstract B mo17524c();

        /* renamed from: d */
        abstract W mo17523d();

        /* renamed from: e */
        public final W m17522e() {
            W mo17523d = mo17523d();
            this.f4358b = UUID.randomUUID();
            this.f4359c = new C1191p(this.f4359c);
            this.f4359c.f4013a = this.f4358b.toString();
            return mo17523d;
        }
    }

    public AbstractC1311u(UUID uuid, C1191p c1191p, Set<String> set) {
        this.f4354a = uuid;
        this.f4355b = c1191p;
        this.f4356c = set;
    }

    /* renamed from: a */
    public String m17528a() {
        return this.f4354a.toString();
    }

    /* renamed from: b */
    public C1191p m17527b() {
        return this.f4355b;
    }

    /* renamed from: c */
    public Set<String> m17526c() {
        return this.f4356c;
    }
}
