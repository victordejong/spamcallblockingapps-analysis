package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
/* renamed from: com.google.android.exoplayer2.an */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/an.class */
public final class C10869an {

    /* renamed from: a */
    final WifiManager f35027a;

    /* renamed from: b */
    WifiManager.WifiLock f35028b;

    /* renamed from: c */
    boolean f35029c;

    /* renamed from: d */
    private boolean f35030d;

    public C10869an(Context context) {
        this.f35027a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    /* renamed from: a */
    public final void m22163a() {
        WifiManager.WifiLock wifiLock = this.f35028b;
        if (wifiLock == null) {
            return;
        }
        if (!this.f35029c || !this.f35030d) {
            wifiLock.release();
        } else {
            wifiLock.acquire();
        }
    }

    /* renamed from: a */
    public final void m22162a(boolean z) {
        this.f35030d = z;
        m22163a();
    }
}
