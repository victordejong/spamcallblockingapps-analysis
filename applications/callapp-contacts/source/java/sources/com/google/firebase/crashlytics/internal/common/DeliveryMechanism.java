package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DeliveryMechanism.class */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: id */
    private final int f56074id;

    DeliveryMechanism(int i) {
        this.f56074id = i;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public final int getId() {
        return this.f56074id;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f56074id);
    }
}
