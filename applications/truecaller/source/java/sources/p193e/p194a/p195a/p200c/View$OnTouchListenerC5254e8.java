package p193e.p194a.p195a.p200c;

import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.a.c.e8 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/e8.class */
public final class View$OnTouchListenerC5254e8 implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C5231d8 f18062a;

    /* renamed from: b */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f18063b;

    public View$OnTouchListenerC5254e8(C5231d8 c5231d8, RecyclerView.AbstractC0313c0 abstractC0313c0) {
        this.f18062a = c5231d8;
        this.f18063b = abstractC0313c0;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        C5231d8 c5231d8 = this.f18062a;
        l.d(motionEvent, "event");
        boolean z = true;
        if (motionEvent.getAction() != 3) {
            z = motionEvent.getAction() == 1;
        }
        c5231d8.f17951j = z;
        C5231d8 c5231d82 = this.f18062a;
        if (c5231d82.f17951j) {
            View view2 = c5231d82.f17952k;
            if (view2 == null) {
                l.l(ViewAction.VIEW);
                throw null;
            } else if (view2.getTranslationX() <= 0) {
                return false;
            } else {
                View view3 = this.f18062a.f17952k;
                if (view3 == null) {
                    l.l(ViewAction.VIEW);
                    throw null;
                } else if (Math.abs(view3.getTranslationX()) < this.f18062a.f17948g || this.f18063b.getAdapterPosition() == -1) {
                    return false;
                } else {
                    ((C5782v1) this.f18062a.f17953l).f19366a.f19486c.mo32725N6(this.f18063b.getAdapterPosition());
                    return false;
                }
            }
        }
        return false;
    }
}
