package com.rey.material.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.rey.material.drawable.CheckBoxDrawable;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.CompoundButton
    public void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        super.applyStyle(context, attributeSet, i, i2);
        CheckBoxDrawable build = new CheckBoxDrawable.Builder(context, attributeSet, i, i2).build();
        build.setInEditMode(isInEditMode());
        build.setAnimEnable(false);
        setButtonDrawable(build);
        build.setAnimEnable(true);
    }

    public void setCheckedImmediately(boolean z) {
        if (getButtonDrawable() instanceof CheckBoxDrawable) {
            CheckBoxDrawable checkBoxDrawable = (CheckBoxDrawable) getButtonDrawable();
            checkBoxDrawable.setAnimEnable(false);
            setChecked(z);
            checkBoxDrawable.setAnimEnable(true);
            return;
        }
        setChecked(z);
    }
}
