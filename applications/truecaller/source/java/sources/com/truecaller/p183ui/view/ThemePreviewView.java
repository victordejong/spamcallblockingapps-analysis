package com.truecaller.p183ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import com.truecaller.C2752R;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p916i5.C15314a;
/* renamed from: com.truecaller.ui.view.ThemePreviewView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/ThemePreviewView.class */
public class ThemePreviewView extends View {

    /* renamed from: a */
    public ContextThemeWrapper f15916a;

    /* renamed from: b */
    public Drawable f15917b;

    /* renamed from: c */
    public Drawable f15918c;

    /* renamed from: d */
    public Drawable f15919d;

    /* renamed from: e */
    public Drawable f15920e;

    /* renamed from: f */
    public Drawable f15921f;

    /* renamed from: g */
    public Drawable f15922g;

    /* renamed from: h */
    public Drawable f15923h;

    /* renamed from: i */
    public int f15924i;

    /* renamed from: j */
    public int f15925j;

    /* renamed from: k */
    public int f15926k;

    /* renamed from: l */
    public int f15927l;

    /* renamed from: m */
    public int f15928m;

    public ThemePreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        int i;
        Context context2 = getContext();
        if (isInEditMode()) {
            C15314a c15314a = C15314a.f43582g;
            i = C15314a.m18936c().f43587c;
        } else {
            C15314a c15314a2 = C15314a.f43582g;
            i = C15314a.m18938a().f43587c;
        }
        this.f15916a = new ContextThemeWrapper(context2, i);
        Context context3 = getContext();
        Object obj = C26467a.f74235a;
        this.f15917b = C26467a.C26470c.m1789b(context3, C2752R.C2753drawable.theme_preview_phone);
        this.f15918c = C26467a.C26470c.m1789b(getContext(), C2752R.C2753drawable.theme_preview_bg);
        this.f15919d = C26467a.C26470c.m1789b(getContext(), C2752R.C2753drawable.theme_preview_phone_bg);
        this.f15920e = C26467a.C26470c.m1789b(getContext(), C2752R.C2753drawable.theme_preview_search);
        this.f15921f = C26467a.C26470c.m1789b(getContext(), C2752R.C2753drawable.theme_preview_list_item);
        this.f15922g = C26467a.C26470c.m1789b(getContext(), C2752R.C2753drawable.theme_preview_dialpad);
        this.f15923h = C26467a.C26470c.m1789b(getContext(), C2752R.C2753drawable.theme_preview_number);
        Drawable drawable = this.f15917b;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f15917b.getIntrinsicHeight());
        Drawable drawable2 = this.f15918c;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f15918c.getIntrinsicHeight());
        Drawable drawable3 = this.f15919d;
        drawable3.setBounds(0, 0, drawable3.getIntrinsicWidth(), this.f15919d.getIntrinsicHeight());
        Drawable drawable4 = this.f15920e;
        drawable4.setBounds(0, 0, drawable4.getIntrinsicWidth(), this.f15920e.getIntrinsicHeight());
        Drawable drawable5 = this.f15921f;
        drawable5.setBounds(0, 0, drawable5.getIntrinsicWidth(), this.f15921f.getIntrinsicHeight());
        Drawable drawable6 = this.f15922g;
        drawable6.setBounds(0, 0, drawable6.getIntrinsicWidth(), this.f15922g.getIntrinsicHeight());
        Drawable drawable7 = this.f15923h;
        drawable7.setBounds(0, 0, drawable7.getIntrinsicWidth(), this.f15923h.getIntrinsicHeight());
        m34477a();
    }

    /* renamed from: a */
    public final void m34477a() {
        Resources.Theme theme = this.f15916a.getTheme();
        if (theme != null) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(2130970334, typedValue, true);
            Context context = getContext();
            int i = typedValue.resourceId;
            Object obj = C26467a.f74235a;
            this.f15924i = C26467a.C26471d.m1787a(context, i);
            theme.resolveAttribute(2130970408, typedValue, true);
            this.f15925j = C26467a.C26471d.m1787a(getContext(), typedValue.resourceId);
            theme.resolveAttribute(2130970410, typedValue, true);
            this.f15926k = C26467a.C26471d.m1787a(getContext(), typedValue.resourceId);
            theme.resolveAttribute(C2752R.attr.theme_avatarBackgroundColor, typedValue, true);
            this.f15928m = C26467a.C26471d.m1787a(getContext(), typedValue.resourceId);
            theme.resolveAttribute(2130970356, typedValue, true);
            this.f15927l = C26467a.C26471d.m1787a(getContext(), typedValue.resourceId);
            this.f15918c.setColorFilter(this.f15928m, PorterDuff.Mode.SRC_IN);
            this.f15919d.setColorFilter(this.f15927l, PorterDuff.Mode.SRC_IN);
            this.f15920e.setColorFilter(this.f15927l, PorterDuff.Mode.SRC_IN);
            this.f15921f.setColorFilter(this.f15926k, PorterDuff.Mode.SRC_IN);
            this.f15923h.setColorFilter(this.f15925j, PorterDuff.Mode.SRC_IN);
            this.f15922g.setColorFilter(this.f15924i, PorterDuff.Mode.SRC_IN);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f15917b.draw(canvas);
        this.f15918c.draw(canvas);
        this.f15919d.draw(canvas);
        this.f15921f.draw(canvas);
        this.f15920e.draw(canvas);
        this.f15922g.draw(canvas);
        this.f15923h.draw(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f15917b.getIntrinsicWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f15917b.getIntrinsicHeight(), 1073741824));
    }
}
