package p626l.p634w.p636k.p637a;

import androidx.core.app.NotificationCompatJellybean;
import java.lang.reflect.Field;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.k.a.g */
/* loaded from: classes3-dex2jar.jar:l/w/k/a/g.class */
public final class C15071g {
    /* renamed from: a */
    public static final AbstractC15070f m467a(AbstractC15065a aVar) {
        return (AbstractC15070f) aVar.getClass().getAnnotation(AbstractC15070f.class);
    }

    /* renamed from: a */
    public static final void m468a(int i, int i2) {
        if (i2 > i) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i + ", got " + i2 + ". Please update the Kotlin standard library.").toString());
        }
    }

    /* renamed from: b */
    public static final int m466b(AbstractC15065a aVar) {
        int i;
        try {
            Field declaredField = aVar.getClass().getDeclaredField(NotificationCompatJellybean.KEY_LABEL);
            C15149k.m383a((Object) declaredField, "field");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(aVar);
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
    public static final StackTraceElement m465c(AbstractC15065a aVar) {
        String str;
        C15149k.m377b(aVar, "$this$getStackTraceElementImpl");
        AbstractC15070f a = m467a(aVar);
        if (a == null) {
            return null;
        }
        m468a(1, a.m469v());
        int b = m466b(aVar);
        int i = b < 0 ? -1 : a.m471l()[b];
        String b2 = C15073i.f33100c.m460b(aVar);
        if (b2 == null) {
            str = a.m473c();
        } else {
            str = b2 + '/' + a.m473c();
        }
        return new StackTraceElement(str, a.m470m(), a.m472f(), i);
    }
}
