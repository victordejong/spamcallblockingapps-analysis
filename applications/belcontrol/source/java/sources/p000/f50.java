package p000;

import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
/* renamed from: f50 */
/* loaded from: classes-dex2jar.jar:f50.class */
public abstract class f50 {

    /* renamed from: a */
    public UUID f6520a;

    /* renamed from: b */
    public c70 f6521b;

    /* renamed from: c */
    public Set<String> f6522c;

    /* renamed from: f50$a */
    /* loaded from: classes-dex2jar.jar:f50$a.class */
    public static abstract class AbstractC1396a<B extends AbstractC1396a, W extends f50> {

        /* renamed from: c */
        public c70 f6525c;

        /* renamed from: a */
        public boolean f6523a = false;

        /* renamed from: d */
        public Set<String> f6526d = new HashSet();

        /* renamed from: b */
        public UUID f6524b = UUID.randomUUID();

        public AbstractC1396a(Class<? extends ListenableWorker> cls) {
            this.f6525c = new c70(this.f6524b.toString(), cls.getName());
            m1985a(cls.getName());
        }

        /* renamed from: a */
        public final B m1985a(String str) {
            this.f6526d.add(str);
            m1982d();
            return this;
        }

        /* renamed from: b */
        public final W m1984b() {
            W m1983c = m1983c();
            this.f6524b = UUID.randomUUID();
            c70 c70Var = new c70(this.f6525c);
            this.f6525c = c70Var;
            c70Var.f2162a = this.f6524b.toString();
            return m1983c;
        }

        /* renamed from: c */
        public abstract W m1983c();

        /* renamed from: d */
        public abstract B m1982d();

        /* renamed from: e */
        public final B m1981e(s40 s40Var) {
            this.f6525c.f2171j = s40Var;
            m1982d();
            return this;
        }

        /* renamed from: f */
        public final B m1980f(u40 u40Var) {
            this.f6525c.f2166e = u40Var;
            m1982d();
            return this;
        }
    }

    public f50(UUID uuid, c70 c70Var, Set<String> set) {
        this.f6520a = uuid;
        this.f6521b = c70Var;
        this.f6522c = set;
    }

    /* renamed from: a */
    public String m1988a() {
        return this.f6520a.toString();
    }

    /* renamed from: b */
    public Set<String> m1987b() {
        return this.f6522c;
    }

    /* renamed from: c */
    public c70 m1986c() {
        return this.f6521b;
    }
}
