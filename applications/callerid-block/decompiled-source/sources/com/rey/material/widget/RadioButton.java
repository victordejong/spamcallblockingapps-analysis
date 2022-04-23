package com.rey.material.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import p092e.p107g.p108a.p109a.C3113e;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/RadioButton.class */
public class RadioButton extends CompoundButton {
    public RadioButton(Context context) {
        super(context);
    }

    public RadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public RadioButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.CompoundButton
    /* renamed from: b */
    public void mo1415b(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo1415b(context, attributeSet, i, i2);
        C3113e b = new C3113e.C3115b(context, attributeSet, i, i2).m142b();
        b.m145f(isInEditMode());
        b.m146e(false);
        setButtonDrawable(b);
        b.m146e(true);
    }

    public void setCheckedImmediately(boolean z) {
        Drawable drawable = this.f11756c;
        if (drawable instanceof C3113e) {
            C3113e eVar = (C3113e) drawable;
            eVar.m146e(false);
            setChecked(z);
            eVar.m146e(true);
            return;
        }
        setChecked(z);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        if (!isChecked()) {
            super.toggle();
        }
    }
}
