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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.CompoundButton
    /* renamed from: b */
    public void mo1415b(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo1415b(context, attributeSet, i, i2);
        C3104b c = new C3104b.C3106b(context, attributeSet, i, i2).m205c();
        c.m209g(isInEditMode());
        c.m210f(false);
        setButtonDrawable(c);
        c.m210f(true);
    }

    public void setCheckedImmediately(boolean z) {
        Drawable drawable = this.f11756c;
        if (drawable instanceof C3104b) {
            C3104b bVar = (C3104b) drawable;
            bVar.m210f(false);
            setChecked(z);
            bVar.m210f(true);
            return;
        }
        setChecked(z);
    }
}
