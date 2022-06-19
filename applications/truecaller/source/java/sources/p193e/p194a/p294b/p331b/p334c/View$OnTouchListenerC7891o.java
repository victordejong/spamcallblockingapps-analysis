package p193e.p194a.p294b.p331b.p334c;

import android.view.MotionEvent;
import android.view.View;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.o */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/o.class */
public final class View$OnTouchListenerC7891o implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ CreateBusinessProfileActivity f24477a;

    public View$OnTouchListenerC7891o(CreateBusinessProfileActivity createBusinessProfileActivity) {
        this.f24477a = createBusinessProfileActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        AbstractC7892p abstractC7892p;
        l.d(motionEvent, "event");
        if (motionEvent.getAction() != 1 || (abstractC7892p = (AbstractC7892p) this.f24477a.m35829qa().f57683a) == null) {
            return true;
        }
        abstractC7892p.mo29155j1();
        return true;
    }
}
