package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.C2674j;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C2618au;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2670w;
import javax.annotation.concurrent.GuardedBy;
@Deprecated
/* renamed from: com.google.android.gms.common.api.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/g.class */
public final class C2552g {

    /* renamed from: a */
    private static final Object f7207a = new Object();
    @GuardedBy("sLock")

    /* renamed from: b */
    private static C2552g f7208b;

    /* renamed from: c */
    private final String f7209c;

    /* renamed from: d */
    private final Status f7210d;

    /* renamed from: e */
    private final boolean f7211e;

    /* renamed from: f */
    private final boolean f7212f;

    C2552g(Context context) {
        boolean z = true;
        boolean z2 = true;
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("google_app_measurement_enable", "integer", resources.getResourcePackageName(C2674j.C2675a.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            z = resources.getInteger(identifier) != 0;
            this.f7212f = z ? false : z2;
        } else {
            this.f7212f = false;
        }
        this.f7211e = z;
        String m14114a = C2618au.m14114a(context);
        String m13909a = m14114a == null ? new C2670w(context).m13909a("google_app_id") : m14114a;
        if (TextUtils.isEmpty(m13909a)) {
            this.f7210d = new Status(10, "Missing google app id value from from string resources with name google_app_id.");
            this.f7209c = null;
            return;
        }
        this.f7209c = m13909a;
        this.f7210d = Status.f7029a;
    }

    /* renamed from: a */
    public static Status m14249a(Context context) {
        Status status;
        C2662s.m13980a(context, "Context must not be null.");
        synchronized (f7207a) {
            if (f7208b == null) {
                f7208b = new C2552g(context);
            }
            status = f7208b.f7210d;
        }
        return status;
    }

    /* renamed from: a */
    private static C2552g m14248a(String str) {
        C2552g c2552g;
        synchronized (f7207a) {
            if (f7208b == null) {
                throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 34).append("Initialize must be called before ").append(str).append(".").toString());
            }
            c2552g = f7208b;
        }
        return c2552g;
    }

    /* renamed from: a */
    public static String m14250a() {
        return m14248a("getGoogleAppId").f7209c;
    }

    /* renamed from: b */
    public static boolean m14247b() {
        return m14248a("isMeasurementExplicitlyDisabled").f7212f;
    }
}
