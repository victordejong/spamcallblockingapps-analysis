package androidx.work;

import android.annotation.SuppressLint;
/* renamed from: androidx.work.l */
/* loaded from: classes-dex2jar.jar:androidx/work/l.class */
public interface AbstractC1408l {
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: a */
    public static final AbstractC1410b.C1413c f5745a = new AbstractC1410b.C1413c();
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: b */
    public static final AbstractC1410b.C1412b f5746b = new AbstractC1410b.C1412b();

    /* renamed from: androidx.work.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/l$b.class */
    public static abstract class AbstractC1410b {

        /* renamed from: androidx.work.l$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/l$b$a.class */
        public static final class C1411a extends AbstractC1410b {

            /* renamed from: a */
            private final Throwable f5747a;

            public C1411a(Throwable th) {
                this.f5747a = th;
            }

            /* renamed from: a */
            public Throwable m30150a() {
                return this.f5747a;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f5747a.getMessage());
            }
        }

        /* renamed from: androidx.work.l$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/l$b$b.class */
        public static final class C1412b extends AbstractC1410b {
            private C1412b() {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* renamed from: androidx.work.l$b$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/l$b$c.class */
        public static final class C1413c extends AbstractC1410b {
            private C1413c() {
            }

            public String toString() {
                return "SUCCESS";
            }
        }

        AbstractC1410b() {
        }
    }
}
