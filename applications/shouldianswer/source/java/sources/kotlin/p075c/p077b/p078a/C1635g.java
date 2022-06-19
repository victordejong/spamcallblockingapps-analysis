package kotlin.p075c.p077b.p078a;

import java.lang.reflect.Field;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.b.a.g */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/g.class */
public final class C1635g {
    /* renamed from: a */
    public static final StackTraceElement m3157a(AbstractC1629a abstractC1629a) {
        String str;
        C1694h.m3117b(abstractC1629a, "$this$getStackTraceElementImpl");
        AbstractC1634f m3156b = m3156b(abstractC1629a);
        if (m3156b != null) {
            m3158a(1, m3156b.m3163a());
            int m3155c = m3155c(abstractC1629a);
            int i = m3155c < 0 ? -1 : m3156b.m3161c()[m3155c];
            String m3151a = C1637i.f4360b.m3151a(abstractC1629a);
            if (m3151a == null) {
                str = m3156b.m3159e();
            } else {
                str = m3151a + '/' + m3156b.m3159e();
            }
            return new StackTraceElement(str, m3156b.m3160d(), m3156b.m3162b(), i);
        }
        return null;
    }

    /* renamed from: a */
    private static final void m3158a(int i, int i2) {
        if (i2 <= i) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
    }

    /* renamed from: b */
    private static final AbstractC1634f m3156b(AbstractC1629a abstractC1629a) {
        return (AbstractC1634f) abstractC1629a.getClass().getAnnotation(AbstractC1634f.class);
    }

    /* renamed from: c */
    private static final int m3155c(AbstractC1629a abstractC1629a) {
        int i;
        try {
            Field declaredField = abstractC1629a.getClass().getDeclaredField("label");
            C1694h.m3122a((Object) declaredField, "field");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(abstractC1629a);
            Object obj2 = obj;
            if (!(obj instanceof Integer)) {
                obj2 = null;
            }
            Integer num = (Integer) obj2;
            i = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception e) {
            i = -1;
        }
        return i;
    }
}
