package p193e.p194a.p195a.p242j;

import android.animation.Animator;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.truecaller.messaging.mediaviewer.InteractiveMediaView;
import p193e.p194a.p437c.p578p.C10480a;
import s1.d0.e;
import s1.k;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.j.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/b.class */
public final class C6415b extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ InteractiveMediaView f21337a;

    /* renamed from: e.a.a.j.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/a/j/b$a.class */
    public static final class C6416a extends m implements l<Float, s> {

        /* renamed from: b */
        public final /* synthetic */ int f21338b;

        /* renamed from: c */
        public final /* synthetic */ Object f21339c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6416a(int i, Object obj) {
            super(1);
            this.f21338b = i;
            this.f21339c = obj;
        }

        /* renamed from: d */
        public final Object m31291d(Object obj) {
            s sVar = s.a;
            int i = this.f21338b;
            if (i == 0) {
                ((C6415b) this.f21339c).f21337a.f13549a = ((Number) obj).floatValue();
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                ((C6415b) this.f21339c).f21337a.f13550b = ((Number) obj).floatValue();
                return sVar;
            }
        }
    }

    public C6415b(InteractiveMediaView interactiveMediaView) {
        this.f21337a = interactiveMediaView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        e scaleLimits;
        s1.z.c.l.e(motionEvent, "e");
        if ((this.f21337a.f13568t.f21346b.getVisibility() == 0 ? 1 : null) != null) {
            C6420f c6420f = this.f21337a.f13568t;
            Object[] objArr = motionEvent.getX() < ((float) (this.f21337a.getWidth() / 2)) ? -10000 : 10000;
            SimpleExoPlayer simpleExoPlayer = c6420f.f21353i;
            if (simpleExoPlayer == null) {
                return true;
            }
            long duration = simpleExoPlayer.getDuration();
            if (duration == -9223372036854775807L) {
                return true;
            }
            simpleExoPlayer.seekTo(Math.min(Math.max(simpleExoPlayer.getCurrentPosition() + (objArr == 1 ? 1L : 0L), 0L), duration));
            return true;
        }
        InteractiveMediaView interactiveMediaView = this.f21337a;
        if (interactiveMediaView.f13551c > 1.0f) {
            interactiveMediaView.m34957o();
            return true;
        }
        scaleLimits = interactiveMediaView.getScaleLimits();
        if (!scaleLimits.b(Float.valueOf(2.0f))) {
            return true;
        }
        k<Float, Float> m34961k = this.f21337a.m34961k(2.0f, 2.0f, motionEvent.getX(), motionEvent.getY());
        float floatValue = ((Number) m34961k.a).floatValue();
        float floatValue2 = ((Number) m34961k.b).floatValue();
        InteractiveMediaView interactiveMediaView2 = this.f21337a;
        interactiveMediaView2.m34968d(C10480a.m25976d(floatValue, interactiveMediaView2.m34963i(2.0f)));
        InteractiveMediaView interactiveMediaView3 = this.f21337a;
        interactiveMediaView3.m34967e(C10480a.m25976d(floatValue2, interactiveMediaView3.m34962j(2.0f)));
        this.f21337a.m34965g(2.0f);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        Animator animator = this.f21337a.f13557i;
        if (animator == null || !animator.isRunning()) {
            InteractiveMediaView interactiveMediaView = this.f21337a;
            interactiveMediaView.f13560l = InteractiveMediaView.m34971a(interactiveMediaView, interactiveMediaView.f13549a, interactiveMediaView.m34963i(interactiveMediaView.f13551c), -f, new C6416a(0, this));
        }
        Animator animator2 = this.f21337a.f13558j;
        if (animator2 == null || !animator2.isRunning()) {
            InteractiveMediaView interactiveMediaView2 = this.f21337a;
            interactiveMediaView2.f13561m = InteractiveMediaView.m34971a(interactiveMediaView2, interactiveMediaView2.f13550b, interactiveMediaView2.m34962j(interactiveMediaView2.f13551c), -f2, new C6416a(1, this));
            return true;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        s1.z.c.l.e(motionEvent, "e1");
        s1.z.c.l.e(motionEvent2, "e2");
        InteractiveMediaView interactiveMediaView = this.f21337a;
        float f3 = interactiveMediaView.f13551c;
        if (f3 == 1.0f) {
            if (interactiveMediaView.f13565q == -1) {
                interactiveMediaView.f13565q = Math.abs(f) > Math.abs(f2) ? 0 : 1;
            }
            InteractiveMediaView interactiveMediaView2 = this.f21337a;
            int i = interactiveMediaView2.f13565q;
            if (i == 0) {
                interactiveMediaView2.f13549a = (f / interactiveMediaView2.f13551c) + interactiveMediaView2.f13549a;
            } else if (i == 1) {
                interactiveMediaView2.f13550b = (f2 / interactiveMediaView2.f13551c) + interactiveMediaView2.f13550b;
            }
        } else {
            interactiveMediaView.f13549a = (f / f3) + interactiveMediaView.f13549a;
            interactiveMediaView.f13550b = (f2 / f3) + interactiveMediaView.f13550b;
        }
        this.f21337a.invalidate();
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        s1.z.c.l.e(motionEvent, "e");
        return this.f21337a.performClick();
    }
}
