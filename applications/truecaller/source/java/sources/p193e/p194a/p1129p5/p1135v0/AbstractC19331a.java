package p193e.p194a.p1129p5.p1135v0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.i;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.p5.v0.a */
/* loaded from: classes15-dex2jar.jar:e/a/p5/v0/a.class */
public abstract class AbstractC19331a {

    /* renamed from: e.a.p5.v0.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/a$a.class */
    public static final class C19332a extends AbstractC19331a {

        /* renamed from: a */
        public final Integer f53785a;

        public C19332a(Integer num) {
            super(null);
            this.f53785a = num;
        }

        @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19331a
        /* renamed from: b */
        public Integer mo13446b() {
            return this.f53785a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C19332a) && l.a(this.f53785a, ((C19332a) obj).f53785a);
            }
            return true;
        }

        public int hashCode() {
            Integer num = this.f53785a;
            return num != null ? num.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8689L2(C22128a.m8728C("Idle(subId="), this.f53785a, ")");
        }
    }

    /* renamed from: e.a.p5.v0.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/a$b.class */
    public static final class C19333b extends AbstractC19331a {

        /* renamed from: a */
        public final Integer f53786a;

        /* renamed from: b */
        public final String f53787b;

        public C19333b(Integer num, String str) {
            super(null);
            this.f53786a = num;
            this.f53787b = str;
        }

        @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19331a
        /* renamed from: b */
        public Integer mo13446b() {
            return this.f53786a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C19333b)) {
                    return false;
                }
                C19333b c19333b = (C19333b) obj;
                return l.a(this.f53786a, c19333b.f53786a) && l.a(this.f53787b, c19333b.f53787b);
            }
            return true;
        }

        public int hashCode() {
            Integer num = this.f53786a;
            int i = 0;
            int hashCode = num != null ? num.hashCode() : 0;
            String str = this.f53787b;
            if (str != null) {
                i = str.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OfHook(subId=");
            m8728C.append(this.f53786a);
            m8728C.append(", number=");
            return C22128a.m8618h(m8728C, this.f53787b, ")");
        }
    }

    /* renamed from: e.a.p5.v0.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/v0/a$c.class */
    public static final class C19334c extends AbstractC19331a {

        /* renamed from: a */
        public final Integer f53788a;

        /* renamed from: b */
        public final String f53789b;

        public C19334c(Integer num, String str) {
            super(null);
            this.f53788a = num;
            this.f53789b = str;
        }

        @Override // p193e.p194a.p1129p5.p1135v0.AbstractC19331a
        /* renamed from: b */
        public Integer mo13446b() {
            return this.f53788a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C19334c)) {
                    return false;
                }
                C19334c c19334c = (C19334c) obj;
                return l.a(this.f53788a, c19334c.f53788a) && l.a(this.f53789b, c19334c.f53789b);
            }
            return true;
        }

        public int hashCode() {
            Integer num = this.f53788a;
            int i = 0;
            int hashCode = num != null ? num.hashCode() : 0;
            String str = this.f53789b;
            if (str != null) {
                i = str.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Ringing(subId=");
            m8728C.append(this.f53788a);
            m8728C.append(", number=");
            return C22128a.m8618h(m8728C, this.f53789b, ")");
        }
    }

    public AbstractC19331a() {
    }

    public AbstractC19331a(f fVar) {
    }

    /* renamed from: a */
    public final String m13447a() {
        String str;
        if (this instanceof C19332a) {
            str = null;
        } else if (this instanceof C19334c) {
            str = ((C19334c) this).f53789b;
        } else if (!(this instanceof C19333b)) {
            throw new i();
        } else {
            str = ((C19333b) this).f53787b;
        }
        return str;
    }

    /* renamed from: b */
    public abstract Integer mo13446b();
}
