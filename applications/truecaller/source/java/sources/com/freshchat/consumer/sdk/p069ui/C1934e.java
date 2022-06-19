package com.freshchat.consumer.sdk.p069ui;

import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.freshchat.consumer.sdk.ui.e */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/e.class */
public class C1934e extends RecyclerView.AbstractC0328n {

    /* renamed from: pO */
    private final AbstractC1935f f4818pO;

    /* renamed from: pP */
    private int f4819pP;

    public C1934e(AbstractC1935f abstractC1935f) {
        this.f4818pO = abstractC1935f;
    }

    /* renamed from: a */
    private View m39292a(int i, RecyclerView recyclerView) {
        View inflate = LayoutInflater.from(recyclerView.getContext()).inflate(this.f4818pO.mo39286N(i), (ViewGroup) recyclerView, false);
        this.f4818pO.mo39284c(inflate, i);
        return inflate;
    }

    /* renamed from: a */
    private View m39288a(RecyclerView recyclerView, int i, int i2) {
        View view;
        int i3 = 0;
        while (true) {
            if (i3 >= recyclerView.getChildCount()) {
                view = null;
                break;
            }
            View childAt = recyclerView.getChildAt(i3);
            if ((childAt.getTop() > 0 ? childAt.getBottom() + ((i2 == i3 || !this.f4818pO.mo39285O(recyclerView.getChildAdapterPosition(childAt))) ? 0 : this.f4819pP - childAt.getHeight()) : childAt.getBottom()) > i && childAt.getTop() <= i) {
                view = childAt;
                break;
            }
            i3++;
        }
        return view;
    }

    /* renamed from: a */
    private void m39291a(Canvas canvas, View view) {
        canvas.save();
        canvas.translate(0.0f, 0.0f);
        view.draw(canvas);
        canvas.restore();
    }

    /* renamed from: a */
    private void m39290a(Canvas canvas, View view, View view2) {
        canvas.save();
        canvas.translate(0.0f, view2.getTop() - view.getHeight());
        view.draw(canvas);
        canvas.restore();
    }

    /* renamed from: a */
    private void m39289a(ViewGroup viewGroup, View view) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(viewGroup.getWidth(), 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(viewGroup.getHeight(), 0);
        view.measure(ViewGroup.getChildMeasureSpec(makeMeasureSpec, viewGroup.getPaddingRight() + viewGroup.getPaddingLeft(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(makeMeasureSpec2, viewGroup.getPaddingBottom() + viewGroup.getPaddingTop(), view.getLayoutParams().height));
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        this.f4819pP = measuredHeight;
        view.layout(0, 0, measuredWidth, measuredHeight);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        int childAdapterPosition;
        super.onDrawOver(canvas, recyclerView, c0347z);
        View childAt = recyclerView.getChildAt(0);
        if (childAt == null || (childAdapterPosition = recyclerView.getChildAdapterPosition(childAt)) == -1) {
            return;
        }
        int mo39287M = this.f4818pO.mo39287M(childAdapterPosition);
        View m39292a = m39292a(mo39287M, recyclerView);
        m39289a(recyclerView, m39292a);
        View m39288a = m39288a(recyclerView, m39292a.getBottom(), mo39287M);
        if (m39288a == null || !this.f4818pO.mo39285O(recyclerView.getChildAdapterPosition(m39288a))) {
            m39291a(canvas, m39292a);
        } else {
            m39290a(canvas, m39292a, m39288a);
        }
    }
}
