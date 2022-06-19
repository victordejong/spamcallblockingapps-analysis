package com.rey.material.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import p092e.p107g.p108a.p109a.C3104b;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/CheckBox.class */
public class CheckBox extends CompoundButton {
    public CheckBox(Context context) {
        super(context);
    }

    public CheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CheckBox(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
    }

    @Override // com.rey.material.widget.CompoundButton
    /* renamed from: b */
    public void mo1415b(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo1415b(context, attributeSet, i, i2);
        C3104b m205c = new C3104b.C3106b(context, attributeSet, i, i2).m205c();
        m205c.m209g(isInEditMode());
        m205c.m210f(false);
        setButtonDrawable(m205c);
        m205c.m210f(true);
    }

    public void setCheckedImmediately(boolean z) {
        Drawable drawable = this.f11756c;
        if (!(drawable instanceof C3104b)) {
            setChecked(z);
            return;
        }
        C3104b c3104b = (C3104b) drawable;
        c3104b.m210f(false);
        setChecked(z);
        c3104b.m210f(true);
    }
}
