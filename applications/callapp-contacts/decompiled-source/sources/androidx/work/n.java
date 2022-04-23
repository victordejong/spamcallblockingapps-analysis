package androidx.work;
/* loaded from: classes-dex2jar.jar:androidx/work/n.class */
public interface n {

    /* renamed from: a  reason: collision with root package name */
    public static final a.c f6232a = new a.c();

    /* renamed from: b  reason: collision with root package name */
    public static final a.b f6233b = new a.b();

    /* loaded from: classes-dex2jar.jar:androidx/work/n$a.class */
    public static abstract class a {

        /* renamed from: androidx.work.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$a.class */
        public static final class C0123a extends a {

            /* renamed from: a  reason: collision with root package name */
            public final Throwable f6234a;

            public C0123a(Throwable th) {
                this.f6234a = th;
            }

            public final String toString() {
                return String.format("FAILURE (%s)", this.f6234a.getMessage());
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$b.class */
        public static final class b extends a {
            private b() {
            }

            public final String toString() {
                return "IN_PROGRESS";
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$c.class */
        public static final class c extends a {
            private c() {
            }

            public final String toString() {
                return "SUCCESS";
            }
        }

        a() {
        }
    }

    com.google.common.util.concurrent.a<a.c> a();
}
