package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: com.google.android.material.internal.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/internal/o.class */
class C8207o implements AbstractC8208p {

    /* renamed from: a */
    private final ViewOverlay f37035a;

    public C8207o(View view) {
        this.f37035a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.AbstractC8208p
    /* renamed from: a */
    public void mo4454a(Drawable drawable) {
        this.f37035a.add(drawable);
    }

    @Override // com.google.android.material.internal.AbstractC8208p
    /* renamed from: b */
    public void mo4453b(Drawable drawable) {
        this.f37035a.remove(drawable);
    }
}
