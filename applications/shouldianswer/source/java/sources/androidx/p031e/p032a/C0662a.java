package androidx.p031e.p032a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.p014c.C0387g;
import java.util.ArrayList;
/* renamed from: androidx.e.a.a */
/* loaded from: classes-dex2jar.jar:androidx/e/a/a.class */
public class C0662a {

    /* renamed from: a */
    public static final ThreadLocal<C0662a> f2189a = new ThreadLocal<>();

    /* renamed from: f */
    private AbstractC0665c f2194f;

    /* renamed from: d */
    private final C0387g<AbstractC0664b, Long> f2192d = new C0387g<>();

    /* renamed from: b */
    final ArrayList<AbstractC0664b> f2190b = new ArrayList<>();

    /* renamed from: e */
    private final C0663a f2193e = new C0663a();

    /* renamed from: c */
    long f2191c = 0;

    /* renamed from: g */
    private boolean f2195g = false;

    /* renamed from: androidx.e.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$a.class */
    public class C0663a {
        C0663a() {
            C0662a.this = r4;
        }

        /* renamed from: a */
        void m5766a() {
            C0662a.this.f2191c = SystemClock.uptimeMillis();
            C0662a c0662a = C0662a.this;
            c0662a.m5772a(c0662a.f2191c);
            if (C0662a.this.f2190b.size() > 0) {
                C0662a.this.m5769b().mo5765a();
            }
        }
    }

    /* renamed from: androidx.e.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$b.class */
    public interface AbstractC0664b {
        /* renamed from: a */
        boolean mo5764a(long j);
    }

    /* renamed from: androidx.e.a.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$c.class */
    public static abstract class AbstractC0665c {

        /* renamed from: a */
        final C0663a f2197a;

        AbstractC0665c(C0663a c0663a) {
            this.f2197a = c0663a;
        }

        /* renamed from: a */
        abstract void mo5765a();
    }

    /* renamed from: androidx.e.a.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$d.class */
    public static class C0666d extends AbstractC0665c {

        /* renamed from: b */
        long f2198b = -1;

        /* renamed from: c */
        private final Runnable f2199c = new Runnable() { // from class: androidx.e.a.a.d.1
            @Override // java.lang.Runnable
            public void run() {
                C0666d.this.f2198b = SystemClock.uptimeMillis();
                C0666d.this.f2197a.m5766a();
            }
        };

        /* renamed from: d */
        private final Handler f2200d = new Handler(Looper.myLooper());

        C0666d(C0663a c0663a) {
            super(c0663a);
        }

        @Override // androidx.p031e.p032a.C0662a.AbstractC0665c
        /* renamed from: a */
        void mo5765a() {
            this.f2200d.postDelayed(this.f2199c, Math.max(10 - (SystemClock.uptimeMillis() - this.f2198b), 0L));
        }
    }

    /* renamed from: androidx.e.a.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$e.class */
    public static class C0668e extends AbstractC0665c {

        /* renamed from: b */
        private final Choreographer f2202b = Choreographer.getInstance();

        /* renamed from: c */
        private final Choreographer.FrameCallback f2203c = new Choreographer.FrameCallback() { // from class: androidx.e.a.a.e.1
            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j) {
                C0668e.this.f2197a.m5766a();
            }
        };

        C0668e(C0663a c0663a) {
            super(c0663a);
        }

        @Override // androidx.p031e.p032a.C0662a.AbstractC0665c
        /* renamed from: a */
        void mo5765a() {
            this.f2202b.postFrameCallback(this.f2203c);
        }
    }

    C0662a() {
    }

    /* renamed from: a */
    public static C0662a m5773a() {
        if (f2189a.get() == null) {
            f2189a.set(new C0662a());
        }
        return f2189a.get();
    }

    /* renamed from: b */
    private boolean m5768b(AbstractC0664b abstractC0664b, long j) {
        Long l = this.f2192d.get(abstractC0664b);
        if (l == null) {
            return true;
        }
        if (l.longValue() >= j) {
            return false;
        }
        this.f2192d.remove(abstractC0664b);
        return true;
    }

    /* renamed from: c */
    private void m5767c() {
        if (this.f2195g) {
            for (int size = this.f2190b.size() - 1; size >= 0; size--) {
                if (this.f2190b.get(size) == null) {
                    this.f2190b.remove(size);
                }
            }
            this.f2195g = false;
        }
    }

    /* renamed from: a */
    void m5772a(long j) {
        long uptimeMillis = SystemClock.uptimeMillis();
        for (int i = 0; i < this.f2190b.size(); i++) {
            AbstractC0664b abstractC0664b = this.f2190b.get(i);
            if (abstractC0664b != null && m5768b(abstractC0664b, uptimeMillis)) {
                abstractC0664b.mo5764a(j);
            }
        }
        m5767c();
    }

    /* renamed from: a */
    public void m5771a(AbstractC0664b abstractC0664b) {
        this.f2192d.remove(abstractC0664b);
        int indexOf = this.f2190b.indexOf(abstractC0664b);
        if (indexOf >= 0) {
            this.f2190b.set(indexOf, null);
            this.f2195g = true;
        }
    }

    /* renamed from: a */
    public void m5770a(AbstractC0664b abstractC0664b, long j) {
        if (this.f2190b.size() == 0) {
            m5769b().mo5765a();
        }
        if (!this.f2190b.contains(abstractC0664b)) {
            this.f2190b.add(abstractC0664b);
        }
        if (j > 0) {
            this.f2192d.put(abstractC0664b, Long.valueOf(SystemClock.uptimeMillis() + j));
        }
    }

    /* renamed from: b */
    AbstractC0665c m5769b() {
        if (this.f2194f == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f2194f = new C0668e(this.f2193e);
            } else {
                this.f2194f = new C0666d(this.f2193e);
            }
        }
        return this.f2194f;
    }
}
