package p090f3;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import p007a6.C0033h;
/* renamed from: f3.h */
/* loaded from: classes-dex2jar.jar:f3/h.class */
public class C2734h {

    /* renamed from: a */
    public long f9386a;

    /* renamed from: b */
    public long f9387b;

    /* renamed from: c */
    public TimeInterpolator f9388c;

    /* renamed from: d */
    public int f9389d;

    /* renamed from: e */
    public int f9390e;

    public C2734h(long j, long j2) {
        this.f9386a = 0L;
        this.f9387b = 300L;
        this.f9388c = null;
        this.f9389d = 0;
        this.f9390e = 1;
        this.f9386a = j;
        this.f9387b = j2;
    }

    public C2734h(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f9386a = 0L;
        this.f9387b = 300L;
        this.f9388c = null;
        this.f9389d = 0;
        this.f9390e = 1;
        this.f9386a = j;
        this.f9387b = j2;
        this.f9388c = timeInterpolator;
    }

    /* renamed from: a */
    public void m3190a(Animator animator) {
        animator.setStartDelay(this.f9386a);
        animator.setDuration(this.f9387b);
        animator.setInterpolator(m3189b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f9389d);
            valueAnimator.setRepeatMode(this.f9390e);
        }
    }

    /* renamed from: b */
    public TimeInterpolator m3189b() {
        TimeInterpolator timeInterpolator = this.f9388c;
        if (timeInterpolator == null) {
            timeInterpolator = C2727a.f9373b;
        }
        return timeInterpolator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2734h)) {
            return false;
        }
        C2734h c2734h = (C2734h) obj;
        if (this.f9386a != c2734h.f9386a || this.f9387b != c2734h.f9387b || this.f9389d != c2734h.f9389d || this.f9390e != c2734h.f9390e) {
            return false;
        }
        return m3189b().getClass().equals(c2734h.m3189b().getClass());
    }

    public int hashCode() {
        long j = this.f9386a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f9387b;
        return ((((m3189b().getClass().hashCode() + (((i * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.f9389d) * 31) + this.f9390e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('\n');
        sb.append(C2734h.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f9386a);
        sb.append(" duration: ");
        sb.append(this.f9387b);
        sb.append(" interpolator: ");
        sb.append(m3189b().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f9389d);
        sb.append(" repeatMode: ");
        return C0033h.m8885l(sb, this.f9390e, "}\n");
    }
}
