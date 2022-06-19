package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import com.google.p112a.p113a.p114a.AbstractFutureC2212a;
import java.util.UUID;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker.class */
public abstract class ListenableWorker {

    /* renamed from: a */
    private Context f3853a;

    /* renamed from: b */
    private WorkerParameters f3854b;

    /* renamed from: c */
    private volatile boolean f3855c;

    /* renamed from: d */
    private boolean f3856d;

    /* renamed from: e */
    private boolean f3857e;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a.class */
    public static abstract class AbstractC1119a {

        /* renamed from: androidx.work.ListenableWorker$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$a.class */
        public static final class C1120a extends AbstractC1119a {

            /* renamed from: a */
            private final C1133e f3858a;

            public C1120a() {
                this(C1133e.f3915a);
            }

            public C1120a(C1133e c1133e) {
                this.f3858a = c1133e;
            }

            /* renamed from: d */
            public C1133e m17964d() {
                return this.f3858a;
            }

            public boolean equals(Object obj) {
                return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : this.f3858a.equals(((C1120a) obj).f3858a);
            }

            public int hashCode() {
                return (C1120a.class.getName().hashCode() * 31) + this.f3858a.hashCode();
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f3858a + '}';
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$b.class */
        public static final class C1121b extends AbstractC1119a {
            public boolean equals(Object obj) {
                boolean z = true;
                if (this != obj && (obj == null || getClass() != obj.getClass())) {
                    z = false;
                }
                return z;
            }

            public int hashCode() {
                return C1121b.class.getName().hashCode();
            }

            public String toString() {
                return "Retry";
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$c */
        /* loaded from: classes-dex2jar.jar:androidx/work/ListenableWorker$a$c.class */
        public static final class C1122c extends AbstractC1119a {

            /* renamed from: a */
            private final C1133e f3859a;

            public C1122c() {
                this(C1133e.f3915a);
            }

            public C1122c(C1133e c1133e) {
                this.f3859a = c1133e;
            }

            /* renamed from: d */
            public C1133e m17963d() {
                return this.f3859a;
            }

            public boolean equals(Object obj) {
                return this == obj ? true : (obj == null || getClass() != obj.getClass()) ? false : this.f3859a.equals(((C1122c) obj).f3859a);
            }

            public int hashCode() {
                return (C1122c.class.getName().hashCode() * 31) + this.f3859a.hashCode();
            }

            public String toString() {
                return "Success {mOutputData=" + this.f3859a + '}';
            }
        }

        AbstractC1119a() {
        }

        /* renamed from: a */
        public static AbstractC1119a m17968a() {
            return new C1122c();
        }

        /* renamed from: a */
        public static AbstractC1119a m17967a(C1133e c1133e) {
            return new C1122c(c1133e);
        }

        /* renamed from: b */
        public static AbstractC1119a m17966b() {
            return new C1121b();
        }

        /* renamed from: c */
        public static AbstractC1119a m17965c() {
            return new C1120a();
        }
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context == null) {
            throw new IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        this.f3853a = context;
        this.f3854b = workerParameters;
    }

    /* renamed from: a */
    public final Context m17977a() {
        return this.f3853a;
    }

    /* renamed from: b */
    public final UUID m17976b() {
        return this.f3854b.m17962a();
    }

    /* renamed from: c */
    public final C1133e m17975c() {
        return this.f3854b.m17961b();
    }

    /* renamed from: d */
    public abstract AbstractFutureC2212a<AbstractC1119a> mo17555d();

    /* renamed from: e */
    public final void m17974e() {
        this.f3855c = true;
        mo17554f();
    }

    /* renamed from: f */
    public void mo17554f() {
    }

    /* renamed from: g */
    public final boolean m17973g() {
        return this.f3856d;
    }

    /* renamed from: h */
    public final void m17972h() {
        this.f3856d = true;
    }

    /* renamed from: i */
    public final boolean m17971i() {
        return this.f3857e;
    }

    /* renamed from: j */
    public Executor m17970j() {
        return this.f3854b.m17960c();
    }

    /* renamed from: k */
    public AbstractC1271a mo17553k() {
        return this.f3854b.m17959d();
    }

    /* renamed from: l */
    public AbstractC1313v m17969l() {
        return this.f3854b.m17958e();
    }
}
