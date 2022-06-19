package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.perf.FirebasePerformance;
import java.util.Arrays;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzag.class */
public abstract class zzag {
    static final Logger zzbz = Logger.getLogger(zzag.class.getName());
    private static final String[] zzca;

    static {
        String[] strArr = {FirebasePerformance.HttpMethod.DELETE, FirebasePerformance.HttpMethod.GET, FirebasePerformance.HttpMethod.POST, FirebasePerformance.HttpMethod.PUT};
        zzca = strArr;
        Arrays.sort(strArr);
    }

    public final zzaa zza(zzad zzadVar) {
        return new zzaa(this, zzadVar);
    }

    public abstract zzaj zzc(String str, String str2);

    public boolean zzz(String str) {
        return Arrays.binarySearch(zzca, str) >= 0;
    }
}
