package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.android.exoplayer2.C0515C;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidNativeCommandHandler.class */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    /* renamed from: a */
    public static boolean m3403a(Context context) {
        return false;
    }

    public static boolean isStorePictureSupported(Context context) {
        return false;
    }

    /* renamed from: b */
    public boolean m3402b(Activity activity, View view) {
        boolean z = false;
        if (activity.getWindow() == null) {
            return false;
        }
        if ((activity.getWindow().getAttributes().flags & C0515C.DEFAULT_MUXED_BUFFER_SIZE) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m3401c(Context context) {
        return false;
    }

    /* renamed from: d */
    public boolean m3400d(Context context) {
        return false;
    }
}
