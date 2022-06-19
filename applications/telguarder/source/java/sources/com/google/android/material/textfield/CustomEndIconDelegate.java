package com.google.android.material.textfield;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/CustomEndIconDelegate.class */
public class CustomEndIconDelegate extends EndIconDelegate {
    public CustomEndIconDelegate(TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public void initialize() {
        this.textInputLayout.setEndIconOnClickListener(null);
        this.textInputLayout.setEndIconOnLongClickListener(null);
    }
}
