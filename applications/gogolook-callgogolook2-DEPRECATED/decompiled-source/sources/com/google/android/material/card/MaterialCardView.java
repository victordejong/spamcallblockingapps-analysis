package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.cardview.widget.CardView;
import com.google.android.material.R$attr;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import p081h.p203i.p204a.p294f.p302h.C9189a;
import p081h.p203i.p204a.p294f.p308n.C9245k;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/card/MaterialCardView.class */
public class MaterialCardView extends CardView {

    /* renamed from: a */
    public final C9189a f7432a;

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.materialCardViewStyle);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray c = C9245k.m15637c(context, attributeSet, R$styleable.MaterialCardView, i, R$style.Widget_MaterialComponents_CardView, new int[0]);
        this.f7432a = new C9189a(this);
        this.f7432a.m15913a(c);
        c.recycle();
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.f7432a.m15911c();
    }
}
