package p459j.p460a.p582w0;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import p459j.p460a.p582w0.p590x4.C14247d;
import p660rx.Scheduler;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.u */
/* loaded from: classes3-dex2jar.jar:j/a/w0/u.class */
public class C14174u {

    /* renamed from: a */
    public static final String f31694a = "u";

    /* renamed from: j.a.w0.u$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/u$a.class */
    public static final class ThreadFactoryC14175a implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(10);
            thread.setDaemon(true);
            return thread;
        }
    }

    /* renamed from: j.a.w0.u$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/u$b.class */
    public static final class ThreadFactoryC14176b implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(10);
            thread.setDaemon(false);
            return thread;
        }
    }

    /* renamed from: j.a.w0.u$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/u$c.class */
    public static final class ThreadFactoryC14177c implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(5);
            thread.setDaemon(true);
            return thread;
        }
    }

    /* renamed from: j.a.w0.u$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d.class */
    public static class C14178d {

        /* renamed from: a */
        public static volatile ExecutorService f31695a = Executors.newSingleThreadExecutor(new ThreadFactoryC14179a());

        /* renamed from: b */
        public static volatile ExecutorService f31696b = Executors.newSingleThreadExecutor(new ThreadFactoryC14180b());

        /* renamed from: c */
        public static volatile ExecutorService f31697c = Executors.newSingleThreadExecutor(new ThreadFactoryC14181c());

        /* renamed from: d */
        public static volatile ExecutorService f31698d = Executors.newSingleThreadExecutor(new ThreadFactoryC14182d());

        /* renamed from: e */
        public static volatile ExecutorService f31699e = Executors.newSingleThreadExecutor(new ThreadFactoryC14183e());

        /* renamed from: f */
        public static volatile ExecutorService f31700f = Executors.newSingleThreadExecutor(new ThreadFactoryC14184f());

        /* renamed from: g */
        public static volatile ExecutorService f31701g = Executors.newSingleThreadExecutor(new ThreadFactoryC14185g());

        /* renamed from: h */
        public static volatile ExecutorService f31702h = null;

        /* renamed from: i */
        public static volatile ExecutorService f31703i = null;

        /* renamed from: j */
        public static volatile ExecutorService f31704j = null;

        /* renamed from: k */
        public static volatile Handler f31705k = new Handler(Looper.getMainLooper());

        /* renamed from: l */
        public static volatile Handler f31706l = new Handler(Looper.getMainLooper());

        /* renamed from: m */
        public static volatile Handler f31707m = new Handler(Looper.getMainLooper());

        /* renamed from: n */
        public static volatile Scheduler f31708n = Schedulers.from(C14174u.m2288p());

        /* renamed from: o */
        public static volatile Scheduler f31709o = Schedulers.from(C14174u.m2301c());

        /* renamed from: p */
        public static volatile Scheduler f31710p = Schedulers.from(C14174u.m2291m());

        /* renamed from: j.a.w0.u$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$a.class */
        public static final class ThreadFactoryC14179a implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(1);
                thread.setDaemon(true);
                return thread;
            }
        }

        /* renamed from: j.a.w0.u$d$b */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$b.class */
        public static final class ThreadFactoryC14180b implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(10);
                thread.setDaemon(true);
                return thread;
            }
        }

        /* renamed from: j.a.w0.u$d$c */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$c.class */
        public static final class ThreadFactoryC14181c implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(5);
                thread.setDaemon(true);
                return thread;
            }
        }

        /* renamed from: j.a.w0.u$d$d */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$d.class */
        public static final class ThreadFactoryC14182d implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(5);
                thread.setDaemon(true);
                return thread;
            }
        }

        /* renamed from: j.a.w0.u$d$e */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$e.class */
        public static final class ThreadFactoryC14183e implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(5);
                thread.setDaemon(true);
                return thread;
            }
        }

        /* renamed from: j.a.w0.u$d$f */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$f.class */
        public static final class ThreadFactoryC14184f implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(5);
                thread.setDaemon(true);
                return thread;
            }
        }

        /* renamed from: j.a.w0.u$d$g */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/u$d$g.class */
        public static final class ThreadFactoryC14185g implements ThreadFactory {
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(@NonNull Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setPriority(1);
                thread.setDaemon(true);
                return thread;
            }
        }
    }

    /* renamed from: a */
    public static Scheduler m2303a() {
        return C14178d.f31708n;
    }

    /* renamed from: b */
    public static Scheduler m2302b() {
        return C14178d.f31709o;
    }

    /* renamed from: c */
    public static ExecutorService m2301c() {
        return C14178d.f31696b;
    }

    @NonNull
    /* renamed from: d */
    public static ExecutorService m2300d() {
        return C14178d.f31697c;
    }

    @NonNull
    /* renamed from: e */
    public static Scheduler m2299e() {
        return Schedulers.from(C14178d.f31698d);
    }

    @NonNull
    /* renamed from: f */
    public static Scheduler m2298f() {
        return Schedulers.from(C14178d.f31700f);
    }

    @NonNull
    /* renamed from: g */
    public static ExecutorService m2297g() {
        if (C14178d.f31704j == null) {
            C14178d.f31704j = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() + 1, new ThreadFactoryC14177c());
        }
        return C14178d.f31704j;
    }

    @NonNull
    /* renamed from: h */
    public static ExecutorService m2296h() {
        return C14178d.f31699e;
    }

    @NonNull
    /* renamed from: i */
    public static ExecutorService m2295i() {
        String str;
        if (C14178d.f31703i == null || C14178d.f31703i.isShutdown()) {
            String str2 = f31694a;
            StringBuilder sb = new StringBuilder();
            sb.append("initLogAggregateExecutorService status : ");
            if (C14178d.f31703i == null) {
                str = C14247d.f31851f;
            } else {
                str = "isShutdown (" + C14178d.f31703i.isShutdown() + ")";
            }
            sb.append(str);
            C14080m2.m2615a(str2, sb.toString());
            C14178d.f31703i = Executors.newSingleThreadExecutor(new ThreadFactoryC14175a());
        }
        return C14178d.f31703i;
    }

    @NonNull
    /* renamed from: j */
    public static Scheduler m2294j() {
        return Schedulers.from(m2295i());
    }

    /* renamed from: k */
    public static Handler m2293k() {
        return C14178d.f31705k;
    }

    /* renamed from: l */
    public static Scheduler m2292l() {
        return C14178d.f31710p;
    }

    /* renamed from: m */
    public static ExecutorService m2291m() {
        return C14178d.f31701g;
    }

    @NonNull
    /* renamed from: n */
    public static ExecutorService m2290n() {
        String str;
        if (C14178d.f31702h == null || C14178d.f31702h.isShutdown()) {
            String str2 = f31694a;
            StringBuilder sb = new StringBuilder();
            sb.append("initLogAggregateExecutorService status : ");
            if (C14178d.f31702h == null) {
                str = C14247d.f31851f;
            } else {
                str = "isShutdown (" + C14178d.f31702h.isShutdown() + ")";
            }
            sb.append(str);
            C14080m2.m2615a(str2, sb.toString());
            C14178d.f31702h = Executors.newSingleThreadExecutor(new ThreadFactoryC14176b());
        }
        return C14178d.f31702h;
    }

    @NonNull
    /* renamed from: o */
    public static Scheduler m2289o() {
        return Schedulers.from(m2290n());
    }

    /* renamed from: p */
    public static ExecutorService m2288p() {
        return C14178d.f31695a;
    }

    /* renamed from: q */
    public static Handler m2287q() {
        return C14178d.f31706l;
    }

    /* renamed from: r */
    public static Handler m2286r() {
        return C14178d.f31707m;
    }

    /* renamed from: s */
    public static void m2285s() {
        if (C14178d.f31702h != null) {
            try {
                if (!C14178d.f31702h.isShutdown()) {
                    C14178d.f31702h.shutdown();
                }
                C14178d.f31702h = null;
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }
}
