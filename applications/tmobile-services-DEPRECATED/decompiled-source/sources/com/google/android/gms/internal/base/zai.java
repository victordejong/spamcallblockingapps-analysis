package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zai.class */
final class zai extends Drawable.ConstantState {
    private zai() {
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        zaf zafVar;
        zafVar = zaf.f7834a;
        return zafVar;
    }
}
