package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
@SuppressLint({"AppCompatCustomView"})
/* renamed from: com.google.android.material.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/k.class */
public class C4708k extends ImageButton {

    /* renamed from: a */
    private int f20398a;

    public C4708k(Context context) {
        this(context, null);
    }

    public C4708k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C4708k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f20398a = getVisibility();
    }

    /* renamed from: a */
    public final void m2809a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f20398a = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f20398a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m2809a(i, true);
    }
}
