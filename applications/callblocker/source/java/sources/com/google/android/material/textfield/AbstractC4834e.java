package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.textfield.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/e.class */
public abstract class AbstractC4834e {

    /* renamed from: a */
    TextInputLayout f20848a;

    /* renamed from: b */
    Context f20849b;

    /* renamed from: c */
    CheckableImageButton f20850c;

    public AbstractC4834e(TextInputLayout textInputLayout) {
        this.f20848a = textInputLayout;
        this.f20849b = textInputLayout.getContext();
        this.f20850c = textInputLayout.getEndIconView();
    }

    /* renamed from: a */
    public abstract void mo2230a();

    /* renamed from: a */
    public boolean mo2270a(int i) {
        return true;
    }

    /* renamed from: b */
    public boolean mo2269b() {
        return false;
    }
}
