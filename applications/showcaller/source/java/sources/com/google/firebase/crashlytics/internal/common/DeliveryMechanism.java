package com.google.firebase.crashlytics.internal.common;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DeliveryMechanism.class */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: id */
    private final int f39266id;

    DeliveryMechanism(int i) {
        this.f39266id = i;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    public int getId() {
        return this.f39266id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f39266id);
    }
}
