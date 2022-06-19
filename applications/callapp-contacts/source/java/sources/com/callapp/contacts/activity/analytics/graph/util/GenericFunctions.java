package com.callapp.contacts.activity.analytics.graph.util;

import com.callapp.contacts.CallAppApplication;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/util/GenericFunctions.class */
public class GenericFunctions {

    /* renamed from: a */
    private static boolean f20140a = false;

    /* renamed from: b */
    private static float f20141b = 3.0f;

    /* renamed from: a */
    public static float m31531a(float f) {
        if (f20140a) {
            return f * f20141b;
        }
        throw new IllegalStateException("Missing call to GenericFunctions::initialize()");
    }

    /* renamed from: a */
    public static void m31532a() {
        f20140a = true;
        f20141b = CallAppApplication.get().getResources().getDisplayMetrics().scaledDensity;
    }
}
