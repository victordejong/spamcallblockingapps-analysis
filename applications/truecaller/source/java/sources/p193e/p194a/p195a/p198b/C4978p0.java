package p193e.p194a.p195a.p198b;

import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import s1.z.c.l;
/* renamed from: e.a.a.b.p0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/p0.class */
public final class C4978p0 extends RecyclerView.AbstractC0338t implements RecyclerView.AbstractC0337s {

    /* renamed from: a */
    public float f16996a;

    /* renamed from: b */
    public float f16997b;

    /* renamed from: c */
    public int f16998c;

    /* renamed from: d */
    public float f16999d;

    /* renamed from: e */
    public float f17000e;

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: a */
    public void mo3155a(RecyclerView recyclerView, MotionEvent motionEvent) {
        l.e(recyclerView, "rv");
        l.e(motionEvent, "e");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: b */
    public boolean mo3154b(RecyclerView recyclerView, MotionEvent motionEvent) {
        l.e(recyclerView, "rv");
        l.e(motionEvent, "e");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f16996a = motionEvent.getX();
            this.f16997b = motionEvent.getY();
            return false;
        } else if (actionMasked != 2 || this.f16998c == 1) {
            return false;
        } else {
            this.f16999d = motionEvent.getX() - this.f16996a;
            this.f17000e = motionEvent.getY() - this.f16997b;
            return false;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0337s
    /* renamed from: c */
    public void mo3153c(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        l.e(recyclerView, "recyclerView");
        int i2 = this.f16998c;
        this.f16998c = i;
        if (i2 == 0 && i == 1 && Math.abs(this.f17000e) > Math.abs(this.f16999d) / 2) {
            recyclerView.stopScroll();
        }
    }
}
