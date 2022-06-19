package p092e.p103f.p106b;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e.f.b.b */
/* loaded from: classes2-dex2jar.jar:e/f/b/b.class */
class C3100b {

    /* renamed from: a */
    private static final Map<Class<?>, Class<?>> f12734a;

    /* renamed from: b */
    private static final Map<Class<?>, Class<?>> f12735b = new HashMap();

    static {
        Class cls = Byte.TYPE;
        Class cls2 = Short.TYPE;
        Class cls3 = Character.TYPE;
        Class cls4 = Integer.TYPE;
        Class cls5 = Long.TYPE;
        Class cls6 = Float.TYPE;
        Class cls7 = Double.TYPE;
        HashMap hashMap = new HashMap();
        f12734a = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(cls4, Integer.class);
        hashMap.put(cls5, Long.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(cls6, Float.class);
        Class cls8 = Void.TYPE;
        hashMap.put(cls8, cls8);
        for (Class<?> cls9 : hashMap.keySet()) {
            Class<?> cls10 = f12734a.get(cls9);
            if (!cls9.equals(cls10)) {
                f12735b.put(cls10, cls9);
            }
        }
    }

    /* renamed from: a */
    public static boolean m224a(Member member) {
        return member != null && Modifier.isPublic(member.getModifiers()) && !member.isSynthetic();
    }

    /* renamed from: b */
    private static boolean m223b(int i) {
        return (i & 7) == 0;
    }

    /* renamed from: c */
    public static boolean m222c(AccessibleObject accessibleObject) {
        if (accessibleObject == null || accessibleObject.isAccessible()) {
            return false;
        }
        Member member = (Member) accessibleObject;
        if (accessibleObject.isAccessible() || !Modifier.isPublic(member.getModifiers()) || !m223b(member.getDeclaringClass().getModifiers())) {
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
