package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
/* renamed from: com.google.android.material.textfield.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/e.class */
public abstract class AbstractC14818e {

    /* renamed from: c */
    TextInputLayout f54120c;

    /* renamed from: d */
    Context f54121d;

    /* renamed from: e */
    CheckableImageButton f54122e;

    public AbstractC14818e(TextInputLayout textInputLayout) {
        this.f54120c = textInputLayout;
        this.f54121d = textInputLayout.getContext();
        this.f54122e = textInputLayout.f54051k;
    }

    /* renamed from: a */
    public abstract void mo9935a();

    /* renamed from: a */
    public void mo9960a(boolean z) {
    }

    /* renamed from: a */
    public boolean mo9961a(int i) {
        return true;
    }

    /* renamed from: b */
    public boolean mo9959b() {
        return false;
    }
}
