package p081h.p203i.p204a.p294f.p314t;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import p081h.p203i.p204a.p294f.p314t.C9269f;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.t.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/t/a.class */
public class C9263a {

    /* renamed from: a */
    public C9269f.AbstractC9271b f21270a;

    public C9263a(SwipeDismissBehavior<?> swipeDismissBehavior) {
        swipeDismissBehavior.m31542b(0.1f);
        swipeDismissBehavior.m31547a(0.6f);
        swipeDismissBehavior.m31545a(0);
    }

    /* renamed from: a */
    public void m15562a(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                C9269f.m15558a().m15552c(this.f21270a);
            }
        } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            C9269f.m15558a().m15554b(this.f21270a);
        }
    }

    /* renamed from: a */
    public boolean m15563a(View view) {
        return view instanceof C9266d;
    }
}
