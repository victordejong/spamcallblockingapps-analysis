package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DeliveryMechanism.class */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    
    private final int id;

    DeliveryMechanism(int i) {
        this.id = i;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public final int getId() {
        return this.id;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.id);
    }
}
