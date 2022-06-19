package com.google.android.gms.internal.mlkit_language_id;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzez.class */
public class zzez extends IOException {
    private zzfz zza = null;

    public zzez(String str) {
        super(str);
    }

    public static zzey zza() {
        return new zzey("Protocol message tag had invalid wire type.");
    }
}
