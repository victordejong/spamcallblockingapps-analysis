package com.google.protobuf;
/* renamed from: com.google.protobuf.v */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/v.class */
class C2661v implements AbstractC2637l0 {

    /* renamed from: a */
    private static final C2661v f11218a = new C2661v();

    private C2661v() {
    }

    /* renamed from: c */
    public static C2661v m2267c() {
        return f11218a;
    }

    @Override // com.google.protobuf.AbstractC2637l0
    /* renamed from: a */
    public AbstractC2629k0 mo2269a(Class<?> cls) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            try {
                return (AbstractC2629k0) GeneratedMessageLite.m3039F(cls.asSubclass(GeneratedMessageLite.class)).m3027y();
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
            }
        } else {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
    }

    @Override // com.google.protobuf.AbstractC2637l0
    /* renamed from: b */
    public boolean mo2268b(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }
}
