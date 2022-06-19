package com.freshchat.consumer.sdk;

import android.net.Uri;
import android.os.Bundle;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FreshchatNotificationConfig.class */
public final class FreshchatNotificationConfig {
    private String backstackFallbackActivityClassName;
    private int largeIconResId;
    private boolean notificationInterceptionEnabled;
    private Uri notificationSoundUri;
    private int smallIconResId;
    private boolean notificationSoundEnabled = true;
    private int priority = 0;
    private int importance = 3;

    private FreshchatNotificationConfig launchActivityOnFinish(String str, Bundle bundle, int i) {
        if (C1626as.m40233a(str)) {
            this.backstackFallbackActivityClassName = str.trim();
        } else {
            C1613ai.m40278w("FRESHCHAT_WARNING", "Invalid activity name received in launchActivityOnFinish()");
        }
        return this;
    }

    public String getActivityToLaunchOnFinish() {
        return this.backstackFallbackActivityClassName;
    }

    public int getImportance() {
        return this.importance;
    }

    public int getLargeIcon() {
        return this.largeIconResId;
    }

    public Uri getNotificationSound() {
        return this.notificationSoundUri;
    }

    public int getPriority() {
        return this.priority;
    }

    public int getSmallIcon() {
        return this.smallIconResId;
    }

    public boolean isNotificationInterceptionEnabled() {
        return this.notificationInterceptionEnabled;
    }

    public boolean isNotificationSoundEnabled() {
        return this.notificationSoundEnabled;
    }

    public FreshchatNotificationConfig launchActivityOnFinish(String str) {
        launchActivityOnFinish(str, null, -1);
        return this;
    }

    public FreshchatNotificationConfig setImportance(int i) {
        if (i < 0 || i > 5) {
            C1613ai.m40278w("FRESHCHAT_WARNING", EnumC1464c.INVALID_NOTIFICATION_CONFIG_IMPORTANCE_VALUE.toString().replace("{{importance}}", String.valueOf(i)));
        } else {
            this.importance = i;
        }
        return this;
    }

    public FreshchatNotificationConfig setLargeIcon(int i) {
        this.largeIconResId = i;
        return this;
    }

    public FreshchatNotificationConfig setNotificationInterceptionEnabled(boolean z) {
        this.notificationInterceptionEnabled = z;
        return this;
    }

    public FreshchatNotificationConfig setNotificationSound(Uri uri) {
        this.notificationSoundUri = uri;
        return this;
    }

    public FreshchatNotificationConfig setNotificationSoundEnabled(boolean z) {
        this.notificationSoundEnabled = z;
        return this;
    }

    public FreshchatNotificationConfig setPriority(int i) {
        if (i < -2 || i > 2) {
            C1613ai.m40278w("FRESHCHAT_WARNING", "Invalid notification priority value provided : " + i + ", fallback to default priority");
        } else {
            this.priority = i;
        }
        return this;
    }

    public FreshchatNotificationConfig setSmallIcon(int i) {
        this.smallIconResId = i;
        return this;
    }
}
