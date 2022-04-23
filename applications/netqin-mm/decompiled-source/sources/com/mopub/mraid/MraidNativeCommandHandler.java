package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidNativeCommandHandler.class */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    /* renamed from: c */
    public static boolean m4045c(Context context) {
        return false;
    }

    public static boolean isStorePictureSupported(Context context) {
        return false;
    }

    /* renamed from: a */
    public boolean m4048a(Activity activity, View view) {
        boolean z = false;
        if (activity.getWindow() == null) {
            return false;
        }
        if ((activity.getWindow().getAttributes().flags & 16777216) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m4047a(Context context) {
        return false;
    }

    /* renamed from: b */
    public boolean m4046b(Context context) {
        return false;
    }
}
