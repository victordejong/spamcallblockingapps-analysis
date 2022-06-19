package androidx.work;

import com.google.common.util.concurrent.AbstractFutureC15579a;
/* renamed from: androidx.work.n */
/* loaded from: classes-dex2jar.jar:androidx/work/n.class */
public interface AbstractC3150n {

    /* renamed from: a */
    public static final AbstractC3152a.C3155c f11510a = new AbstractC3152a.C3155c();

    /* renamed from: b */
    public static final AbstractC3152a.C3154b f11511b = new AbstractC3152a.C3154b();

    /* renamed from: androidx.work.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/n$a.class */
    public static abstract class AbstractC3152a {

        /* renamed from: androidx.work.n$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$a.class */
        public static final class C3153a extends AbstractC3152a {

            /* renamed from: a */
            public final Throwable f11512a;

            public C3153a(Throwable th) {
                this.f11512a = th;
            }

            public final String toString() {
                return String.format("FAILURE (%s)", this.f11512a.getMessage());
            }
        }

        /* renamed from: androidx.work.n$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$b.class */
        public static final class C3154b extends AbstractC3152a {
            private C3154b() {
            }

            public final String toString() {
                return "IN_PROGRESS";
            }
        }

        /* renamed from: androidx.work.n$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/n$a$c.class */
        public static final class C3155c extends AbstractC3152a {
            private C3155c() {
            }

            public final String toString() {
                return "SUCCESS";
            }
        }

        AbstractC3152a() {
        }
    }

    /* renamed from: a */
    AbstractFutureC15579a<AbstractC3152a.C3155c> mo39272a();
}
