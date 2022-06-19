package p1727n3.p1744b0.p1745a;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.i */
/* loaded from: classes-dex2jar.jar:n3/b0/a/i.class */
public class C25595i extends RecyclerView.AbstractC0328n {

    /* renamed from: d */
    public static final int[] f71673d = {16843284};

    /* renamed from: a */
    public Drawable f71674a;

    /* renamed from: b */
    public int f71675b;

    /* renamed from: c */
    public final Rect f71676c = new Rect();

    public C25595i(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f71673d);
        this.f71674a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        if (i == 0 || i == 1) {
            this.f71675b = i;
            return;
        }
        throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
    }

    /* renamed from: d */
    public void m3173d(Drawable drawable) {
        this.f71674a = drawable;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        Drawable drawable = this.f71674a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f71675b == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        int i;
        int i2;
        int i3;
        int i4;
        if (recyclerView.getLayoutManager() == null || this.f71674a == null) {
            return;
        }
        if (this.f71675b == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                i3 = recyclerView.getPaddingLeft();
                i4 = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(i3, recyclerView.getPaddingTop(), i4, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                i4 = recyclerView.getWidth();
                i3 = 0;
            }
            int childCount = recyclerView.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = recyclerView.getChildAt(i5);
                recyclerView.getDecoratedBoundsWithMargins(childAt, this.f71676c);
                int round = Math.round(childAt.getTranslationY()) + this.f71676c.bottom;
                this.f71674a.setBounds(i3, round - this.f71674a.getIntrinsicHeight(), i4, round);
                this.f71674a.draw(canvas);
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            i2 = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), i2);
        } else {
            i2 = recyclerView.getHeight();
            i = 0;
        }
        int childCount2 = recyclerView.getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            View childAt2 = recyclerView.getChildAt(i6);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt2, this.f71676c);
            int round2 = Math.round(childAt2.getTranslationX()) + this.f71676c.right;
            this.f71674a.setBounds(round2 - this.f71674a.getIntrinsicWidth(), i, round2, i2);
            this.f71674a.draw(canvas);
        }
        canvas.restore();
    }
}
