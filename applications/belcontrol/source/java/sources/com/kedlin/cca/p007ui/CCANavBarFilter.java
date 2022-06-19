package com.kedlin.cca.p007ui;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import p000.sb1;
/* renamed from: com.kedlin.cca.ui.CCANavBarFilter */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCANavBarFilter.class */
public class CCANavBarFilter extends LinearLayout implements View.OnClickListener {

    /* renamed from: a */
    public Object f3792a = null;

    /* renamed from: b */
    public sb1.AbstractC1652b f3793b;

    public CCANavBarFilter(Context context) {
        super(context);
    }

    /* renamed from: a */
    public CCANavBarFilter m4311a(Object obj) {
        View findViewWithTag = findViewWithTag(obj);
        if (findViewWithTag != null) {
            m4307e(findViewWithTag, false);
        }
        return this;
    }

    /* renamed from: b */
    public CCANavBarFilter m4310b(int i, Object obj) {
        m4309c(getContext().getResources().getString(i), obj);
        return this;
    }

    /* renamed from: c */
    public CCANavBarFilter m4309c(String str, Object obj) {
        TextView textView = new TextView(getContext());
        textView.setBackgroundColor(getContext().getResources().getColor(this.f3792a == null ? 2131100175 : 17170445));
        textView.setTextColor(getContext().getResources().getColor(this.f3792a == null ? 2131100337 : 2131100301));
        textView.setText(str.toUpperCase(getContext().getResources().getConfiguration().locale));
        textView.setTextSize(2, 14.0f);
        textView.setSingleLine();
        int m1093c = oe1.m1093c(2);
        textView.setPadding(m1093c, m1093c, m1093c, m1093c);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        textView.setGravity(17);
        if (this.f3792a == null) {
            this.f3792a = obj;
        } else {
            m4308d();
        }
        textView.setTag(obj);
        textView.setOnClickListener(this);
        addView(textView);
        return this;
    }

    /* renamed from: d */
    public final void m4308d() {
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(oe1.m1093c(1), oe1.m1093c(14));
        int m1093c = oe1.m1093c(2);
        layoutParams.setMargins(m1093c, 0, m1093c, 0);
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(getContext().getResources().getColor(2131100301));
        addView(view);
    }

    /* renamed from: e */
    public final void m4307e(View view, boolean z) {
        Object tag = view.getTag();
        TextView textView = (TextView) findViewWithTag(this.f3792a);
        if (textView != null) {
            textView.setBackgroundColor(getContext().getResources().getColor(17170445));
            textView.setTextColor(getContext().getResources().getColor(2131100301));
        }
        TextView textView2 = (TextView) view;
        textView2.setBackgroundColor(getContext().getResources().getColor(2131100175));
        textView2.setTextColor(getContext().getResources().getColor(2131100337));
        this.f3792a = tag;
        sb1.AbstractC1652b abstractC1652b = this.f3793b;
        if (abstractC1652b != null) {
            abstractC1652b.mo583b(tag, z);
        }
    }

    /* renamed from: f */
    public CCANavBarFilter m4306f(sb1.AbstractC1652b abstractC1652b) {
        this.f3793b = abstractC1652b;
        return this;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        m4307e(view, true);
    }
}
