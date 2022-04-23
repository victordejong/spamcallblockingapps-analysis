package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/an.class */
public final class an {

    /* renamed from: a  reason: collision with root package name */
    final WifiManager f20687a;

    /* renamed from: b  reason: collision with root package name */
    WifiManager.WifiLock f20688b;

    /* renamed from: c  reason: collision with root package name */
    boolean f20689c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f20690d;

    public an(Context context) {
        this.f20687a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        WifiManager.WifiLock wifiLock = this.f20688b;
        if (wifiLock != null) {
            if (!this.f20689c || !this.f20690d) {
                wifiLock.release();
            } else {
                wifiLock.acquire();
            }
        }
    }

    public final void a(boolean z) {
        this.f20690d = z;
        a();
    }
}
