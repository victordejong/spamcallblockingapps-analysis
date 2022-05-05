package com.google.android.gms.internal.base;

import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zah.class */
final class zah extends Drawable.ConstantState {

    /* renamed from: a */
    int f7836a;

    /* renamed from: b */
    int f7837b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zah(zah zahVar) {
        if (zahVar != null) {
            this.f7836a = zahVar.f7836a;
            this.f7837b = zahVar.f7837b;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f7836a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zae(this);
    }
}
