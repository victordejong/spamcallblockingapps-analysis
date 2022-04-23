package p131c.p135b.p136a.p138b;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.webkit.WebView;
/* renamed from: c.b.a.b.g */
/* loaded from: classes-dex2jar.jar:c/b/a/b/g.class */
public class C2081g extends WebView {

    /* renamed from: a */
    public PointF f8053a = new PointF();

    public C2081g(Context context) {
        super(context);
    }

    public PointF getAndClearLastClickLocation() {
        PointF pointF = this.f8053a;
        this.f8053a = new PointF();
        return pointF;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f8053a = new PointF(motionEvent.getRawX(), motionEvent.getRawY());
        return super.onTouchEvent(motionEvent);
    }
}
