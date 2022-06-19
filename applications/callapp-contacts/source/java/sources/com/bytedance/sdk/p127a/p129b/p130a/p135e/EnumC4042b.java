package com.bytedance.sdk.p127a.p129b.p130a.p135e;
/* renamed from: com.bytedance.sdk.a.b.a.e.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/b.class */
public enum EnumC4042b {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);
    

    /* renamed from: g */
    public final int f14656g;

    EnumC4042b(int i) {
        this.f14656g = i;
    }

    /* renamed from: a */
    public static EnumC4042b m36839a(int i) {
        EnumC4042b[] values;
        for (EnumC4042b enumC4042b : values()) {
            if (enumC4042b.f14656g == i) {
                return enumC4042b;
            }
        }
        return null;
    }
}
