package androidx.p042e.p043a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.p023b.C0441g;
import java.util.ArrayList;
/* renamed from: androidx.e.a.a */
/* loaded from: classes-dex2jar.jar:androidx/e/a/a.class */
public final class C0992a {

    /* renamed from: a */
    public static final ThreadLocal<C0992a> f3988a = new ThreadLocal<>();

    /* renamed from: g */
    private AbstractC0995c f3994g;

    /* renamed from: b */
    final C0441g<AbstractC0994b, Long> f3989b = new C0441g<>();

    /* renamed from: c */
    final ArrayList<AbstractC0994b> f3990c = new ArrayList<>();

    /* renamed from: f */
    private final C0993a f3993f = new C0993a();

    /* renamed from: d */
    long f3991d = 0;

    /* renamed from: e */
    boolean f3992e = false;

    /* renamed from: androidx.e.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$a.class */
    public final class C0993a {
        C0993a() {
            C0992a.this = r4;
        }

        /* renamed from: a */
        final void m43835a() {
            C0992a.this.f3991d = SystemClock.uptimeMillis();
            C0992a c0992a = C0992a.this;
            long j = c0992a.f3991d;
            long uptimeMillis = SystemClock.uptimeMillis();
            int i = 0;
            while (true) {
                boolean z = true;
                if (i >= c0992a.f3990c.size()) {
                    break;
                }
                AbstractC0994b abstractC0994b = c0992a.f3990c.get(i);
                if (abstractC0994b != null) {
                    Long l = c0992a.f3989b.get(abstractC0994b);
                    if (l != null) {
                        if (l.longValue() < uptimeMillis) {
                            c0992a.f3989b.remove(abstractC0994b);
                        } else {
                            z = false;
                        }
                    }
                    if (z) {
                        abstractC0994b.mo43832a(j);
                    }
                }
                i++;
            }
            if (c0992a.f3992e) {
                for (int size = c0992a.f3990c.size() - 1; size >= 0; size--) {
                    if (c0992a.f3990c.get(size) == null) {
                        c0992a.f3990c.remove(size);
                    }
                }
                c0992a.f3992e = false;
            }
            if (C0992a.this.f3990c.size() > 0) {
                C0992a.this.m43836b().mo43834a();
            }
        }
    }

    /* renamed from: androidx.e.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$b.class */
    public interface AbstractC0994b {
        /* renamed from: a */
        boolean mo43832a(long j);
    }

    /* renamed from: androidx.e.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$c.class */
    public static abstract class AbstractC0995c {

        /* renamed from: a */
        final C0993a f3996a;

        AbstractC0995c(C0993a c0993a) {
            this.f3996a = c0993a;
        }

        /* renamed from: a */
        public abstract void mo43834a();
    }

    /* renamed from: androidx.e.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$d.class */
    public static final class C0996d extends AbstractC0995c {

        /* renamed from: b */
        long f3997b = -1;

        /* renamed from: c */
        private final Runnable f3998c = new Runnable() { // from class: androidx.e.a.a.d.1
            @Override // java.lang.Runnable
            public final void run() {
                C0996d.this.f3997b = SystemClock.uptimeMillis();
                C0996d.this.f3996a.m43835a();
            }
        };

        /* renamed from: d */
        private final Handler f3999d = new Handler(Looper.myLooper());

        C0996d(C0993a c0993a) {
            super(c0993a);
        }

        @Override // androidx.p042e.p043a.C0992a.AbstractC0995c
        /* renamed from: a */
        public final void mo43834a() {
            this.f3999d.postDelayed(this.f3998c, Math.max(10 - (SystemClock.uptimeMillis() - this.f3997b), 0L));
        }
    }

    /* renamed from: androidx.e.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$e.class */
    public static final class C0998e extends AbstractC0995c {

        /* renamed from: b */
        private final Choreographer f4001b = Choreographer.getInstance();

        /* renamed from: c */
        private final Choreographer.FrameCallback f4002c = new Choreographer.FrameCallback() { // from class: androidx.e.a.a.e.1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                C0998e.this.f3996a.m43835a();
            }
        };

        C0998e(C0993a c0993a) {
            super(c0993a);
        }

        @Override // androidx.p042e.p043a.C0992a.AbstractC0995c
        /* renamed from: a */
        public final void mo43834a() {
            this.f4001b.postFrameCallback(this.f4002c);
        }
    }

    C0992a() {
    }

    /* renamed from: a */
    public static C0992a m43838a() {
        ThreadLocal<C0992a> threadLocal = f3988a;
        if (threadLocal.get() == null) {
            threadLocal.set(new C0992a());
        }
        return threadLocal.get();
    }

    /* renamed from: a */
    public final void m43837a(AbstractC0994b abstractC0994b) {
        this.f3989b.remove(abstractC0994b);
        int indexOf = this.f3990c.indexOf(abstractC0994b);
        if (indexOf >= 0) {
            this.f3990c.set(indexOf, null);
            this.f3992e = true;
        }
    }

    /* renamed from: b */
    public final AbstractC0995c m43836b() {
        if (this.f3994g == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f3994g = new C0998e(this.f3993f);
            } else {
                this.f3994g = new C0996d(this.f3993f);
            }
        }
        return this.f3994g;
    }
}
