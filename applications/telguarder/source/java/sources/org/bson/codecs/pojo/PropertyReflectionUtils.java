package org.bson.codecs.pojo;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyReflectionUtils.class */
final class PropertyReflectionUtils {
    private static final String GET_PREFIX = "get";
    private static final String IS_PREFIX = "is";
    private static final String SET_PREFIX = "set";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyReflectionUtils$PropertyMethods.class */
    public static class PropertyMethods {
        private final Collection<Method> getterMethods;
        private final Collection<Method> setterMethods;

        PropertyMethods(Collection<Method> collection, Collection<Method> collection2) {
            this.getterMethods = collection;
            this.setterMethods = collection2;
        }

        public Collection<Method> getGetterMethods() {
            return this.getterMethods;
        }

        public Collection<Method> getSetterMethods() {
            return this.setterMethods;
        }
    }

    private PropertyReflectionUtils() {
    }

    public static PropertyMethods getPropertyMethods(Class<?> cls) {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Method method : cls.getDeclaredMethods()) {
            if (Modifier.isPublic(method.getModifiers()) && !method.isBridge()) {
                if (isGetter(method)) {
                    arrayList2.add(method);
                } else if (isSetter(method)) {
                    arrayList.add(method);
                }
            }
        }
        return new PropertyMethods(arrayList2, arrayList);
    }

    public static boolean isGetter(Method method) {
        if (method.getParameterTypes().length > 0) {
            return false;
        }
        if (method.getName().startsWith(GET_PREFIX) && method.getName().length() > 3) {
            return Character.isUpperCase(method.getName().charAt(3));
        }
        if (method.getName().startsWith(IS_PREFIX) && method.getName().length() > 2) {
            return Character.isUpperCase(method.getName().charAt(2));
        }
        return false;
    }

    static boolean isSetter(Method method) {
        if (!method.getName().startsWith(SET_PREFIX) || method.getName().length() <= 3 || method.getParameterTypes().length != 1) {
            return false;
        }
        return Character.isUpperCase(method.getName().charAt(3));
    }

    public static String toPropertyName(Method method) {
        String name = method.getName();
        char[] charArray = name.substring(name.startsWith(IS_PREFIX) ? 2 : 3, name.length()).toCharArray();
        charArray[0] = Character.toLowerCase(charArray[0]);
        return new String(charArray);
    }
}
