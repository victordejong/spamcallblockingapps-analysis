package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
public abstract class RecyclerView$m {
    @Deprecated
    /* renamed from: d */
    public void m12744d(Rect rect, int i, RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
    }

    /* renamed from: e */
    public void m12743e(Rect rect, View view, RecyclerView recyclerView, RecyclerView$x recyclerView$x) {
        m12744d(rect, ((RecyclerView$LayoutParams) view.getLayoutParams()).m12820a(), recyclerView);
    }

    @Deprecated
    /* renamed from: f */
    public void m12742f(Canvas canvas, RecyclerView recyclerView) {
    }

    /* renamed from: g */
    public void m12741g(Canvas canvas, RecyclerView recyclerView, RecyclerView$x recyclerView$x) {
        m12742f(canvas, recyclerView);
    }

    @Deprecated
    /* renamed from: h */
    public void m12740h(Canvas canvas, RecyclerView recyclerView) {
    }

    /* renamed from: i */
    public void m12739i(Canvas canvas, RecyclerView recyclerView, RecyclerView$x recyclerView$x) {
        m12740h(canvas, recyclerView);
    }
}
