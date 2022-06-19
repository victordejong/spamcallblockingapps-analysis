package p1727n3.p1834m0;
/* renamed from: n3.m0.s */
/* loaded from: classes-dex2jar.jar:n3/m0/s.class */
public interface AbstractC26844s {

    /* renamed from: a */
    public static final AbstractC26846b.C26849c f75103a = new AbstractC26846b.C26849c(null);

    /* renamed from: b */
    public static final AbstractC26846b.C26848b f75104b = new AbstractC26846b.C26848b(null);

    /* renamed from: n3.m0.s$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/s$b.class */
    public static abstract class AbstractC26846b {

        /* renamed from: n3.m0.s$b$a */
        /* loaded from: classes-dex2jar.jar:n3/m0/s$b$a.class */
        public static final class C26847a extends AbstractC26846b {

            /* renamed from: a */
            public final Throwable f75105a;

            public C26847a(Throwable th) {
                this.f75105a = th;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f75105a.getMessage());
            }
        }

        /* renamed from: n3.m0.s$b$b */
        /* loaded from: classes-dex2jar.jar:n3/m0/s$b$b.class */
        public static final class C26848b extends AbstractC26846b {
            public C26848b(C26845a c26845a) {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* renamed from: n3.m0.s$b$c */
        /* loaded from: classes-dex2jar.jar:n3/m0/s$b$c.class */
        public static final class C26849c extends AbstractC26846b {
            public C26849c() {
            }

            public C26849c(C26845a c26845a) {
            }

            public String toString() {
                return "SUCCESS";
            }
        }
    }
}
