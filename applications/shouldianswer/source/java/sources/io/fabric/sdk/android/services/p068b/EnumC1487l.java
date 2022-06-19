package io.fabric.sdk.android.services.p068b;
/* renamed from: io.fabric.sdk.android.services.b.l */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/l.class */
public enum EnumC1487l {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: e */
    private final int f4082e;

    EnumC1487l(int i) {
        this.f4082e = i;
    }

    /* renamed from: a */
    public static EnumC1487l m3457a(String str) {
        return "io.crash.air".equals(str) ? TEST_DISTRIBUTION : str != null ? APP_STORE : DEVELOPER;
    }

    /* renamed from: a */
    public int m3458a() {
        return this.f4082e;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f4082e);
    }
}
