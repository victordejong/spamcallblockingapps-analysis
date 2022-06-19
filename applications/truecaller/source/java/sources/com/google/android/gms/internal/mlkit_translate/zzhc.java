package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhc.class */
public final class zzhc {
    private final String zza;

    public zzhc(String str) {
        Preconditions.m38897k(str, "Null FID");
        int length = str.length();
        Preconditions.m38906b(length == 22, str.length() != 0 ? "Invalid FID: must be exactly 22 characters: ".concat(str) : new String("Invalid FID: must be exactly 22 characters: "));
        char charAt = str.charAt(0);
        Preconditions.m38906b(charAt >= 'c' && charAt <= 'f', str.length() != 0 ? "Invalid FID: must start with [c-f]: ".concat(str) : new String("Invalid FID: must start with [c-f]: "));
        for (int i = 0; i < length; i++) {
            char charAt2 = str.charAt(i);
            Preconditions.m38906b((charAt2 >= '0' && charAt2 <= '9') || (charAt2 >= 'a' && charAt2 <= 'z') || ((charAt2 >= 'A' && charAt2 <= 'Z') || charAt2 == '-' || charAt2 == '_'), str.length() != 0 ? "Invalid FID: must contain only URL-safe base-64 characters: ".concat(str) : new String("Invalid FID: must contain only URL-safe base-64 characters: "));
        }
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhc)) {
            return false;
        }
        return this.zza.equals(((zzhc) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String zza() {
        return this.zza;
    }
}
