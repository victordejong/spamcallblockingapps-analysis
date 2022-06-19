package p193e.p1577m.p1578a.p1677g.p1678a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.g.a.h */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a/h.class */
public class C25163h {

    /* renamed from: a */
    public long f70412a;

    /* renamed from: b */
    public long f70413b;

    /* renamed from: c */
    public TimeInterpolator f70414c;

    /* renamed from: d */
    public int f70415d;

    /* renamed from: e */
    public int f70416e;

    public C25163h(long j, long j2) {
        this.f70412a = 0L;
        this.f70413b = 300L;
        this.f70414c = null;
        this.f70415d = 0;
        this.f70416e = 1;
        this.f70412a = j;
        this.f70413b = j2;
    }

    public C25163h(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f70412a = 0L;
        this.f70413b = 300L;
        this.f70414c = null;
        this.f70415d = 0;
        this.f70416e = 1;
        this.f70412a = j;
        this.f70413b = j2;
        this.f70414c = timeInterpolator;
    }

    /* renamed from: a */
    public void m4142a(Animator animator) {
        animator.setStartDelay(this.f70412a);
        animator.setDuration(this.f70413b);
        animator.setInterpolator(m4141b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f70415d);
            valueAnimator.setRepeatMode(this.f70416e);
        }
    }

    /* renamed from: b */
    public TimeInterpolator m4141b() {
        TimeInterpolator timeInterpolator = this.f70414c;
        if (timeInterpolator == null) {
            timeInterpolator = C25156a.f70398b;
        }
        return timeInterpolator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C25163h)) {
            return false;
        }
        C25163h c25163h = (C25163h) obj;
        if (this.f70412a != c25163h.f70412a || this.f70413b != c25163h.f70413b || this.f70415d != c25163h.f70415d || this.f70416e != c25163h.f70416e) {
            return false;
        }
        return m4141b().getClass().equals(c25163h.m4141b().getClass());
    }

    public int hashCode() {
        long j = this.f70412a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f70413b;
        return ((((m4141b().getClass().hashCode() + (((i * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31)) * 31) + this.f70415d) * 31) + this.f70416e;
    }

    public String toString() {
        StringBuilder m8558w = C22128a.m8558w('\n');
        m8558w.append(C25163h.class.getName());
        m8558w.append('{');
        m8558w.append(Integer.toHexString(System.identityHashCode(this)));
        m8558w.append(" delay: ");
        m8558w.append(this.f70412a);
        m8558w.append(" duration: ");
        m8558w.append(this.f70413b);
        m8558w.append(" interpolator: ");
        m8558w.append(m4141b().getClass());
        m8558w.append(" repeatCount: ");
        m8558w.append(this.f70415d);
        m8558w.append(" repeatMode: ");
        return C22128a.m8697J2(m8558w, this.f70416e, "}\n");
    }
}
