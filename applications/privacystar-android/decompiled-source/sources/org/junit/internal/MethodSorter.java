package org.junit.internal;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
import org.junit.FixMethodOrder;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/MethodSorter.class */
public class MethodSorter {
    public static final Comparator<Method> DEFAULT = new Comparator<Method>() { // from class: org.junit.internal.MethodSorter.1
        public int compare(Method method, Method method2) {
            int hashCode = method.getName().hashCode();
            int hashCode2 = method2.getName().hashCode();
            if (hashCode == hashCode2) {
                return MethodSorter.NAME_ASCENDING.compare(method, method2);
            }
            return hashCode < hashCode2 ? -1 : 1;
        }
    };
    public static final Comparator<Method> NAME_ASCENDING = new Comparator<Method>() { // from class: org.junit.internal.MethodSorter.2
        public int compare(Method method, Method method2) {
            int compareTo = method.getName().compareTo(method2.getName());
            return compareTo != 0 ? compareTo : method.toString().compareTo(method2.toString());
        }
    };

    private MethodSorter() {
    }

    public static Method[] getDeclaredMethods(Class<?> cls) {
        Comparator<Method> sorter = getSorter((FixMethodOrder) cls.getAnnotation(FixMethodOrder.class));
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (sorter != null) {
            Arrays.sort(declaredMethods, sorter);
        }
        return declaredMethods;
    }

    private static Comparator<Method> getSorter(FixMethodOrder fixMethodOrder) {
        return fixMethodOrder == null ? DEFAULT : fixMethodOrder.value().getComparator();
    }
}
