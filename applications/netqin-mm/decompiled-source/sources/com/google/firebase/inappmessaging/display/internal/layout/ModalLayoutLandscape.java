package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5627b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape.class */
public class ModalLayoutLandscape extends BaseModalLayout {

    /* renamed from: e */
    public View f30987e;

    /* renamed from: f */
    public View f30988f;

    /* renamed from: g */
    public View f30989g;

    /* renamed from: h */
    public View f30990h;

    /* renamed from: i */
    public int f30991i;

    /* renamed from: j */
    public int f30992j;

    /* renamed from: k */
    public int f30993k;

    /* renamed from: l */
    public int f30994l;

    public ModalLayoutLandscape(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onLayout(z, i, i2, i3, i4);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int measuredWidth = getMeasuredWidth() - getPaddingRight();
        int i7 = this.f30993k;
        int i8 = this.f30994l;
        int i9 = 0;
        if (i7 < i8) {
            i5 = (i8 - i7) / 2;
            i6 = 0;
        } else {
            i6 = (i7 - i8) / 2;
            i5 = 0;
        }
        C5562j.m23515a("Layout image");
        int i10 = paddingTop + i5;
        int b = m7300b(this.f30987e) + paddingLeft;
        m7302a(this.f30987e, paddingLeft, i10, b, i10 + m7304a(this.f30987e));
        int i11 = b + this.f30991i;
        C5562j.m23515a("Layout getTitle");
        int i12 = paddingTop + i6;
        int a = m7304a(this.f30988f) + i12;
        m7302a(this.f30988f, i11, i12, measuredWidth, a);
        C5562j.m23515a("Layout getBody");
        int i13 = a + (this.f30988f.getVisibility() == 8 ? 0 : this.f30992j);
        int a2 = m7304a(this.f30989g) + i13;
        m7302a(this.f30989g, i11, i13, measuredWidth, a2);
        C5562j.m23515a("Layout button");
        if (this.f30989g.getVisibility() != 8) {
            i9 = this.f30992j;
        }
        m7303a(this.f30990h, i11, a2 + i9);
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f30987e = m7297d(C5539f.image_view);
        this.f30988f = m7297d(C5539f.message_title);
        this.f30989g = m7297d(C5539f.body_scroll);
        this.f30990h = m7297d(C5539f.button);
        int i3 = 0;
        this.f30991i = this.f30987e.getVisibility() == 8 ? 0 : m7299c(24);
        this.f30992j = m7299c(24);
        List<View> asList = Arrays.asList(this.f30988f, this.f30989g, this.f30990h);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int b = m7301b(i);
        int a = m7306a(i2) - paddingBottom;
        int i4 = b - paddingLeft;
        C5562j.m23515a("Measuring image");
        C5627b.m23385a(this.f30987e, (int) (i4 * 0.4f), a);
        int b2 = m7300b(this.f30987e);
        int i5 = i4 - (this.f30991i + b2);
        float f = b2;
        C5562j.m23513a("Max col widths (l, r)", f, i5);
        int i6 = 0;
        for (View view : asList) {
            if (view.getVisibility() != 8) {
                i6++;
            }
        }
        int max = Math.max(0, (i6 - 1) * this.f30992j);
        int i7 = a - max;
        C5562j.m23515a("Measuring getTitle");
        C5627b.m23385a(this.f30988f, i5, i7);
        C5562j.m23515a("Measuring button");
        C5627b.m23385a(this.f30990h, i5, i7);
        C5562j.m23515a("Measuring scroll view");
        C5627b.m23385a(this.f30989g, i5, (i7 - m7304a(this.f30988f)) - m7304a(this.f30990h));
        this.f30993k = m7304a(this.f30987e);
        this.f30994l = max;
        for (View view2 : asList) {
            this.f30994l += m7304a(view2);
        }
        int max2 = Math.max(this.f30993k + paddingBottom, this.f30994l + paddingBottom);
        for (View view3 : asList) {
            i3 = Math.max(m7300b(view3), i3);
        }
        C5562j.m23513a("Measured columns (l, r)", f, i3);
        int i8 = b2 + i3 + this.f30991i + paddingLeft;
        C5562j.m23513a("Measured dims", i8, max2);
        setMeasuredDimension(i8, max2);
    }
}
