package com.unknownphone.callblocker.p180a.p181a.p182a;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: com.unknownphone.callblocker.a.a.a.d */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/d.class */
public class C5163d extends RecyclerView.AbstractC0924h {

    /* renamed from: a */
    private final AbstractC5164a f21775a;

    /* renamed from: b */
    private final int f21776b;

    /* renamed from: c */
    private final boolean f21777c;

    /* renamed from: d */
    private TextView f21778d;

    /* renamed from: e */
    private View f21779e;

    /* renamed from: com.unknownphone.callblocker.a.a.a.d$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/d$a.class */
    public interface AbstractC5164a {
        /* renamed from: a */
        boolean mo1286a(int i);

        /* renamed from: b */
        CharSequence mo1285b(int i);
    }

    public C5163d(int i, boolean z, AbstractC5164a abstractC5164a) {
        this.f21775a = abstractC5164a;
        this.f21776b = i;
        this.f21777c = z;
    }

    /* renamed from: a */
    private View m1300a(RecyclerView recyclerView) {
        return LayoutInflater.from(recyclerView.getContext()).inflate(2131493013, (ViewGroup) recyclerView, false);
    }

    /* renamed from: a */
    private void m1303a(Canvas canvas, View view, View view2) {
        canvas.save();
        if (this.f21777c) {
            canvas.translate(0.0f, Math.max(0, view.getTop() - view2.getHeight()));
        } else {
            canvas.translate(0.0f, view.getTop() - view2.getHeight());
        }
        view2.draw(canvas);
        canvas.restore();
    }

    /* renamed from: a */
    private void m1301a(View view, ViewGroup viewGroup) {
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(viewGroup.getWidth(), 1073741824), viewGroup.getPaddingLeft() + viewGroup.getPaddingRight(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(viewGroup.getHeight(), 0), viewGroup.getPaddingTop() + viewGroup.getPaddingBottom(), view.getLayoutParams().height));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0924h
    /* renamed from: a */
    public void mo1302a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0945u c0945u) {
        super.mo1302a(rect, view, recyclerView, c0945u);
        if (this.f21775a.mo1286a(recyclerView.getChildAdapterPosition(view))) {
            rect.top = this.f21776b;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0924h
    /* renamed from: b */
    public void mo1299b(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0945u c0945u) {
        super.mo1299b(canvas, recyclerView, c0945u);
        if (this.f21779e == null) {
            this.f21779e = m1300a(recyclerView);
            this.f21778d = (TextView) this.f21779e.findViewById(2131296708);
            m1301a(this.f21779e, recyclerView);
        }
        CharSequence charSequence = "";
        for (int i = 0; i < recyclerView.getChildCount(); i++) {
            View childAt = recyclerView.getChildAt(i);
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            CharSequence mo1285b = this.f21775a.mo1285b(childAdapterPosition);
            this.f21778d.setText(mo1285b);
            if (!charSequence.equals(mo1285b) || this.f21775a.mo1286a(childAdapterPosition)) {
                m1303a(canvas, childAt, this.f21779e);
                charSequence = mo1285b;
            }
        }
    }
}
