package com.google.android.gms.tagmanager;

import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/ca.class */
final class ca implements bl {

    /* renamed from: a  reason: collision with root package name */
    private final long f4340a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4341b;
    private double c;
    private long d;
    private final Object e;
    private final d f;

    private ca() {
        this.e = new Object();
        this.f4341b = 60;
        this.c = this.f4341b;
        this.f4340a = 2000L;
        this.f = e.c();
    }

    public ca(byte b2) {
        this();
    }

    @Override // com.google.android.gms.tagmanager.bl
    public final boolean a() {
        boolean z;
        synchronized (this.e) {
            long a2 = this.f.a();
            if (this.c < this.f4341b) {
                double d = (a2 - this.d) / this.f4340a;
                if (d > 0.0d) {
                    this.c = Math.min(this.f4341b, d + this.c);
                }
            }
            this.d = a2;
            if (this.c >= 1.0d) {
                this.c -= 1.0d;
                z = true;
            } else {
                an.b("No more tokens available.");
                z = false;
            }
        }
        return z;
    }
}
