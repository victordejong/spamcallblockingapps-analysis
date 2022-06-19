package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.C0611c;
/* renamed from: androidx.recyclerview.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/w.class */
public class C0649w implements C0611c.AbstractC0613b {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f2544a;

    public C0649w(RecyclerView recyclerView) {
        this.f2544a = recyclerView;
    }

    /* renamed from: a */
    public View m7530a(int i) {
        return this.f2544a.getChildAt(i);
    }

    /* renamed from: b */
    public int m7529b() {
        return this.f2544a.getChildCount();
    }

    /* renamed from: c */
    public void m7528c(int i) {
        View childAt = this.f2544a.getChildAt(i);
        if (childAt != null) {
            this.f2544a.m7865p(childAt);
            childAt.clearAnimation();
        }
        this.f2544a.removeViewAt(i);
    }
}
