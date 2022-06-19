package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public class C0975d extends RecyclerView.AbstractC0924h {

    /* renamed from: a */
    private static final int[] f3325a = {16843284};

    /* renamed from: b */
    private Drawable f3326b;

    /* renamed from: c */
    private int f3327c;

    /* renamed from: d */
    private final Rect f3328d = new Rect();

    public C0975d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f3325a);
        this.f3326b = obtainStyledAttributes.getDrawable(0);
        if (this.f3326b == null) {
            Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        obtainStyledAttributes.recycle();
        m18539a(i);
    }

    /* renamed from: c */
    private void m18538c(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.f3328d);
            int round = Math.round(childAt.getTranslationY()) + this.f3328d.bottom;
            this.f3326b.setBounds(i, round - this.f3326b.getIntrinsicHeight(), width, round);
            this.f3326b.draw(canvas);
        }
        canvas.restore();
    }

    /* renamed from: d */
    private void m18537d(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.getLayoutManager().m18982a(childAt, this.f3328d);
            int round = Math.round(childAt.getTranslationX()) + this.f3328d.right;
            this.f3326b.setBounds(round - this.f3326b.getIntrinsicWidth(), i, round, height);
            this.f3326b.draw(canvas);
        }
        canvas.restore();
    }

    /* renamed from: a */
    public void m18539a(int i) {
        if (i == 0 || i == 1) {
            this.f3327c = i;
            return;
        }
        throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0924h
    /* renamed from: a */
    public void mo3176a(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0945u c0945u) {
        if (recyclerView.getLayoutManager() == null || this.f3326b == null) {
            return;
        }
        if (this.f3327c == 1) {
            m18538c(canvas, recyclerView);
        } else {
            m18537d(canvas, recyclerView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0924h
    /* renamed from: a */
    public void mo1302a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0945u c0945u) {
        if (this.f3326b == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f3327c == 1) {
            rect.set(0, 0, 0, this.f3326b.getIntrinsicHeight());
        } else {
            rect.set(0, 0, this.f3326b.getIntrinsicWidth(), 0);
        }
    }
}
