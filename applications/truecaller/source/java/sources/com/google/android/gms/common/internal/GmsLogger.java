package com.google.android.gms.common.internal;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/GmsLogger.class */
public final class GmsLogger {

    /* renamed from: a */
    public final String f5977a;

    /* renamed from: b */
    public final String f5978b;

    @KeepForSdk
    public GmsLogger(String str, String str2) {
        Preconditions.m38897k(str, "log tag cannot be null");
        Preconditions.m38905c(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f5977a = str;
        if (str2 == null || str2.length() <= 0) {
            this.f5978b = null;
        } else {
            this.f5978b = str2;
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m38917a(int i) {
        return Log.isLoggable(this.f5977a, i);
    }

    @KeepForSdk
    /* renamed from: b */
    public void m38916b(String str, String str2) {
        String str3;
        if (!m38917a(3) || (str3 = this.f5978b) == null) {
            return;
        }
        str3.concat(str2);
    }

    @KeepForSdk
    /* renamed from: c */
    public void m38915c(String str, String str2) {
        String str3;
        if (!m38917a(6) || (str3 = this.f5978b) == null) {
            return;
        }
        str3.concat(str2);
    }

    @KeepForSdk
    /* renamed from: d */
    public void m38914d(String str, String str2, Throwable th) {
        String str3;
        if (!m38917a(6) || (str3 = this.f5978b) == null) {
            return;
        }
        str3.concat(str2);
    }

    @KeepForSdk
    /* renamed from: e */
    public void m38913e(String str, String str2) {
        String str3;
        if (!m38917a(5) || (str3 = this.f5978b) == null) {
            return;
        }
        str3.concat(str2);
    }
}
