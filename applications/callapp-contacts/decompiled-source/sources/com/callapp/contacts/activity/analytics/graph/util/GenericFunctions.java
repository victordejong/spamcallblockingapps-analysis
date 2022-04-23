package com.callapp.contacts.activity.analytics.graph.util;

import com.callapp.contacts.CallAppApplication;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/util/GenericFunctions.class */
public class GenericFunctions {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f10994a = false;

    /* renamed from: b  reason: collision with root package name */
    private static float f10995b = 3.0f;

    public static float a(float f) {
        if (f10994a) {
            return f * f10995b;
        }
        throw new IllegalStateException("Missing call to GenericFunctions::initialize()");
    }

    public static void a() {
        f10994a = true;
        f10995b = CallAppApplication.get().getResources().getDisplayMetrics().scaledDensity;
    }
}
