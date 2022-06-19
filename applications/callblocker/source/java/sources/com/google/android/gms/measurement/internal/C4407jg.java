package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
/* renamed from: com.google.android.gms.measurement.internal.jg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jg.class */
public final class C4407jg {

    /* renamed from: a */
    private final AbstractC2708e f19220a;

    /* renamed from: b */
    private long f19221b;

    public C4407jg(AbstractC2708e abstractC2708e) {
        C2662s.m13981a(abstractC2708e);
        this.f19220a = abstractC2708e;
    }

    /* renamed from: a */
    public final void m4259a() {
        this.f19221b = this.f19220a.mo13861b();
    }

    /* renamed from: a */
    public final boolean m4258a(long j) {
        boolean z = true;
        if (this.f19221b != 0 && this.f19220a.mo13861b() - this.f19221b < 3600000) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final void m4257b() {
        this.f19221b = 0L;
    }
}
