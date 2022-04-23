package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewGroupOverlayApi18.class */
class ViewGroupOverlayApi18 implements ViewGroupOverlayImpl {

    /* renamed from: a */
    private final ViewGroupOverlay f10945a;

    @Override // com.google.android.material.internal.ViewOverlayImpl
    /* renamed from: a */
    public void mo9437a(@NonNull Drawable drawable) {
        this.f10945a.add(drawable);
    }

    @Override // com.google.android.material.internal.ViewOverlayImpl
    /* renamed from: b */
    public void mo9436b(@NonNull Drawable drawable) {
        this.f10945a.remove(drawable);
    }
}
