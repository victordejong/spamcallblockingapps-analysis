package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewOverlayApi18.class */
class ViewOverlayApi18 implements ViewOverlayImpl {

    /* renamed from: a */
    private final ViewOverlay f10952a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOverlayApi18(@NonNull View view) {
        this.f10952a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    /* renamed from: a */
    public void mo9437a(@NonNull Drawable drawable) {
        this.f10952a.add(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    /* renamed from: b */
    public void mo9436b(@NonNull Drawable drawable) {
        this.f10952a.remove(drawable);
    }
}
