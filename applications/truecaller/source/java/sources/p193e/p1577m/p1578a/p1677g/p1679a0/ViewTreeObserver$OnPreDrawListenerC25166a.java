package p193e.p1577m.p1578a.p1677g.p1679a0;

import android.view.ViewTreeObserver;
import com.google.android.material.timepicker.ClockFaceView;
import com.google.android.material.timepicker.ClockHandView;
/* renamed from: e.m.a.g.a0.a */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/a0/a.class */
public class ViewTreeObserver$OnPreDrawListenerC25166a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ ClockFaceView f70417a;

    public ViewTreeObserver$OnPreDrawListenerC25166a(ClockFaceView clockFaceView) {
        this.f70417a = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (!this.f70417a.isShown()) {
            return true;
        }
        this.f70417a.getViewTreeObserver().removeOnPreDrawListener(this);
        int height = this.f70417a.getHeight() / 2;
        ClockFaceView clockFaceView = this.f70417a;
        int i = (height - clockFaceView.w.f6971g) - clockFaceView.D;
        if (i == ((c) clockFaceView).u) {
            return true;
        }
        ((c) clockFaceView).u = i;
        clockFaceView.f1();
        ClockHandView clockHandView = clockFaceView.w;
        clockHandView.f6979o = ((c) clockFaceView).u;
        clockHandView.invalidate();
        return true;
    }
}
