package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidNativeCommandHandler.class */
public class MraidNativeCommandHandler {
    public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f34444a = {"yyyy-MM-dd'T'HH:mm:ssZZZZZ", "yyyy-MM-dd'T'HH:mmZZZZZ"};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Activity activity) {
        return (activity.getWindow() == null || (activity.getWindow().getAttributes().flags & Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE) == 0) ? false : true;
    }

    public static boolean isStorePictureSupported(Context context) {
        return false;
    }
}
