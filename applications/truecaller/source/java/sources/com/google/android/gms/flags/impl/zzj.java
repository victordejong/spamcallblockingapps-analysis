package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.flags.zze;
import p193e.p1577m.p1578a.p1642f.p1662h.p1663a.CallableC25016e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/impl/zzj.class */
public final class zzj {

    /* renamed from: a */
    public static SharedPreferences f6201a;

    /* renamed from: a */
    public static SharedPreferences m38721a(Context context) throws Exception {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (f6201a == null) {
                    f6201a = (SharedPreferences) zze.zza(new CallableC25016e(context));
                }
                sharedPreferences = f6201a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }
}
