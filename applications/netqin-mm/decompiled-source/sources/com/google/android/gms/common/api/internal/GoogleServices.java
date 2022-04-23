package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.C7228R;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.util.VisibleForTesting;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/GoogleServices.class */
public final class GoogleServices {

    /* renamed from: d */
    public static final Object f23151d = new Object();

    /* renamed from: e */
    public static GoogleServices f23152e;

    /* renamed from: a */
    public final String f23153a;

    /* renamed from: b */
    public final Status f23154b;

    /* renamed from: c */
    public final boolean f23155c;

    @VisibleForTesting
    @KeepForSdk
    public GoogleServices(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(C7228R.string.common_google_play_services_unknown_issue));
        boolean z = false;
        if (identifier != 0) {
            this.f23155c = !(resources.getInteger(identifier) != 0 ? true : z);
        } else {
            this.f23155c = false;
        }
        String a = zzs.m17156a(context);
        String a2 = a == null ? new StringResourceValueReader(context).m17276a("google_app_id") : a;
        if (TextUtils.isEmpty(a2)) {
            this.f23154b = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f23153a = null;
            return;
        }
        this.f23153a = a2;
        this.f23154b = Status.f23076e;
    }

    @KeepForSdk
    /* renamed from: a */
    public static Status m17635a(Context context) {
        Status status;
        Preconditions.m17287a(context, "Context must not be null.");
        synchronized (f23151d) {
            if (f23152e == null) {
                f23152e = new GoogleServices(context);
            }
            status = f23152e.f23154b;
        }
        return status;
    }

    @KeepForSdk
    /* renamed from: a */
    public static GoogleServices m17634a(String str) {
        GoogleServices googleServices;
        synchronized (f23151d) {
            if (f23152e != null) {
                googleServices = f23152e;
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34);
                sb.append("Initialize must be called before ");
                sb.append(str);
                sb.append(".");
                throw new IllegalStateException(sb.toString());
            }
        }
        return googleServices;
    }

    @KeepForSdk
    /* renamed from: a */
    public static String m17636a() {
        return m17634a("getGoogleAppId").f23153a;
    }

    @KeepForSdk
    /* renamed from: b */
    public static boolean m17633b() {
        return m17634a("isMeasurementExplicitlyDisabled").f23155c;
    }
}
