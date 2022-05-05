package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DeliveryMechanism.class */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: id */
    private final int f11909id;

    DeliveryMechanism(int i) {
        this.f11909id = i;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int getId() {
        return this.f11909id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f11909id);
    }
}
