package com.google.android.material.textfield;

import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/CustomEndIconDelegate.class */
public class CustomEndIconDelegate extends EndIconDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomEndIconDelegate(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.EndIconDelegate
    /* renamed from: a */
    public void mo8798a() {
        this.f11466a.setEndIconOnClickListener(null);
        this.f11466a.setEndIconOnLongClickListener(null);
    }
}
