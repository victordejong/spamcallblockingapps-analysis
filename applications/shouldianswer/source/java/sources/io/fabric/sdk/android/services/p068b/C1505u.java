package io.fabric.sdk.android.services.p068b;

import android.os.SystemClock;
import android.util.Log;
/* renamed from: io.fabric.sdk.android.services.b.u */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/u.class */
public class C1505u {

    /* renamed from: a */
    private final String f4133a;

    /* renamed from: b */
    private final String f4134b;

    /* renamed from: c */
    private final boolean f4135c;

    /* renamed from: d */
    private long f4136d;

    /* renamed from: e */
    private long f4137e;

    public C1505u(String str, String str2) {
        this.f4133a = str;
        this.f4134b = str2;
        this.f4135c = !Log.isLoggable(str2, 2);
    }

    /* renamed from: c */
    private void m3396c() {
        String str = this.f4134b;
        Log.v(str, this.f4133a + ": " + this.f4137e + "ms");
    }

    /* renamed from: a */
    public void m3398a() {
        synchronized (this) {
            if (this.f4135c) {
                return;
            }
            this.f4136d = SystemClock.elapsedRealtime();
            this.f4137e = 0L;
        }
    }

    /* renamed from: b */
    public void m3397b() {
        synchronized (this) {
            if (this.f4135c) {
                return;
            }
            if (this.f4137e != 0) {
                return;
            }
            this.f4137e = SystemClock.elapsedRealtime() - this.f4136d;
            m3396c();
        }
    }
}
