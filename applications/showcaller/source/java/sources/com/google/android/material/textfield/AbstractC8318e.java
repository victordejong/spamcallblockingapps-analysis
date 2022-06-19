package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.textfield.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/e.class */
public abstract class AbstractC8318e {

    /* renamed from: a */
    TextInputLayout f37509a;

    /* renamed from: b */
    Context f37510b;

    /* renamed from: c */
    CheckableImageButton f37511c;

    public AbstractC8318e(TextInputLayout textInputLayout) {
        this.f37509a = textInputLayout;
        this.f37510b = textInputLayout.getContext();
        this.f37511c = textInputLayout.getEndIconView();
    }

    /* renamed from: a */
    public abstract void mo3900a();

    /* renamed from: b */
    public boolean mo3944b(int i) {
        return true;
    }

    /* renamed from: c */
    public void mo3943c(boolean z) {
    }

    /* renamed from: d */
    public boolean mo3942d() {
        return false;
    }
}
