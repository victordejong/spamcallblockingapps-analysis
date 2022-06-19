package com.google.android.gms.internal.mlkit_translate;

import java.math.BigDecimal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzee.class */
public final class zzee extends Number {
    private final String zza;

    public zzee(String str) {
        this.zza = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.zza);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzee)) {
            return false;
        }
        String str = this.zza;
        String str2 = ((zzee) obj).zza;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            return Integer.parseInt(this.zza);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.zza);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.zza).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.zza);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.zza).longValue();
        }
    }

    public final String toString() {
        return this.zza;
    }
}
