package com.google.android.gms.common.logging;

import android.util.Log;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/logging/Logger.class */
public class Logger {
    private final String zza;
    private final String zzb;
    private final GmsLogger zzc;
    private final int zzd;

    public Logger(String str, String... strArr) {
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

    /* renamed from: d */
    public void m1364d(String str, Throwable th, Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.zza, format(str, objArr), th);
        }
    }

    /* renamed from: d */
    public void m1363d(String str, Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.zza, format(str, objArr));
        }
    }

    /* renamed from: e */
    public void m1362e(String str, Throwable th, Object... objArr) {
        Log.e(this.zza, format(str, objArr), th);
    }

    /* renamed from: e */
    public void m1361e(String str, Object... objArr) {
        Log.e(this.zza, format(str, objArr));
    }

    protected String format(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.zzb.concat(str2);
    }

    public String getTag() {
        return this.zza;
    }

    /* renamed from: i */
    public void m1360i(String str, Object... objArr) {
        Log.i(this.zza, format(str, objArr));
    }

    public boolean isLoggable(int i) {
        return this.zzd <= i;
    }

    /* renamed from: v */
    public void m1359v(String str, Throwable th, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.zza, format(str, objArr), th);
        }
    }

    /* renamed from: v */
    public void m1358v(String str, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.zza, format(str, objArr));
        }
    }

    /* renamed from: w */
    public void m1357w(String str, Object... objArr) {
        Log.w(this.zza, format(str, objArr));
    }

    public void wtf(String str, Throwable th, Object... objArr) {
        Log.wtf(this.zza, format(str, objArr), th);
    }

    public void wtf(Throwable th) {
        Log.wtf(this.zza, th);
    }
}
