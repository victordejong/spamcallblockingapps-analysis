package p193e.p194a.p1349x.p1350a;

import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.truecaller.ghost_call.C4002R;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.x.a.b */
/* loaded from: classes9-dex2jar.jar:e/a/x/a/b.class */
public final class View$OnTouchListenerC21315b implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ MotionLayout f59700a;

    /* renamed from: b */
    public final /* synthetic */ C21311a f59701b;

    /* renamed from: c */
    public final /* synthetic */ y f59702c;

    /* renamed from: d */
    public final /* synthetic */ y f59703d;

    public View$OnTouchListenerC21315b(MotionLayout motionLayout, C21311a c21311a, y yVar, y yVar2) {
        this.f59700a = motionLayout;
        this.f59701b = c21311a;
        this.f59702c = yVar;
        this.f59703d = yVar2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.d(motionEvent, "event");
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f59703d.a = true;
            return false;
        } else if (action != 1) {
            return false;
        } else {
            if (this.f59702c.a || this.f59700a.getCurrentState() == C4002R.C4004id.incoming_incallui_answer_end_set) {
                C21311a.m9907TA(this.f59701b);
                this.f59702c.a = false;
            }
            this.f59703d.a = false;
            return false;
        }
    }
}
