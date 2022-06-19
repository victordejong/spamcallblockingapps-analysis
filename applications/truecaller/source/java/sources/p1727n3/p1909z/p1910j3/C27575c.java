package p1727n3.p1909z.p1910j3;

import com.appsflyer.AppsFlyerProperties;
import p193e.p1432d.p1439c.p1440a.C22128a;
import q3.a.i0;
import q3.a.w2.d0;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: n3.z.j3.c */
/* loaded from: classes-dex2jar.jar:n3/z/j3/c.class */
public final class C27575c<T> {

    /* renamed from: a */
    public final a f77701a = new a(this);

    /* renamed from: b */
    public final i0 f77702b;

    /* renamed from: c */
    public final int f77703c;

    /* renamed from: d */
    public final boolean f77704d;

    /* renamed from: e */
    public final p<T, d<? super s>, Object> f77705e;

    /* renamed from: f */
    public final boolean f77706f;

    /* renamed from: g */
    public final f<T> f77707g;

    /* renamed from: n3.z.j3.c$b */
    /* loaded from: classes-dex2jar.jar:n3/z/j3/c$b.class */
    public static final class C27576b<T> {

        /* renamed from: a */
        public final d0<AbstractC27577c.b.c<T>> f77708a;

        /* renamed from: b */
        public boolean f77709b;

        public C27576b(d0 d0Var, boolean z, int i) {
            z = (i & 2) != 0 ? false : z;
            l.e(d0Var, AppsFlyerProperties.CHANNEL);
            this.f77708a = d0Var;
            this.f77709b = z;
        }

        /* renamed from: a */
        public final void m84a() {
            s1.a.a.a.v0.f.d.f0(this.f77708a, (Throwable) null, 1, (Object) null);
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C27576b)) {
                    return false;
                }
                C27576b c27576b = (C27576b) obj;
                return l.a(this.f77708a, c27576b.f77708a) && this.f77709b == c27576b.f77709b;
            }
            return true;
        }

        public int hashCode() {
            d0<AbstractC27577c.b.c<T>> d0Var = this.f77708a;
            int hashCode = d0Var != null ? d0Var.hashCode() : 0;
            boolean z = this.f77709b;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ChannelEntry(channel=");
            m8728C.append(this.f77708a);
            m8728C.append(", _receivedValue=");
            return C22128a.m8590o(m8728C, this.f77709b, ")");
        }
    }

    /* renamed from: n3.z.j3.c$c */
    /* loaded from: classes-dex2jar.jar:n3/z/j3/c$c.class */
    public static abstract class AbstractC27577c<T> {
        public AbstractC27577c() {
        }

        public AbstractC27577c(s1.z.c.f fVar) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C27575c(i0 i0Var, int i, boolean z, p<? super T, ? super d<? super s>, ? extends Object> pVar, boolean z2, f<? extends T> fVar) {
        l.e(i0Var, "scope");
        l.e(pVar, "onEach");
        l.e(fVar, "upstream");
        this.f77702b = i0Var;
        this.f77703c = i;
        this.f77704d = z;
        this.f77705e = pVar;
        this.f77706f = z2;
        this.f77707g = fVar;
    }
}
