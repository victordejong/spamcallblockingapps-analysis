package com.google.android.gms.gcm;

import com.google.android.gms.common.internal.ShowFirstParty;
@ShowFirstParty
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzl.class */
public final class zzl {

    /* renamed from: d */
    public static final zzl f7751d = new zzl(0, 30, 3600);

    /* renamed from: a */
    private final int f7752a;

    /* renamed from: b */
    private final int f7753b = 30;

    /* renamed from: c */
    private final int f7754c = 3600;

    private zzl(int i, int i2, int i3) {
        this.f7752a = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzl)) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        return zzlVar.f7752a == this.f7752a && zzlVar.f7753b == this.f7753b && zzlVar.f7754c == this.f7754c;
    }

    public final int hashCode() {
        return (((((this.f7752a + 1) ^ 1000003) * 1000003) ^ this.f7753b) * 1000003) ^ this.f7754c;
    }

    public final String toString() {
        int i = this.f7752a;
        int i2 = this.f7753b;
        int i3 = this.f7754c;
        StringBuilder sb = new StringBuilder(74);
        sb.append("policy=");
        sb.append(i);
        sb.append(" initial_backoff=");
        sb.append(i2);
        sb.append(" maximum_backoff=");
        sb.append(i3);
        return sb.toString();
    }
}
