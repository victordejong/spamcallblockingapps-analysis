package com.google.android.gms.iid;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzai.class */
public abstract class zzai {
    private static zzai zzdd;

    public static zzai zzy() {
        zzai zzaiVar;
        synchronized (zzai.class) {
            try {
                if (zzdd == null) {
                    zzdd = new zzac();
                }
                zzaiVar = zzdd;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaiVar;
    }

    public abstract zzaj<Boolean> zzd(String str, boolean z);
}
