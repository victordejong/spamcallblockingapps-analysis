package com.truecaller.network.notification;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes11-dex2jar.jar:com/truecaller/network/notification/NotificationScope.class */
public enum NotificationScope {
    LOCAL(-1, ""),
    GLOBAL(1, "global"),
    PERSONAL(2, "personal");
    
    public final String stringValue;
    public final int value;

    NotificationScope(int i, String str) {
        this.value = i;
        this.stringValue = str;
    }

    public static NotificationScope valueOf(int i) {
        NotificationScope[] values = values();
        for (int i2 = 0; i2 < 3; i2++) {
            NotificationScope notificationScope = values[i2];
            if (notificationScope.value == i) {
                return notificationScope;
            }
        }
        throw new IllegalArgumentException(C22128a.m8611i2("Unknown NotificationScope value, ", i));
    }
}
