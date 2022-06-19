package p193e.p194a.p294b.p331b.p332a;

import android.view.MotionEvent;
import android.view.View;
import s1.z.c.l;
/* renamed from: e.a.b.b.a.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/a/e.class */
public final class View$OnTouchListenerC7852e implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C7844b f24410a;

    public View$OnTouchListenerC7852e(C7844b c7844b) {
        this.f24410a = c7844b;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        AbstractC7857j abstractC7857j;
        l.d(motionEvent, "event");
        if (motionEvent.getAction() != 1 || (abstractC7857j = (AbstractC7857j) this.f24410a.m29253PA().f57683a) == null) {
            return true;
        }
        abstractC7857j.mo29227um();
        return true;
    }
}
