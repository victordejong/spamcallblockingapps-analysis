package com.google.android.gms.common.logging;

import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/logging/Logger.class */
public class Logger {
    private final String zza;
    private final String zzb;
    private final GmsLogger zzc;
    private final int zzd;

    @KeepForSdk
    public Logger(@RecentlyNonNull String str, @RecentlyNonNull String... strArr) {
        String str2;
        if (strArr.length == 0) {
            str2 = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str3 : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str3);
            }
            sb.append("] ");
            str2 = sb.toString();
        }
        this.zzb = str2;
        this.zza = str;
        this.zzc = new GmsLogger(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.zza, i)) {
            i++;
        }
        this.zzd = i;
    }

    @KeepForSdk
    /* renamed from: d */
    public void m4426d(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.zza, format(str, objArr), th);
        }
    }

    @KeepForSdk
    /* renamed from: d */
    public void m4425d(@RecentlyNonNull String str, Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.zza, format(str, objArr));
        }
    }

    @KeepForSdk
    /* renamed from: e */
    public void m4424e(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        Log.e(this.zza, format(str, objArr), th);
    }

    @KeepForSdk
    /* renamed from: e */
    public void m4423e(@RecentlyNonNull String str, Object... objArr) {
        Log.e(this.zza, format(str, objArr));
    }

    @RecentlyNonNull
    @KeepForSdk
    public String format(@RecentlyNonNull String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.zzb.concat(str2);
    }

    @RecentlyNonNull
    @KeepForSdk
    public String getTag() {
        return this.zza;
    }

    @KeepForSdk
    /* renamed from: i */
    public void m4422i(@RecentlyNonNull String str, Object... objArr) {
        Log.i(this.zza, format(str, objArr));
    }

    @KeepForSdk
    public boolean isLoggable(int i) {
        return this.zzd <= i;
    }

    @KeepForSdk
    /* renamed from: v */
    public void m4421v(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.zza, format(str, objArr), th);
        }
    }

    @KeepForSdk
    /* renamed from: v */
    public void m4420v(@RecentlyNonNull String str, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.zza, format(str, objArr));
        }
    }

    @KeepForSdk
    /* renamed from: w */
    public void m4419w(@RecentlyNonNull String str, Object... objArr) {
        Log.w(this.zza, format(str, objArr));
    }

    @KeepForSdk
    public void wtf(@RecentlyNonNull String str, @RecentlyNonNull Throwable th, Object... objArr) {
        Log.wtf(this.zza, format(str, objArr), th);
    }

    @KeepForSdk
    public void wtf(@RecentlyNonNull Throwable th) {
        Log.wtf(this.zza, th);
    }
}
