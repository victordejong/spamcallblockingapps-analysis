package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5627b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait.class */
public class CardLayoutPortrait extends BaseModalLayout {

    /* renamed from: i */
    public static double f30979i = 0.8d;

    /* renamed from: e */
    public View f30980e;

    /* renamed from: f */
    public View f30981f;

    /* renamed from: g */
    public View f30982g;

    /* renamed from: h */
    public View f30983h;

    public CardLayoutPortrait(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int size = getVisibleChildren().size();
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            View view = getVisibleChildren().get(i6);
            int measuredHeight = view.getMeasuredHeight();
            int measuredWidth = view.getMeasuredWidth();
            int i7 = measuredHeight + i5;
            int i8 = measuredWidth + 0;
            C5562j.m23515a("Layout child " + i6);
            C5562j.m23513a("\t(top, bottom)", (float) i5, (float) i7);
            C5562j.m23513a("\t(left, right)", (float) 0, (float) i8);
            view.layout(0, i5, i8, i7);
            C5562j.m23513a("Child " + i6 + " wants to be ", view.getMeasuredWidth(), view.getMeasuredHeight());
            i5 += view.getMeasuredHeight();
        }
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f30980e = m7297d(C5539f.image_view);
        this.f30981f = m7297d(C5539f.message_title);
        this.f30982g = m7297d(C5539f.body_scroll);
        this.f30983h = m7297d(C5539f.action_bar);
        int b = m7301b(i);
        int a = m7306a(i2);
        double d = f30979i;
        double d2 = a;
        Double.isNaN(d2);
        int a2 = m7305a((int) (d * d2), 4);
        C5562j.m23515a("Measuring image");
        C5627b.m23382c(this.f30980e, b, a);
        if (m7304a(this.f30980e) > a2) {
            C5562j.m23515a("Image exceeded maximum height, remeasuring image");
            C5627b.m23383b(this.f30980e, b, a2);
        }
        int b2 = m7300b(this.f30980e);
        C5562j.m23515a("Measuring title");
        C5627b.m23382c(this.f30981f, b2, a);
        C5562j.m23515a("Measuring action bar");
        C5627b.m23382c(this.f30983h, b2, a);
        C5562j.m23515a("Measuring scroll view");
        int a3 = m7304a(this.f30980e);
        C5627b.m23382c(this.f30982g, b2, ((a - a3) - m7304a(this.f30981f)) - m7304a(this.f30983h));
        int size = getVisibleChildren().size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            i3 += m7304a(getVisibleChildren().get(i4));
        }
        setMeasuredDimension(b2, i3);
    }
}
