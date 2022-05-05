package com.google.android.gms.measurement.module;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.measurement.internal.zzfv;
import com.google.android.gms.measurement.internal.zzgs;
import com.google.android.gms.measurement.internal.zzgv;
@ShowFirstParty
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics.class */
public class Analytics {

    /* renamed from: a */
    private static volatile Analytics f9790a;

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics$Event.class */
    public static final class Event extends zzgs {
        private Event() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics$Param.class */
    public static final class Param extends zzgv {
        private Param() {
        }
    }

    private Analytics(zzfv zzfvVar) {
        Preconditions.m14523k(zzfvVar);
    }

    @RequiresPermission
    @ShowFirstParty
    @Keep
    public static Analytics getInstance(Context context) {
        if (f9790a == null) {
            synchronized (Analytics.class) {
                try {
                    if (f9790a == null) {
                        f9790a = new Analytics(zzfv.m11367d(context, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9790a;
    }
}
