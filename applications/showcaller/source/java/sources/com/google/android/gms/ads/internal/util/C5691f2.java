package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.view.View;
@TargetApi(18)
/* renamed from: com.google.android.gms.ads.internal.util.f2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/f2.class */
public class C5691f2 extends C5687e2 {
    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: g */
    public boolean mo18018g(View view) {
        return super.mo18018g(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: h */
    public final int mo18025h() {
        return 14;
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: i */
    public final long mo18024i() {
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
