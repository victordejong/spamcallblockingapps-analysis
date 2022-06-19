package p078c.p084c.p085a.p096b.p097m;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* renamed from: c.c.a.b.m.i */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/m/i.class */
public class C1905i {

    /* renamed from: a */
    private long f6828a;

    /* renamed from: b */
    private long f6829b;

    /* renamed from: c */
    private TimeInterpolator f6830c;

    /* renamed from: d */
    private int f6831d;

    /* renamed from: e */
    private int f6832e;

    public C1905i(long j, long j2) {
        this.f6828a = 0L;
        this.f6829b = 300L;
        this.f6830c = null;
        this.f6831d = 0;
        this.f6832e = 1;
        this.f6828a = j;
        this.f6829b = j2;
    }

    public C1905i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f6828a = 0L;
        this.f6829b = 300L;
        this.f6830c = null;
        this.f6831d = 0;
        this.f6832e = 1;
        this.f6828a = j;
        this.f6829b = j2;
        this.f6830c = timeInterpolator;
    }

    /* renamed from: b */
    public static C1905i m28726b(ValueAnimator valueAnimator) {
        C1905i c1905i = new C1905i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m28722f(valueAnimator));
        c1905i.f6831d = valueAnimator.getRepeatCount();
        c1905i.f6832e = valueAnimator.getRepeatMode();
        return c1905i;
    }

    /* renamed from: f */
    private static TimeInterpolator m28722f(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return C1897a.f6814b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return C1897a.f6815c;
        }
        TimeInterpolator timeInterpolator = interpolator;
        if (interpolator instanceof DecelerateInterpolator) {
            timeInterpolator = C1897a.f6816d;
        }
        return timeInterpolator;
    }

    /* renamed from: a */
    public void m28727a(Animator animator) {
        animator.setStartDelay(m28725c());
        animator.setDuration(m28724d());
        animator.setInterpolator(m28723e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(m28721g());
            valueAnimator.setRepeatMode(m28720h());
        }
    }

    /* renamed from: c */
    public long m28725c() {
        return this.f6828a;
    }

    /* renamed from: d */
    public long m28724d() {
        return this.f6829b;
    }

    /* renamed from: e */
    public TimeInterpolator m28723e() {
        TimeInterpolator timeInterpolator = this.f6830c;
        if (timeInterpolator == null) {
            timeInterpolator = C1897a.f6814b;
        }
        return timeInterpolator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1905i)) {
            return false;
        }
        C1905i c1905i = (C1905i) obj;
        if (m28725c() != c1905i.m28725c() || m28724d() != c1905i.m28724d() || m28721g() != c1905i.m28721g() || m28720h() != c1905i.m28720h()) {
            return false;
        }
        return m28723e().getClass().equals(c1905i.m28723e().getClass());
    }

    /* renamed from: g */
    public int m28721g() {
        return this.f6831d;
    }

    /* renamed from: h */
    public int m28720h() {
        return this.f6832e;
    }

    public int hashCode() {
        return (((((((((int) (m28725c() ^ (m28725c() >>> 32))) * 31) + ((int) (m28724d() ^ (m28724d() >>> 32)))) * 31) + m28723e().getClass().hashCode()) * 31) + m28721g()) * 31) + m28720h();
    }

    public String toString() {
        return '\n' + C1905i.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m28725c() + " duration: " + m28724d() + " interpolator: " + m28723e().getClass() + " repeatCount: " + m28721g() + " repeatMode: " + m28720h() + "}\n";
    }
}
