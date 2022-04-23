package com.apptentive.android.sdk.notifications;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/notifications/ApptentiveNotificationCenter.class */
public class ApptentiveNotificationCenter {
    private static final Map<String, Object> EMPTY_USER_INFO = Collections.emptyMap();
    private final Map<String, ApptentiveNotificationObserverList> observerListLookup = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/notifications/ApptentiveNotificationCenter$Holder.class */
    public static class Holder {
        static final ApptentiveNotificationCenter INSTANCE = new ApptentiveNotificationCenter();

        private Holder() {
        }
    }

    ApptentiveNotificationCenter() {
    }

    public static ApptentiveNotificationCenter defaultCenter() {
        return Holder.INSTANCE;
    }

    private ApptentiveNotificationObserverList findObserverList(String str) {
        ApptentiveNotificationObserverList apptentiveNotificationObserverList;
        synchronized (this) {
            apptentiveNotificationObserverList = this.observerListLookup.get(str);
        }
        return apptentiveNotificationObserverList;
    }

    private ApptentiveNotificationObserverList resolveObserverList(String str) {
        ApptentiveNotificationObserverList apptentiveNotificationObserverList;
        synchronized (this) {
            ApptentiveNotificationObserverList apptentiveNotificationObserverList2 = this.observerListLookup.get(str);
            apptentiveNotificationObserverList = apptentiveNotificationObserverList2;
            if (apptentiveNotificationObserverList2 == null) {
                apptentiveNotificationObserverList = new ApptentiveNotificationObserverList();
                this.observerListLookup.put(str, apptentiveNotificationObserverList);
            }
        }
        return apptentiveNotificationObserverList;
    }

    public ApptentiveNotificationCenter addObserver(String str, ApptentiveNotificationObserver apptentiveNotificationObserver) {
        synchronized (this) {
            addObserver(str, apptentiveNotificationObserver, false);
        }
        return this;
    }

    public void addObserver(String str, ApptentiveNotificationObserver apptentiveNotificationObserver, boolean z) {
        synchronized (this) {
            resolveObserverList(str).addObserver(apptentiveNotificationObserver, z);
        }
    }

    public void postNotification(String str) {
        synchronized (this) {
            postNotification(str, EMPTY_USER_INFO);
        }
    }

    public void postNotification(String str, Map<String, Object> map) {
        synchronized (this) {
            ApptentiveLog.m403v(ApptentiveLogTag.NOTIFICATIONS, "Post notification: name=%s userInfo={%s}", str, StringUtils.toString((Map<?, ?>) map));
            ApptentiveNotificationObserverList findObserverList = findObserverList(str);
            if (findObserverList != null) {
                findObserverList.notifyObservers(new ApptentiveNotification(str, map));
            }
        }
    }

    public void postNotification(String str, Object... objArr) {
        synchronized (this) {
            postNotification(str, ObjectUtils.toMap(objArr));
        }
    }

    public void removeObserver(ApptentiveNotificationObserver apptentiveNotificationObserver) {
        synchronized (this) {
            for (ApptentiveNotificationObserverList apptentiveNotificationObserverList : this.observerListLookup.values()) {
                apptentiveNotificationObserverList.removeObserver(apptentiveNotificationObserver);
            }
        }
    }

    public void removeObserver(String str, ApptentiveNotificationObserver apptentiveNotificationObserver) {
        synchronized (this) {
            ApptentiveNotificationObserverList findObserverList = findObserverList(str);
            if (findObserverList != null) {
                findObserverList.removeObserver(apptentiveNotificationObserver);
            }
        }
    }
}
