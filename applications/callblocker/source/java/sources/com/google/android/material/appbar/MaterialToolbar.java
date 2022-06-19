package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4702i;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4740h;
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/MaterialToolbar.class */
public class MaterialToolbar extends Toolbar {

    /* renamed from: e */
    private static final int f19627e = C4492a.C4503k.Widget_MaterialComponents_Toolbar;

    public MaterialToolbar(Context context) {
        this(context, null);
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C4492a.C4494b.toolbarStyle);
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(C4702i.m2826a(context, attributeSet, i, f19627e), attributeSet, i);
        m3767a(getContext());
    }

    /* renamed from: a */
    private void m3767a(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            C4736g c4736g = new C4736g();
            c4736g.m2697f(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            c4736g.m2722a(context);
            c4736g.m2687r(C0595u.m20310n(this));
            C0595u.m20350a(this, c4736g);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C4740h.m2684a(this);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C4740h.m2683a(this, f);
    }
}
