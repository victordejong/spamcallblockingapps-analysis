package com.google.android.gms.internal.auth_api_phone;

import com.google.android.gms.common.Feature;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api_phone/zzaa.class */
public final class zzaa {
    public static final Feature zza;
    public static final Feature zzb;
    public static final Feature[] zzc;

    static {
        Feature feature = new Feature("sms_code_autofill", 1L);
        zza = feature;
        Feature feature2 = new Feature("user_consent", 2L);
        zzb = feature2;
        zzc = new Feature[]{feature, feature2};
    }
}
