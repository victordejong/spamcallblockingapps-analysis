package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gp3.class */
final class gp3 implements DisplayManager.DisplayListener, ep3 {

    /* renamed from: a */
    private final DisplayManager f23439a;

    /* renamed from: b */
    private dp3 f23440b;

    private gp3(DisplayManager displayManager) {
        this.f23439a = displayManager;
    }

    /* renamed from: c */
    public static ep3 m14876c(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return new gp3(displayManager);
        }
        return null;
    }

    /* renamed from: d */
    private final Display m14875d() {
        return this.f23439a.getDisplay(0);
    }

    @Override // com.google.android.gms.internal.ads.ep3
    /* renamed from: a */
    public final void mo14878a(dp3 dp3Var) {
        this.f23440b = dp3Var;
        this.f23439a.registerDisplayListener(this, C7101wa.m9715M(null));
        dp3Var.mo15714a(m14875d());
    }

    @Override // com.google.android.gms.internal.ads.ep3
    /* renamed from: b */
    public final void mo14877b() {
        this.f23439a.unregisterDisplayListener(this);
        this.f23440b = null;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        dp3 dp3Var = this.f23440b;
        if (dp3Var == null || i != 0) {
            return;
        }
        dp3Var.mo15714a(m14875d());
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
