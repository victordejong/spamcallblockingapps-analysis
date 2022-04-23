package com.google.android.exoplayer2;

import android.content.Context;
import android.os.PowerManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/am.class */
public final class am {

    /* renamed from: a  reason: collision with root package name */
    final PowerManager f20683a;

    /* renamed from: b  reason: collision with root package name */
    PowerManager.WakeLock f20684b;

    /* renamed from: c  reason: collision with root package name */
    boolean f20685c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f20686d;

    public am(Context context) {
        this.f20683a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        PowerManager.WakeLock wakeLock = this.f20684b;
        if (wakeLock != null) {
            if (!this.f20685c || !this.f20686d) {
                wakeLock.release();
            } else {
                wakeLock.acquire();
            }
        }
    }

    public final void a(boolean z) {
        this.f20686d = z;
        a();
    }
}
