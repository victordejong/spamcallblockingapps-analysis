package p193e.p194a.p195a.p237h1.p239o;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import p193e.p194a.p195a.p237h1.p239o.C6374n;
import s1.z.c.l;
/* renamed from: e.a.a.h1.o.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/b.class */
public abstract class AbstractView$OnTouchListenerC6357b implements View.OnTouchListener {

    /* renamed from: a */
    public boolean f21203a;

    /* renamed from: b */
    public float f21204b;

    /* renamed from: c */
    public float f21205c;

    /* renamed from: d */
    public final C6358a f21206d;

    /* renamed from: e */
    public final GestureDetector f21207e;

    /* renamed from: e.a.a.h1.o.b$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/b$a.class */
    public static final class C6358a extends GestureDetector.SimpleOnGestureListener {
        public C6358a() {
            AbstractView$OnTouchListenerC6357b.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            l.e(motionEvent, "e");
            AbstractView$OnTouchListenerC6357b abstractView$OnTouchListenerC6357b = AbstractView$OnTouchListenerC6357b.this;
            abstractView$OnTouchListenerC6357b.f21204b = 0.0f;
            abstractView$OnTouchListenerC6357b.f21205c = 0.0f;
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            l.e(motionEvent, "e1");
            l.e(motionEvent2, "e2");
            AbstractView$OnTouchListenerC6357b abstractView$OnTouchListenerC6357b = AbstractView$OnTouchListenerC6357b.this;
            abstractView$OnTouchListenerC6357b.f21204b = f;
            abstractView$OnTouchListenerC6357b.f21205c = f2;
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            l.e(motionEvent, "e1");
            l.e(motionEvent2, "e2");
            AbstractView$OnTouchListenerC6357b abstractView$OnTouchListenerC6357b = AbstractView$OnTouchListenerC6357b.this;
            if (!abstractView$OnTouchListenerC6357b.f21203a) {
                C6374n.C6376b c6376b = (C6374n.C6376b) abstractView$OnTouchListenerC6357b;
                ValueAnimator valueAnimator = C6374n.this.f21254m;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                C6374n c6374n = C6374n.this;
                c6374n.f21254m = null;
                C6360d c6360d = c6374n.f21245d;
                c6360d.setVisibility(0);
                c6360d.f21211b.setAlpha(0.0f);
                c6360d.f21210a.setTranslationY(c6360d.getHeight() - c6360d.f21210a.getTop());
                c6360d.f21211b.animate().alpha(1.0f).start();
                c6360d.f21210a.animate().translationY(0.0f).setUpdateListener(null).start();
            }
            AbstractView$OnTouchListenerC6357b abstractView$OnTouchListenerC6357b2 = AbstractView$OnTouchListenerC6357b.this;
            abstractView$OnTouchListenerC6357b2.f21203a = true;
            C6374n.C6376b c6376b2 = (C6374n.C6376b) abstractView$OnTouchListenerC6357b2;
            Objects.requireNonNull(c6376b2);
            l.e(motionEvent, "e1");
            l.e(motionEvent2, "e2");
            C6374n.m31367n(C6374n.this, motionEvent2.getX() - 0.0f, motionEvent2.getY() - 0.0f, false, 4);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            l.e(motionEvent, "e");
            C6374n.this.f21256o.mo31392Rc();
            return true;
        }
    }

    public AbstractView$OnTouchListenerC6357b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C6358a c6358a = new C6358a();
        this.f21206d = c6358a;
        this.f21207e = new GestureDetector(context, c6358a);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        l.e(view, "v");
        l.e(motionEvent, "event");
        motionEvent.setLocation(motionEvent.getRawX(), motionEvent.getRawY());
        boolean onTouchEvent = this.f21207e.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 && this.f21203a) {
            this.f21203a = false;
            float f = this.f21205c;
            C6374n.C6376b c6376b = (C6374n.C6376b) this;
            C6374n c6374n = C6374n.this;
            if (c6374n.f21250i) {
                c6374n.f21245d.m31407a(new C6380o(c6376b), new C6381p(c6376b));
            } else {
                C6360d c6360d = c6374n.f21245d;
                int i = C6360d.f21209c;
                c6360d.m31407a(null, null);
                C6374n c6374n2 = C6374n.this;
                c6374n2.f21256o.mo31389e3(c6374n2.f21249h);
                C6374n c6374n3 = C6374n.this;
                float width = c6374n3.m31369l().width();
                if (c6374n3.f21242a.getLayoutDirection() != 1) {
                    width = 0.0f;
                }
                float f2 = c6374n3.f21249h;
                float f3 = c6374n3.f21248g;
                ValueAnimator ofFloat = ObjectAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.addUpdateListener(new C6382q(c6374n3, f3, width, f2, (f * 0.25f) + f2));
                ofFloat.setDuration(800L);
                ofFloat.setInterpolator(new DecelerateInterpolator(2.0f));
                ofFloat.start();
                c6374n3.f21254m = ofFloat;
            }
        }
        return onTouchEvent;
    }
}
