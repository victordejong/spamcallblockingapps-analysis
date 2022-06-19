package com.callerid.block.mvc.model.sms;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/ExpandLayout.class */
public class ExpandLayout extends LinearLayout {

    /* renamed from: b */
    private View f4733b;

    /* renamed from: c */
    private int f4734c;

    /* renamed from: com.callerid.block.mvc.model.sms.ExpandLayout$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/model/sms/ExpandLayout$a.class */
    public class RunnableC1113a implements Runnable {
        RunnableC1113a() {
            ExpandLayout.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ExpandLayout.this.f4734c <= 0) {
                ExpandLayout expandLayout = ExpandLayout.this;
                expandLayout.f4734c = expandLayout.m10131f(expandLayout.f4733b);
            }
        }
    }

    public ExpandLayout(Context context) {
        this(context, null);
    }

    public ExpandLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ExpandLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m10133d();
    }

    /* renamed from: d */
    private void m10133d() {
        this.f4733b = this;
        m10132e();
    }

    /* renamed from: e */
    private void m10132e() {
        this.f4733b.post(new RunnableC1113a());
    }

    public static void setViewHeight(View view, int i) {
        view.getLayoutParams().height = i;
        view.requestLayout();
    }

    /* renamed from: f */
    public int m10131f(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }

    public void setAnimationDuration(long j) {
    }

    public void setViewHeight(int i) {
        this.f4734c = i;
    }
}
