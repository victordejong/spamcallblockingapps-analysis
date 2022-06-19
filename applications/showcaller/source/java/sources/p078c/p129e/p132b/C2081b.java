package p078c.p129e.p132b;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.e.b.b */
/* loaded from: classes2-dex2jar.jar:c/e/b/b.class */
class C2081b {

    /* renamed from: a */
    private static final Class<?>[] f7204a;

    /* renamed from: b */
    private static final Map<Class<?>, Class<?>> f7205b;

    /* renamed from: c */
    private static final Map<Class<?>, Class<?>> f7206c = new HashMap();

    static {
        Class<?> cls = Byte.TYPE;
        Class<?> cls2 = Short.TYPE;
        Class<?> cls3 = Character.TYPE;
        Class<?> cls4 = Integer.TYPE;
        Class<?> cls5 = Long.TYPE;
        Class<?> cls6 = Float.TYPE;
        f7204a = new Class[]{cls, cls2, cls3, cls4, cls5, cls6, Double.TYPE};
        HashMap hashMap = new HashMap();
        f7205b = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(cls4, Integer.class);
        hashMap.put(cls5, Long.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(cls6, Float.class);
        Class cls7 = Void.TYPE;
        hashMap.put(cls7, cls7);
        for (Class<?> cls8 : hashMap.keySet()) {
            Class<?> cls9 = f7205b.get(cls8);
            if (!cls8.equals(cls9)) {
                f7206c.put(cls9, cls8);
            }
        }
    }

    /* renamed from: a */
    public static boolean m28084a(Member member) {
        return member != null && Modifier.isPublic(member.getModifiers()) && !member.isSynthetic();
    }

    /* renamed from: b */
    private static boolean m28083b(int i) {
        return (i & 7) == 0;
    }

    /* renamed from: c */
    public static boolean m28082c(AccessibleObject accessibleObject) {
        if (accessibleObject == null || accessibleObject.isAccessible()) {
            return false;
        }
        Member member = (Member) accessibleObject;
        if (accessibleObject.isAccessible() || !Modifier.isPublic(member.getModifiers()) || !m28083b(member.getDeclaringClass().getModifiers())) {
            return false;
        }
        try {
            accessibleObject.setAccessible(true);
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }
}
