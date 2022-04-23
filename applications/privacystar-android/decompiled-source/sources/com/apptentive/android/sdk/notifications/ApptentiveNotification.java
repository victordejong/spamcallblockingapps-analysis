package com.apptentive.android.sdk.notifications;

import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/notifications/ApptentiveNotification.class */
public class ApptentiveNotification {
    private final String name;
    private final Map<String, Object> userInfo;

    public ApptentiveNotification(String str, Map<String, Object> map) {
        if (StringUtils.isNullOrEmpty(str)) {
            throw new IllegalArgumentException("Name is null or empty");
        }
        this.name = str;
        this.userInfo = map;
    }

    public String getName() {
        return this.name;
    }

    public <T> T getRequiredUserInfo(String str, Class<? extends T> cls) {
        return (T) getUserInfo(str, cls);
    }

    public <T> T getUserInfo(String str, Class<? extends T> cls) {
        return this.userInfo != null ? (T) ObjectUtils.m395as(this.userInfo.get(str), cls) : null;
    }

    public Map<String, Object> getUserInfo() {
        return this.userInfo;
    }

    public boolean hasName(String str) {
        return StringUtils.equal(this.name, str);
    }

    public String toString() {
        return String.format("name=%s userInfo={%s}", this.name, StringUtils.toString((Map<?, ?>) this.userInfo));
    }
}
