package p193e.p194a.p294b.p331b.p334c;

import android.view.MotionEvent;
import android.view.View;
import com.truecaller.bizmon.p152ui.profile.CreateBusinessProfileActivity;
import s1.z.c.l;
/* renamed from: e.a.b.b.c.k */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/k.class */
public final class View$OnTouchListenerC7887k implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ CreateBusinessProfileActivity f24472a;

    public View$OnTouchListenerC7887k(CreateBusinessProfileActivity createBusinessProfileActivity) {
        this.f24472a = createBusinessProfileActivity;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.d(motionEvent, "event");
        if (motionEvent.getAction() == 1) {
            C7893q m35829qa = this.f24472a.m35829qa();
            AbstractC7892p abstractC7892p = (AbstractC7892p) m35829qa.f57683a;
            if (abstractC7892p == null) {
                return true;
            }
            abstractC7892p.mo29174F3(m35829qa.f24479e);
            return true;
        }
        return true;
    }
}
