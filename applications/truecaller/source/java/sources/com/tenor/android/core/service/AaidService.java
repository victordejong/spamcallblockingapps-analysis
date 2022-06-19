package com.tenor.android.core.service;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/service/AaidService.class */
public class AaidService {
    public static final String ACTION_GET_AAID = "ACTION_GET_AAID";
    public static final int JOB_ID_GET_AAID = 0;

    public static void requestAaid(Context context) {
        requestAaid(context, null);
    }

    public static void requestAaid(Context context, IAaidListener iAaidListener) {
        try {
            AaidServiceApi26.requestAaid(context, iAaidListener);
        } catch (NoClassDefFoundError e) {
            AaidServiceCompat.requestAaid(context, iAaidListener);
        }
    }
}
