package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/internal/p.class */
final class p implements q {

    /* renamed from: a  reason: collision with root package name */
    private final ViewOverlay f30655a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(View view) {
        this.f30655a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.q
    public final void a(Drawable drawable) {
        this.f30655a.add(drawable);
    }

    @Override // com.google.android.material.internal.q
    public final void b(Drawable drawable) {
        this.f30655a.remove(drawable);
    }
}
