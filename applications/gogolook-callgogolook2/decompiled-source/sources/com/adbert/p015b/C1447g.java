package com.adbert.p015b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.p012c.EnumC1385e;
/* renamed from: com.adbert.b.g */
/* loaded from: classes-dex2jar.jar:com/adbert/b/g.class */
public class C1447g extends ImageView {

    /* renamed from: a */
    public int f760a;

    /* renamed from: b */
    public int f761b;

    public C1447g(Context context, int i) {
        super(context);
        this.f760a = i;
        this.f761b = C1402g.m37150a(i, 50, 46);
        Drawable a = EnumC1385e.logo.m37186a(getContext());
        a.setAlpha(75);
        setImageDrawable(a);
        setScaleType(ImageView.ScaleType.FIT_END);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f760a, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f761b, 1073741824));
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            bringToFront();
        }
    }
}
