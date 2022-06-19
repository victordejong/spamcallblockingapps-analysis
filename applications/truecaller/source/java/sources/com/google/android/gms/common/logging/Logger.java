package com.google.android.gms.common.logging;

import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/logging/Logger.class */
public class Logger {

    /* renamed from: a */
    public final String f6071a;

    /* renamed from: b */
    public final String f6072b;

    /* renamed from: c */
    public final int f6073c;

    @KeepForSdk
    public Logger(String str, String... strArr) {
        String str2;
        if (strArr.length == 0) {
            str2 = "";
        } else {
            StringBuilder m8558w = C22128a.m8558w('[');
            for (String str3 : strArr) {
                if (m8558w.length() > 1) {
                    m8558w.append(",");
                }
                m8558w.append(str3);
            }
            m8558w.append("] ");
            str2 = m8558w.toString();
        }
        this.f6072b = str2;
        this.f6071a = str;
        new GmsLogger(str, null);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.f6071a, i)) {
            i++;
        }
        this.f6073c = i;
    }

    @KeepForSdk
    /* renamed from: a */
    public void m38818a(String str, Object... objArr) {
        if (this.f6073c <= 3) {
            m38817b(str, objArr);
        }
    }

    @KeepForSdk
    /* renamed from: b */
    public String m38817b(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f6072b.concat(str2);
    }
}
