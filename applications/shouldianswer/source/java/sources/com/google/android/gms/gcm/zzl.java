package com.google.android.gms.gcm;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzl.class */
public final class zzl {
    public static final zzl zzaq = new zzl(0, 30, 3600);
    private static final zzl zzar = new zzl(1, 30, 3600);
    private final int zzas;
    private final int zzat = 30;
    private final int zzau = 3600;

    private zzl(int i, int i2, int i3) {
        this.zzas = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzl)) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        return zzlVar.zzas == this.zzas && zzlVar.zzat == this.zzat && zzlVar.zzau == this.zzau;
    }

    public final int hashCode() {
        return (((((this.zzas + 1) ^ 1000003) * 1000003) ^ this.zzat) * 1000003) ^ this.zzau;
    }

    public final String toString() {
        int i = this.zzas;
        int i2 = this.zzat;
        int i3 = this.zzau;
        StringBuilder sb = new StringBuilder(74);
        sb.append("policy=");
        sb.append(i);
        sb.append(" initial_backoff=");
        sb.append(i2);
        sb.append(" maximum_backoff=");
        sb.append(i3);
        return sb.toString();
    }

    public final Bundle zzf(Bundle bundle) {
        bundle.putInt("retry_policy", this.zzas);
        bundle.putInt("initial_backoff_seconds", this.zzat);
        bundle.putInt("maximum_backoff_seconds", this.zzau);
        return bundle;
    }

    public final int zzi() {
        return this.zzas;
    }

    public final int zzj() {
        return this.zzat;
    }

    public final int zzk() {
        return this.zzau;
    }
}
