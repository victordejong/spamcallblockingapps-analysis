package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/DividerItemDecoration.class */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a */
    private Drawable f4520a;

    /* renamed from: b */
    private int f4521b;

    /* renamed from: c */
    private final Rect f4522c;

    /* renamed from: l */
    private void m17784l(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingTop();
            i = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i2, recyclerView.getWidth() - recyclerView.getPaddingRight(), i);
        } else {
            i = recyclerView.getHeight();
            i2 = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            recyclerView.getLayoutManager().m17431Q(childAt, this.f4522c);
            int round = this.f4522c.right + Math.round(childAt.getTranslationX());
            this.f4520a.setBounds(round - this.f4520a.getIntrinsicWidth(), i2, round, i);
            this.f4520a.draw(canvas);
        }
        canvas.restore();
    }

    /* renamed from: m */
    private void m17783m(Canvas canvas, RecyclerView recyclerView) {
        int i;
        int i2;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingLeft();
            i = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i2, recyclerView.getPaddingTop(), i, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            i = recyclerView.getWidth();
            i2 = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.f4522c);
            int round = this.f4522c.bottom + Math.round(childAt.getTranslationY());
            this.f4520a.setBounds(i2, round - this.f4520a.getIntrinsicHeight(), i, round);
            this.f4520a.draw(canvas);
        }
        canvas.restore();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /* renamed from: g */
    public void mo17467g(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        Drawable drawable = this.f4520a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f4521b == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /* renamed from: i */
    public void mo9946i(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() != null && this.f4520a != null) {
            if (this.f4521b == 1) {
                m17783m(canvas, recyclerView);
            } else {
                m17784l(canvas, recyclerView);
            }
        }
    }
}
