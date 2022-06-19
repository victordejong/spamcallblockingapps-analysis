package com.google.android.exoplayer2;

import android.content.Context;
import android.os.PowerManager;
/* renamed from: com.google.android.exoplayer2.am */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/am.class */
public final class C10868am {

    /* renamed from: a */
    final PowerManager f35023a;

    /* renamed from: b */
    PowerManager.WakeLock f35024b;

    /* renamed from: c */
    boolean f35025c;

    /* renamed from: d */
    private boolean f35026d;

    public C10868am(Context context) {
        this.f35023a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* renamed from: a */
    public final void m22165a() {
        PowerManager.WakeLock wakeLock = this.f35024b;
        if (wakeLock == null) {
            return;
        }
        if (!this.f35025c || !this.f35026d) {
            wakeLock.release();
        } else {
            wakeLock.acquire();
        }
    }

    /* renamed from: a */
    public final void m22164a(boolean z) {
        this.f35026d = z;
        m22165a();
    }
}
