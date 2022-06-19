package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
/* renamed from: com.google.android.exoplayer2.z0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/z0.class */
public final class C5591z0 {

    /* renamed from: a */
    private final PowerManager f18200a;

    /* renamed from: b */
    private PowerManager.WakeLock f18201b;

    /* renamed from: c */
    private boolean f18202c;

    /* renamed from: d */
    private boolean f18203d;

    public C5591z0(Context context) {
        this.f18200a = (PowerManager) context.getSystemService("power");
    }

    @SuppressLint({"WakelockTimeout"})
    /* renamed from: b */
    private void m18317b() {
        PowerManager.WakeLock wakeLock = this.f18201b;
        if (wakeLock != null) {
            if (!this.f18202c) {
                if (!wakeLock.isHeld()) {
                    return;
                }
                this.f18201b.release();
            } else if (this.f18203d && !wakeLock.isHeld()) {
                this.f18201b.acquire();
            } else if (this.f18203d || !this.f18201b.isHeld()) {
            } else {
                this.f18201b.release();
            }
        }
    }

    /* renamed from: a */
    public void m18318a(boolean z) {
        this.f18203d = z;
        m18317b();
    }
}
