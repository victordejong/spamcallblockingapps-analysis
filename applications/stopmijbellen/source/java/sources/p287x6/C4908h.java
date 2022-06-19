package p287x6;

import android.support.p012v4.media.C0082b;
import com.google.protobuf.AbstractC1888i;
/* renamed from: x6.h */
/* loaded from: classes-dex2jar.jar:x6/h.class */
public class C4908h implements AbstractC4917o {

    /* renamed from: a */
    public static final C4908h f15011a = new C4908h();

    @Override // p287x6.AbstractC4917o
    /* renamed from: a */
    public AbstractC4916n mo265a(Class<?> cls) {
        if (!AbstractC1888i.class.isAssignableFrom(cls)) {
            StringBuilder m8752j = C0082b.m8752j("Unsupported message type: ");
            m8752j.append(cls.getName());
            throw new IllegalArgumentException(m8752j.toString());
        }
        try {
            return (AbstractC4916n) AbstractC1888i.m4290s(cls.asSubclass(AbstractC1888i.class)).mo1597r(AbstractC1888i.EnumC1893e.BUILD_MESSAGE_INFO, null, null);
        } catch (Exception e) {
            StringBuilder m8752j2 = C0082b.m8752j("Unable to get message info for ");
            m8752j2.append(cls.getName());
            throw new RuntimeException(m8752j2.toString(), e);
        }
    }

    @Override // p287x6.AbstractC4917o
    /* renamed from: b */
    public boolean mo264b(Class<?> cls) {
        return AbstractC1888i.class.isAssignableFrom(cls);
    }
}
