package com.apptentive.android.sdk.notifications;

import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/notifications/ApptentiveNotification.class */
public class ApptentiveNotification {
    private final String name;
    private final Map<String, Object> userInfo;

    public ApptentiveNotification(String str, Map<String, Object> map) {
        if (!StringUtils.isNullOrEmpty(str)) {
            this.name = str;
            this.userInfo = map;
            return;
        }
        throw new IllegalArgumentException("Name is null or empty");
    }

    public <T> T getRequiredUserInfo(String str, Class<? extends T> cls) {
        return (T) getUserInfo(str, cls);
    }

    public <T> T getUserInfo(String str, Class<? extends T> cls) {
        Map<String, Object> map = this.userInfo;
        return map != null ? (T) ObjectUtils.m15631as(map.get(str), cls) : null;
    }

    public boolean hasName(String str) {
        return StringUtils.equal(this.name, str);
    }

    public String toString() {
        return String.format("name=%s userInfo={%s}", this.name, StringUtils.toString((Map<?, ?>) this.userInfo));
    }
}
