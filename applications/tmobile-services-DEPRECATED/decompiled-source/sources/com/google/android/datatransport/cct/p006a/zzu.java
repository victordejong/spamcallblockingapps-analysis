package com.google.android.datatransport.cct.p006a;

import android.util.SparseArray;
/* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
/* renamed from: com.google.android.datatransport.cct.a.zzu */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzu.class */
public final class zzu extends Enum<zzu> {
    public static final zzu zza = new zzu("DEFAULT", 0, 0);
    public static final zzu zzb = new zzu("UNMETERED_ONLY", 1, 1);
    public static final zzu zzc = new zzu("UNMETERED_OR_DAILY", 2, 2);
    public static final zzu zzd = new zzu("FAST_IF_RADIO_AWAKE", 3, 3);
    public static final zzu zze = new zzu("NEVER", 4, 4);
    public static final zzu zzf = new zzu("UNRECOGNIZED", 5, -1);
    private static final SparseArray<zzu> zzg;

    static {
        SparseArray<zzu> sparseArray = new SparseArray<>();
        zzg = sparseArray;
        sparseArray.put(0, zza);
        zzg.put(1, zzb);
        zzg.put(2, zzc);
        zzg.put(3, zzd);
        zzg.put(4, zze);
        zzg.put(-1, zzf);
    }

    private zzu(String str, int i, int i2) {
    }
}
