package p186o1;

import android.annotation.SuppressLint;
/* renamed from: o1.k */
/* loaded from: classes-dex2jar.jar:o1/k.class */
public interface AbstractC3829k {
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: a */
    public static final AbstractC3831b.C3834c f12320a = new AbstractC3831b.C3834c(null);
    @SuppressLint({"SyntheticAccessor"})

    /* renamed from: b */
    public static final AbstractC3831b.C3833b f12321b = new AbstractC3831b.C3833b(null);

    /* renamed from: o1.k$b */
    /* loaded from: classes-dex2jar.jar:o1/k$b.class */
    public static abstract class AbstractC3831b {

        /* renamed from: o1.k$b$a */
        /* loaded from: classes-dex2jar.jar:o1/k$b$a.class */
        public static final class C3832a extends AbstractC3831b {

            /* renamed from: a */
            public final Throwable f12322a;

            public C3832a(Throwable th) {
                this.f12322a = th;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.f12322a.getMessage());
            }
        }

        /* renamed from: o1.k$b$b */
        /* loaded from: classes-dex2jar.jar:o1/k$b$b.class */
        public static final class C3833b extends AbstractC3831b {
            public C3833b(C3830a c3830a) {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* renamed from: o1.k$b$c */
        /* loaded from: classes-dex2jar.jar:o1/k$b$c.class */
        public static final class C3834c extends AbstractC3831b {
            public C3834c() {
            }

            public C3834c(C3830a c3830a) {
            }

            public String toString() {
                return "SUCCESS";
            }
        }
    }
}
