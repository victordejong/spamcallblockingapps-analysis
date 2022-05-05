package com.google.android.gms.iid;

import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzai.class */
public abstract class zzai {
    @GuardedBy

    /* renamed from: a */
    private static zzai f7767a;

    /* renamed from: b */
    public static zzai m14151b() {
        zzai zzaiVar;
        synchronized (zzai.class) {
            try {
                if (f7767a == null) {
                    f7767a = new zzac();
                }
                zzaiVar = f7767a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaiVar;
    }

    /* renamed from: a */
    public abstract zzaj<Boolean> mo14152a(String str, boolean z);
}
