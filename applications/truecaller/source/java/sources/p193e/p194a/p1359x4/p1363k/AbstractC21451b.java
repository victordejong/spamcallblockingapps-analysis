package p193e.p194a.p1359x4.p1363k;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.x4.k.b */
/* loaded from: classes13-dex2jar.jar:e/a/x4/k/b.class */
public abstract class AbstractC21451b {

    /* renamed from: e.a.x4.k.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/k/b$a.class */
    public static final class C21452a extends AbstractC21451b {

        /* renamed from: a */
        public static final C21452a f59937a = new C21452a();

        public C21452a() {
            super(null);
        }
    }

    /* renamed from: e.a.x4.k.b$b */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/k/b$b.class */
    public static final class C21453b extends AbstractC21451b {

        /* renamed from: a */
        public final Exception f59938a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21453b(Exception exc) {
            super(null);
            l.e(exc, "exception");
            this.f59938a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C21453b) && l.a(this.f59938a, ((C21453b) obj).f59938a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f59938a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("NetworkFail(exception=");
            m8728C.append(this.f59938a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.x4.k.b$c */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/k/b$c.class */
    public static final class C21454c extends AbstractC21451b {

        /* renamed from: a */
        public static final C21454c f59939a = new C21454c();

        public C21454c() {
            super(null);
        }
    }

    public AbstractC21451b() {
    }

    public AbstractC21451b(f fVar) {
    }
}
