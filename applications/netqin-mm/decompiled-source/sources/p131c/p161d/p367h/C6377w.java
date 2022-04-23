package p131c.p161d.p367h;

import com.google.protobuf.GeneratedMessageLite;
/* renamed from: c.d.h.w */
/* loaded from: classes2-dex2jar.jar:c/d/h/w.class */
public class C6377w implements AbstractC6346m0 {

    /* renamed from: a */
    public static final C6377w f20046a = new C6377w();

    /* renamed from: a */
    public static C6377w m21027a() {
        return f20046a;
    }

    @Override // p131c.p161d.p367h.AbstractC6346m0
    /* renamed from: a */
    public AbstractC6341l0 mo21026a(Class<?> cls) {
        if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
            try {
                return (AbstractC6341l0) GeneratedMessageLite.m6950a((Class<GeneratedMessageLite>) cls.asSubclass(GeneratedMessageLite.class)).m6946f();
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
            }
        } else {
            throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6346m0
    /* renamed from: b */
    public boolean mo21025b(Class<?> cls) {
        return GeneratedMessageLite.class.isAssignableFrom(cls);
    }
}
