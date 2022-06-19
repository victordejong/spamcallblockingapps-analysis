package p193e.p194a.p195a.p237h1.p239o;

import android.view.ViewPropertyAnimator;
/* renamed from: e.a.a.h1.o.e */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/e.class */
public final class RunnableC6363e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6365f f21216a;

    /* renamed from: e.a.a.h1.o.e$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/e$a.class */
    public static final class RunnableC6364a implements Runnable {
        public RunnableC6364a() {
            RunnableC6363e.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC6363e.this.f21216a.setVisibility(8);
        }
    }

    public RunnableC6363e(C6365f c6365f) {
        this.f21216a = c6365f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float startTranslationX;
        ViewPropertyAnimator animate = this.f21216a.animate();
        startTranslationX = this.f21216a.getStartTranslationX();
        animate.translationX(startTranslationX).withEndAction(new RunnableC6364a()).start();
    }
}
