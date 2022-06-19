package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1080o.p1101n.C18787a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/e.class */
public abstract class AbstractC18671e {

    /* renamed from: e.a.o.b.a.a.e$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/e$a.class */
    public static final class C18672a extends AbstractC18671e {

        /* renamed from: a */
        public final String f52514a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18672a(String str) {
            super(null);
            l.e(str, "message");
            this.f52514a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C18672a) && l.a(this.f52514a, ((C18672a) obj).f52514a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f52514a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("CustomMessageItem(message="), this.f52514a, ")");
        }
    }

    /* renamed from: e.a.o.b.a.a.e$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/e$b.class */
    public static final class C18673b extends AbstractC18671e {

        /* renamed from: a */
        public final C18787a f52515a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18673b(C18787a c18787a) {
            super(null);
            l.e(c18787a, "predefinedCallReason");
            this.f52515a = c18787a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C18673b) && l.a(this.f52515a, ((C18673b) obj).f52515a);
            }
            return true;
        }

        public int hashCode() {
            C18787a c18787a = this.f52515a;
            return c18787a != null ? c18787a.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PredefinedReasonItem(predefinedCallReason=");
            m8728C.append(this.f52515a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.o.b.a.a.e$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/e$c.class */
    public static final class C18674c extends AbstractC18671e {

        /* renamed from: a */
        public static final C18674c f52516a = new C18674c();

        public C18674c() {
            super(null);
        }
    }

    public AbstractC18671e() {
    }

    public AbstractC18671e(f fVar) {
    }
}
