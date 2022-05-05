package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zah.class */
final class zah extends Drawable.ConstantState {
    private zah() {
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        zag zagVar;
        zagVar = zag.zant;
        return zagVar;
    }
}
