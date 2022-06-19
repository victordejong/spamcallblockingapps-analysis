package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zai.class */
public final class zai extends Drawable.ConstantState {
    int mChangingConfigurations;
    int zanw;

    public zai(zai zaiVar) {
        if (zaiVar != null) {
            this.mChangingConfigurations = zaiVar.mChangingConfigurations;
            this.zanw = zaiVar.zanw;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zae(this);
    }
}
