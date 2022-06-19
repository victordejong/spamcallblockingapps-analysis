package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h04.class */
final class h04 implements vz3 {

    /* renamed from: a */
    private File f23778a = null;

    /* renamed from: b */
    final /* synthetic */ Context f23779b;

    public h04(Context context) {
        this.f23779b = context;
    }

    @Override // com.google.android.gms.internal.ads.vz3
    public final File zza() {
        if (this.f23778a == null) {
            this.f23778a = new File(this.f23779b.getCacheDir(), "volley");
        }
        return this.f23778a;
    }
}
