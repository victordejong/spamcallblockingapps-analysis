package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/e.class */
public abstract class e {

    /* renamed from: c  reason: collision with root package name */
    TextInputLayout f30922c;

    /* renamed from: d  reason: collision with root package name */
    Context f30923d;
    CheckableImageButton e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(TextInputLayout textInputLayout) {
        this.f30922c = textInputLayout;
        this.f30923d = textInputLayout.getContext();
        this.e = textInputLayout.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return false;
    }
}
