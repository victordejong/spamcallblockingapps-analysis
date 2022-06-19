package p193e.p194a.p195a.p223c1;

import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Draft;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.a.c1.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/b.class */
public abstract class AbstractC5843b {

    /* renamed from: e.a.a.c1.b$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$a.class */
    public static final class C5844a extends AbstractC5843b {

        /* renamed from: a */
        public final long f19587a;

        /* renamed from: b */
        public final List<BinaryEntity> f19588b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C5844a(long j, List<? extends BinaryEntity> list, int i) {
            super(null);
            l.e(list, "unsupportedEntities");
            this.f19587a = j;
            this.f19588b = list;
        }
    }

    /* renamed from: e.a.a.c1.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$b.class */
    public static final class C5845b extends AbstractC5843b {

        /* renamed from: a */
        public static final C5845b f19589a = new C5845b();

        public C5845b() {
            super(null);
        }
    }

    /* renamed from: e.a.a.c1.b$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$c.class */
    public static final class C5846c extends AbstractC5843b {

        /* renamed from: a */
        public static final C5846c f19590a = new C5846c();

        public C5846c() {
            super(null);
        }
    }

    /* renamed from: e.a.a.c1.b$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$d.class */
    public static final class C5847d extends AbstractC5843b {

        /* renamed from: a */
        public static final C5847d f19591a = new C5847d();

        public C5847d() {
            super(null);
        }
    }

    /* renamed from: e.a.a.c1.b$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$e.class */
    public static final class C5848e extends AbstractC5843b {

        /* renamed from: a */
        public final List<Draft> f19592a;

        /* renamed from: b */
        public final String f19593b;

        /* renamed from: c */
        public final boolean f19594c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5848e(List<Draft> list, String str, boolean z) {
            super(null);
            l.e(list, "draftsList");
            l.e(str, "simToken");
            this.f19592a = list;
            this.f19593b = str;
            this.f19594c = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C5848e)) {
                    return false;
                }
                C5848e c5848e = (C5848e) obj;
                return l.a(this.f19592a, c5848e.f19592a) && l.a(this.f19593b, c5848e.f19593b) && this.f19594c == c5848e.f19594c;
            }
            return true;
        }

        public int hashCode() {
            List<Draft> list = this.f19592a;
            int i = 0;
            int hashCode = list != null ? list.hashCode() : 0;
            String str = this.f19593b;
            if (str != null) {
                i = str.hashCode();
            }
            boolean z = this.f19594c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Ready(draftsList=");
            m8728C.append(this.f19592a);
            m8728C.append(", simToken=");
            m8728C.append(this.f19593b);
            m8728C.append(", asIM=");
            return C22128a.m8590o(m8728C, this.f19594c, ")");
        }
    }

    /* renamed from: e.a.a.c1.b$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$f.class */
    public static final class C5849f extends AbstractC5843b {

        /* renamed from: a */
        public static final C5849f f19595a = new C5849f();

        public C5849f() {
            super(null);
        }
    }

    /* renamed from: e.a.a.c1.b$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/b$g.class */
    public static final class C5850g extends AbstractC5843b {

        /* renamed from: a */
        public static final C5850g f19596a = new C5850g();

        public C5850g() {
            super(null);
        }
    }

    public AbstractC5843b(f fVar) {
    }
}
