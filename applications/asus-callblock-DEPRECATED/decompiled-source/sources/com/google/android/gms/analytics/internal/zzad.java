package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.a.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzad.class */
public class zzad {

    /* renamed from: a  reason: collision with root package name */
    private final long f3823a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3824b;
    private double c;
    private long d;
    private final Object e;
    private final String f;
    private final d g;

    public zzad(int i, long j, String str, d dVar) {
        this.e = new Object();
        this.f3824b = i;
        this.c = this.f3824b;
        this.f3823a = j;
        this.f = str;
        this.g = dVar;
    }

    public zzad(String str, d dVar) {
        this(60, 2000L, str, dVar);
    }

    public boolean zznY() {
        boolean z;
        synchronized (this.e) {
            long a2 = this.g.a();
            if (this.c < this.f3824b) {
                double d = (a2 - this.d) / this.f3823a;
                if (d > 0.0d) {
                    this.c = Math.min(this.f3824b, d + this.c);
                }
            }
            this.d = a2;
            if (this.c >= 1.0d) {
                this.c -= 1.0d;
                z = true;
            } else {
                String str = this.f;
                zzae.zzaW(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
                z = false;
            }
        }
        return z;
    }
}
