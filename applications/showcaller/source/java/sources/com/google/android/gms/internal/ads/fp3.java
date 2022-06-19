package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.WindowManager;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fp3.class */
final class fp3 implements ep3 {

    /* renamed from: a */
    private final WindowManager f23017a;

    private fp3(WindowManager windowManager) {
        this.f23017a = windowManager;
    }

    /* renamed from: c */
    public static ep3 m15117c(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            return new fp3(windowManager);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ep3
    /* renamed from: a */
    public final void mo14878a(dp3 dp3Var) {
        dp3Var.mo15714a(this.f23017a.getDefaultDisplay());
    }

    @Override // com.google.android.gms.internal.ads.ep3
    /* renamed from: b */
    public final void mo14877b() {
    }
}
