package p193e.p194a.p195a.p237h1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.widget.ProgressBar;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.l;
/* renamed from: e.a.a.h1.d */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/d.class */
public final class C6323d {

    /* renamed from: a */
    public final Handler f21144a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public long f21145b;

    /* renamed from: c */
    public long f21146c;

    /* renamed from: d */
    public final ProgressBar f21147d;

    /* renamed from: e.a.a.h1.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/d$a.class */
    public static final /* synthetic */ class C6324a extends j implements a<s> {
        public C6324a(C6323d c6323d) {
            super(0, c6323d, C6323d.class, "update", "update()V", 0);
        }

        public Object invoke() {
            ((C6323d) ((b) this).b).m31443b();
            return s.a;
        }
    }

    /* renamed from: e.a.a.h1.d$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/d$b.class */
    public static final /* synthetic */ class C6325b extends j implements a<s> {
        public C6325b(C6323d c6323d) {
            super(0, c6323d, C6323d.class, "update", "update()V", 0);
        }

        public Object invoke() {
            ((C6323d) ((b) this).b).m31443b();
            return s.a;
        }
    }

    public C6323d(ProgressBar progressBar) {
        l.e(progressBar, "progressBar");
        this.f21147d = progressBar;
        progressBar.setMax(10000);
    }

    /* renamed from: a */
    public final void m31444a(long j, long j2) {
        this.f21145b = j;
        this.f21146c = j + j2;
        this.f21144a.removeCallbacks(new RunnableC6327f(new C6324a(this)));
        m31443b();
    }

    /* renamed from: b */
    public final void m31443b() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f21146c;
        float f = ((float) (j - elapsedRealtime)) / ((float) (j - this.f21145b));
        if (f < 0.0f || f > 1.0f) {
            return;
        }
        this.f21147d.setProgress((int) (f * 10000));
        this.f21144a.postDelayed(new RunnableC6327f(new C6325b(this)), 500L);
    }
}
