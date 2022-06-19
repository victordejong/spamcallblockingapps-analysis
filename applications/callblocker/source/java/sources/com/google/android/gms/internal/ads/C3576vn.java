package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.view.View;
@TargetApi(18)
/* renamed from: com.google.android.gms.internal.ads.vn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vn.class */
public class C3576vn extends C3577vo {
    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final int mo6937a() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public boolean mo6925a(View view) {
        return super.mo6925a(view) || view.getWindowId() != null;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: e */
    public final long mo6936e() {
        return !((Boolean) dyx.m8158e().m7876a(edi.f16438br)).booleanValue() ? (char) 65535 : new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
    }
}
