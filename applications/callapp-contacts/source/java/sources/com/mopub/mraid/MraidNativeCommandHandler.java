package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidNativeCommandHandler.class */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    /* renamed from: a */
    private static final String[] f59784a = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ"};

    /* renamed from: a */
    public static boolean m6244a() {
        return false;
    }

    /* renamed from: a */
    public static boolean m6243a(Activity activity) {
        return (activity.getWindow() == null || (activity.getWindow().getAttributes().flags & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) == 0) ? false : true;
    }

    public static boolean isStorePictureSupported(Context context) {
        return false;
    }
}
