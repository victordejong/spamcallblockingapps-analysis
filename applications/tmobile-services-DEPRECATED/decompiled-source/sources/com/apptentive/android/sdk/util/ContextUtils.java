package com.apptentive.android.sdk.util;

import android.app.NotificationManager;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.debug.Assert;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/ContextUtils.class */
public class ContextUtils {
    public static NotificationManager getNotificationManager(@NonNull Context context) {
        return (NotificationManager) getSystemService(context, "notification", NotificationManager.class);
    }

    @Nullable
    private static <T> T getSystemService(@NonNull Context context, @NonNull String str, @NonNull Class<? extends T> cls) {
        Object systemService = context.getSystemService(str);
        Assert.assertTrue(cls.isInstance(systemService), "Unexpected service class: %s", cls);
        return (T) ObjectUtils.m15631as(systemService, cls);
    }
}
