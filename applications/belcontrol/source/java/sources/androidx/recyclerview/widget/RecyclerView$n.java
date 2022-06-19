package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
public abstract class RecyclerView$n {
    @Deprecated
    public void getItemOffsets(Rect rect, int i, RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView$y recyclerView$y) {
        getItemOffsets(rect, ((RecyclerView$LayoutParams) view.getLayoutParams()).m6228a(), recyclerView);
    }

    @Deprecated
    public void onDraw(Canvas canvas, RecyclerView recyclerView) {
    }

    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView$y recyclerView$y) {
        onDraw(canvas, recyclerView);
    }

    @Deprecated
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
    }

    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView$y recyclerView$y) {
        onDrawOver(canvas, recyclerView);
    }
}
