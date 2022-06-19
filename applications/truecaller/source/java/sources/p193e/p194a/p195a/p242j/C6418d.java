package p193e.p194a.p195a.p242j;

import android.view.ScaleGestureDetector;
import com.truecaller.messaging.mediaviewer.InteractiveMediaView;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.j.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/d.class */
public final class C6418d extends ScaleGestureDetector.SimpleOnScaleGestureListener {

    /* renamed from: a */
    public final /* synthetic */ InteractiveMediaView f21343a;

    public C6418d(InteractiveMediaView interactiveMediaView) {
        this.f21343a = interactiveMediaView;
    }

    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        l.e(scaleGestureDetector, "detector");
        InteractiveMediaView interactiveMediaView = this.f21343a;
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        float focusX = scaleGestureDetector.getFocusX();
        float focusY = scaleGestureDetector.getFocusY();
        C6420f c6420f = interactiveMediaView.f13568t;
        if (!(C19286f.m13663p(c6420f.f21347c) || C19286f.m13663p(c6420f.f21348d))) {
            float f = interactiveMediaView.f13551c * scaleFactor;
            interactiveMediaView.f13551c = f;
            k<Float, Float> m34961k = interactiveMediaView.m34961k(scaleFactor, f, focusX, focusY);
            float floatValue = ((Number) m34961k.a).floatValue();
            float floatValue2 = ((Number) m34961k.b).floatValue();
            interactiveMediaView.f13549a += floatValue;
            interactiveMediaView.f13550b += floatValue2;
            interactiveMediaView.f13552d = focusX;
            interactiveMediaView.f13553e = focusY;
        }
        this.f21343a.invalidate();
        return true;
    }
}
