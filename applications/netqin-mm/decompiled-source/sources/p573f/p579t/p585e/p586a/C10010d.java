package p573f.p579t.p585e.p586a;

import java.lang.reflect.Field;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.t.e.a.d */
/* loaded from: classes2-dex2jar.jar:f/t/e/a/d.class */
public final class C10010d {
    /* renamed from: a */
    public static final AbstractC10009c m1677a(BaseContinuationImpl baseContinuationImpl) {
        return (AbstractC10009c) baseContinuationImpl.getClass().getAnnotation(AbstractC10009c.class);
    }

    /* renamed from: a */
    public static final void m1678a(int i, int i2) {
        if (i2 > i) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
        }
    }

    /* renamed from: b */
    public static final int m1676b(BaseContinuationImpl baseContinuationImpl) {
        int i;
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField("label");
            C10059q.m1642a((Object) declaredField, "field");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
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

    /* renamed from: c */
    public static final StackTraceElement m1675c(BaseContinuationImpl baseContinuationImpl) {
        String str;
        C10059q.m1637b(baseContinuationImpl, "$this$getStackTraceElementImpl");
        AbstractC10009c a = m1677a(baseContinuationImpl);
        if (a == null) {
            return null;
        }
        m1678a(1, a.m1679v());
        int b = m1676b(baseContinuationImpl);
        int i = b < 0 ? -1 : a.m1681l()[b];
        String b2 = C10012f.f37167c.m1672b(baseContinuationImpl);
        if (b2 == null) {
            str = a.m1683c();
        } else {
            str = b2 + '/' + a.m1683c();
        }
        return new StackTraceElement(str, a.m1680m(), a.m1682f(), i);
    }
}
