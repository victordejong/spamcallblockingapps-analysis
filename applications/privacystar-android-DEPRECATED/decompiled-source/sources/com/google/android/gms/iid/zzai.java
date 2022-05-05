package com.google.android.gms.iid;

import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzai.class */
abstract class zzai {
    @GuardedBy("SdkFlagFactory.class")
    private static zzai zzcy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzai zzw() {
        zzai zzaiVar;
        synchronized (zzai.class) {
            try {
                if (zzcy == null) {
                    zzcy = new zzac();
                }
                zzaiVar = zzcy;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract zzaj<Boolean> zzd(String str, boolean z);
}
