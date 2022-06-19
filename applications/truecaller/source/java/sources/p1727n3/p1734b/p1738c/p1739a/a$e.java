package p1727n3.p1734b.p1738c.p1739a;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;
/* renamed from: n3.b.c.a.a$e */
/* loaded from: classes-dex2jar.jar:n3/b/c/a/a$e.class */
public class a$e extends a$g {

    /* renamed from: a */
    public final ObjectAnimator f71022a;

    /* renamed from: b */
    public final boolean f71023b;

    public a$e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
        super(null);
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i = z ? numberOfFrames - 1 : 0;
        int i2 = z ? 0 : numberOfFrames - 1;
        a$f a_f = new a$f(animationDrawable, z);
        ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
        ofInt.setAutoCancel(true);
        ofInt.setDuration(a_f.f71026c);
        ofInt.setInterpolator(a_f);
        this.f71023b = z2;
        this.f71022a = ofInt;
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.a$g
    /* renamed from: a */
    public boolean mo3539a() {
        return this.f71023b;
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.a$g
    /* renamed from: b */
    public void mo3538b() {
        this.f71022a.reverse();
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.a$g
    /* renamed from: c */
    public void mo3537c() {
        this.f71022a.start();
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.a$g
    /* renamed from: d */
    public void mo3536d() {
        this.f71022a.cancel();
    }
}
