package com.google.android.gms.measurement.module;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.measurement.internal.C4296fd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics.class */
public class Analytics {

    /* renamed from: a */
    private static volatile Analytics f19497a;

    /* renamed from: b */
    private final C4296fd f19498b;

    private Analytics(C4296fd c4296fd) {
        C2662s.m13981a(c4296fd);
        this.f19498b = c4296fd;
    }

    @Keep
    public static Analytics getInstance(Context context) {
        if (f19497a == null) {
            synchronized (Analytics.class) {
                try {
                    if (f19497a == null) {
                        f19497a = new Analytics(C4296fd.m4565a(context, null, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19497a;
    }
}
