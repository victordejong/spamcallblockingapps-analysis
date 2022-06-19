package p193e.p194a.p195a.p200c;

import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.a.c.z3 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/z3.class */
public class C5834z3 implements RecyclerView.AbstractC0337s {

    /* renamed from: a */
    public final /* synthetic */ C5815y3 f19571a;

    public C5834z3(C5815y3 c5815y3) {
        this.f19571a = c5815y3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: a */
    public void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: b */
    public boolean mo3154b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) == null) {
            this.f19571a.f19488d.mo33222si();
            return false;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: c */
    public void mo3153c(boolean z) {
    }
}
