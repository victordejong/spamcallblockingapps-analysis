package com.google.android.gms.measurement.internal;

import com.google.firebase.messaging.Constants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgu.class */
public class zzgu {

    /* renamed from: a */
    public static final String[] f9365a = {"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "first_open_after_install", "lifetime_user_engagement", "session_user_engagement", "non_personalized_ads", "ga_session_number", "ga_session_id", "last_gclid", "session_number", "session_id"};

    /* renamed from: b */
    public static final String[] f9366b = {Constants.ScionAnalytics.USER_PROPERTY_FIREBASE_LAST_NOTIFICATION, "_fot", "_fvt", "_ldl", "_id", "_fi", "_lte", "_se", "_npa", "_sno", "_sid", "_lgclid", "_sno", "_sid"};

    /* renamed from: a */
    public static String m11302a(String str) {
        return zzih.m11232c(str, f9365a, f9366b);
    }
}
