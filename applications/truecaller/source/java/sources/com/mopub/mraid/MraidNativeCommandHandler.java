package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidNativeCommandHandler.class */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    public static boolean isStorePictureSupported(Context context) {
        return false;
    }

    /* renamed from: a */
    public boolean m36193a(Activity activity) {
        boolean z = false;
        if (activity.getWindow() == null) {
            return false;
        }
        if ((activity.getWindow().getAttributes().flags & 16777216) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m36192b() {
        return false;
    }

    /* renamed from: c */
    public boolean m36191c() {
        return false;
    }
}
