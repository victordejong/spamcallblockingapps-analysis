package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.ec */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ec.class */
public final class C4268ec {

    /* renamed from: a */
    public String f18733a;

    /* renamed from: b */
    public String f18734b;

    /* renamed from: c */
    public long f18735c;

    /* renamed from: d */
    public Bundle f18736d;

    public C4268ec(String str, String str2, Bundle bundle, long j) {
        this.f18733a = str;
        this.f18734b = str2;
        this.f18736d = bundle == null ? new Bundle() : bundle;
        this.f18735c = j;
    }

    public final String toString() {
        String str = this.f18734b;
        String str2 = this.f18733a;
        String valueOf = String.valueOf(this.f18736d);
        return new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length()).append("origin=").append(str).append(",name=").append(str2).append(",params=").append(valueOf).toString();
    }
}
