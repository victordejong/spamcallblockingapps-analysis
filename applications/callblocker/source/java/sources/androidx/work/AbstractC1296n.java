package androidx.work;

import android.annotation.SuppressLint;
/* renamed from: androidx.work.n */
/* loaded from: classes-dex2jar.jar:androidx/work/n.class */
public interface AbstractC1296n {
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: a */
    public static final AbstractC1298a.C1301c f4338a = new AbstractC1298a.C1301c();
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: b */
    public static final AbstractC1298a.C1300b f4339b = new AbstractC1298a.C1300b();

    /* renamed from: androidx.work.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/n$a.class */
    public static abstract class AbstractC1298a {

        /* renamed from: androidx.work.n$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$a.class */
        public static final class C1299a extends AbstractC1298a {

            /* renamed from: a */
            private final Throwable f4340a;

            public C1299a(Throwable th) {
                this.f4340a = th;
            }

            /* renamed from: a */
            public Throwable m17535a() {
                return this.f4340a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f4340a.getMessage());
            }
        }

        /* renamed from: androidx.work.n$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$b.class */
        public static final class C1300b extends AbstractC1298a {
            private C1300b() {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* renamed from: androidx.work.n$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$c.class */
        public static final class C1301c extends AbstractC1298a {
            private C1301c() {
            }

            public String toString() {
                return "SUCCESS";
            }
        }

        AbstractC1298a() {
        }
    }
}
