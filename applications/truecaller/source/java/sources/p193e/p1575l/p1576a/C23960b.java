package p193e.p1575l.p1576a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* renamed from: e.l.a.b */
/* loaded from: classes2-dex2jar.jar:e/l/a/b.class */
public class C23960b {

    /* renamed from: a */
    public final ValueAnimator f66346a;

    /* renamed from: b */
    public AbstractC23962b f66347b;

    /* renamed from: e.l.a.b$a */
    /* loaded from: classes2-dex2jar.jar:e/l/a/b$a.class */
    public class C23961a extends AnimatorListenerAdapter {
        public C23961a() {
            C23960b.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C23960b.this.f66347b.mo5637a();
        }
    }

    /* renamed from: e.l.a.b$b */
    /* loaded from: classes2-dex2jar.jar:e/l/a/b$b.class */
    public interface AbstractC23962b {
        /* renamed from: a */
        void mo5637a();
    }

    /* renamed from: e.l.a.b$c */
    /* loaded from: classes2-dex2jar.jar:e/l/a/b$c.class */
    public interface AbstractC23963c {
        /* renamed from: a */
        void mo5636a(float f);
    }

    public C23960b(boolean z) {
        if (z) {
            this.f66346a = ValueAnimator.ofFloat(1.0f, 0.0f);
        } else {
            this.f66346a = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
    }

    /* renamed from: a */
    public ValueAnimator m5647a() {
        if (this.f66347b != null) {
            this.f66346a.addListener(new C23961a());
        }
        return this.f66346a;
    }
}
