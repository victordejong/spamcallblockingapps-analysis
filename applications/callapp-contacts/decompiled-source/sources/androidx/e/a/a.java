package androidx.e.a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import androidx.b.g;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/e/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final ThreadLocal<a> f2110a = new ThreadLocal<>();
    private c g;

    /* renamed from: b  reason: collision with root package name */
    final g<b, Long> f2111b = new g<>();

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<b> f2112c = new ArrayList<>();
    private final C0059a f = new C0059a();

    /* renamed from: d  reason: collision with root package name */
    long f2113d = 0;
    boolean e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.e.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$a.class */
    public final class C0059a {
        C0059a() {
        }

        final void a() {
            a.this.f2113d = SystemClock.uptimeMillis();
            a aVar = a.this;
            long j = aVar.f2113d;
            long uptimeMillis = SystemClock.uptimeMillis();
            int i = 0;
            while (true) {
                boolean z = true;
                if (i >= aVar.f2112c.size()) {
                    break;
                }
                b bVar = aVar.f2112c.get(i);
                if (bVar != null) {
                    Long l = aVar.f2111b.get(bVar);
                    if (l != null) {
                        if (l.longValue() < uptimeMillis) {
                            aVar.f2111b.remove(bVar);
                        } else {
                            z = false;
                        }
                    }
                    if (z) {
                        bVar.a(j);
                    }
                }
                i++;
            }
            if (aVar.e) {
                for (int size = aVar.f2112c.size() - 1; size >= 0; size--) {
                    if (aVar.f2112c.get(size) == null) {
                        aVar.f2112c.remove(size);
                    }
                }
                aVar.e = false;
            }
            if (a.this.f2112c.size() > 0) {
                a.this.b().a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$b.class */
    public interface b {
        boolean a(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$c.class */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        final C0059a f2115a;

        c(C0059a aVar) {
            this.f2115a = aVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$d.class */
    public static final class d extends c {

        /* renamed from: b  reason: collision with root package name */
        long f2116b = -1;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f2117c = new Runnable() { // from class: androidx.e.a.a.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.this.f2116b = SystemClock.uptimeMillis();
                d.this.f2115a.a();
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private final Handler f2118d = new Handler(Looper.myLooper());

        d(C0059a aVar) {
            super(aVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.e.a.a.c
        public final void a() {
            this.f2118d.postDelayed(this.f2117c, Math.max(10 - (SystemClock.uptimeMillis() - this.f2116b), 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/a$e.class */
    public static final class e extends c {

        /* renamed from: b  reason: collision with root package name */
        private final Choreographer f2120b = Choreographer.getInstance();

        /* renamed from: c  reason: collision with root package name */
        private final Choreographer.FrameCallback f2121c = new Choreographer.FrameCallback() { // from class: androidx.e.a.a.e.1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                e.this.f2115a.a();
            }
        };

        e(C0059a aVar) {
            super(aVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.e.a.a.c
        public final void a() {
            this.f2120b.postFrameCallback(this.f2121c);
        }
    }

    a() {
    }

    public static a a() {
        ThreadLocal<a> threadLocal = f2110a;
        if (threadLocal.get() == null) {
            threadLocal.set(new a());
        }
        return threadLocal.get();
    }

    public final void a(b bVar) {
        this.f2111b.remove(bVar);
        int indexOf = this.f2112c.indexOf(bVar);
        if (indexOf >= 0) {
            this.f2112c.set(indexOf, null);
            this.e = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c b() {
        if (this.g == null) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.g = new e(this.f);
            } else {
                this.g = new d(this.f);
            }
        }
        return this.g;
    }
}
