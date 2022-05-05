package io.fabric.sdk.android.services.common;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/DeliveryMechanism.class */
public enum DeliveryMechanism {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    
    public static final String BETA_APP_PACKAGE_NAME = "io.crash.air";

    /* renamed from: id */
    private final int f320id;

    DeliveryMechanism(int i) {
        this.f320id = i;
    }

    public static DeliveryMechanism determineFrom(String str) {
        return BETA_APP_PACKAGE_NAME.equals(str) ? TEST_DISTRIBUTION : str != null ? APP_STORE : DEVELOPER;
    }

    public int getId() {
        return this.f320id;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f320id);
    }
}
