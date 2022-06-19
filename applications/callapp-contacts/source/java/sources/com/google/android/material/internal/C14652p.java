package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: com.google.android.material.internal.p */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/p.class */
final class C14652p implements AbstractC14653q {

    /* renamed from: a */
    private final ViewOverlay f53444a;

    public C14652p(View view) {
        this.f53444a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.AbstractC14653q
    /* renamed from: a */
    public final void mo10501a(Drawable drawable) {
        this.f53444a.add(drawable);
    }

    @Override // com.google.android.material.internal.AbstractC14653q
    /* renamed from: b */
    public final void mo10500b(Drawable drawable) {
        this.f53444a.remove(drawable);
    }
}
