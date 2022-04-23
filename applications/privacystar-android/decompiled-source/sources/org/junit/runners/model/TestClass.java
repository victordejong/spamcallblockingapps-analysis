package org.junit.runners.model;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.internal.MethodSorter;
/* loaded from: classes2-dex2jar.jar:org/junit/runners/model/TestClass.class */
public class TestClass implements Annotatable {
    private static final FieldComparator FIELD_COMPARATOR = new FieldComparator();
    private static final MethodComparator METHOD_COMPARATOR = new MethodComparator();
    private final Class<?> clazz;
    private final Map<Class<? extends Annotation>, List<FrameworkField>> fieldsForAnnotations;
    private final Map<Class<? extends Annotation>, List<FrameworkMethod>> methodsForAnnotations;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/junit/runners/model/TestClass$FieldComparator.class */
    public static class FieldComparator implements Comparator<Field> {
        private FieldComparator() {
        }

        public int compare(Field field, Field field2) {
            return field.getName().compareTo(field2.getName());
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/junit/runners/model/TestClass$MethodComparator.class */
    private static class MethodComparator implements Comparator<FrameworkMethod> {
        private MethodComparator() {
        }

        public int compare(FrameworkMethod frameworkMethod, FrameworkMethod frameworkMethod2) {
            return MethodSorter.NAME_ASCENDING.compare(frameworkMethod.getMethod(), frameworkMethod2.getMethod());
        }
    }

    public TestClass(Class<?> cls) {
        this.clazz = cls;
        if (cls == null || cls.getConstructors().length <= 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            scanAnnotatedMembers(linkedHashMap, linkedHashMap2);
            this.methodsForAnnotations = makeDeeplyUnmodifiable(linkedHashMap);
            this.fieldsForAnnotations = makeDeeplyUnmodifiable(linkedHashMap2);
            return;
        }
        throw new IllegalArgumentException("Test class can only have one constructor");
    }

    protected static <T extends FrameworkMember<T>> void addToAnnotationLists(T t, Map<Class<? extends Annotation>, List<T>> map) {
        for (Annotation annotation : t.getAnnotations()) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            List<T> annotatedMembers = getAnnotatedMembers(map, annotationType, true);
            if (!t.isShadowedBy(annotatedMembers)) {
                if (runsTopToBottom(annotationType)) {
                    annotatedMembers.add(0, t);
                } else {
                    annotatedMembers.add(t);
                }
            } else {
                return;
            }
        }
    }

    private <T> List<T> collectValues(Map<?, List<T>> map) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (List<T> list : map.values()) {
            linkedHashSet.addAll(list);
        }
        return new ArrayList(linkedHashSet);
    }

    private static <T> List<T> getAnnotatedMembers(Map<Class<? extends Annotation>, List<T>> map, Class<? extends Annotation> cls, boolean z) {
        if (!map.containsKey(cls) && z) {
            map.put(cls, new ArrayList());
        }
        List<T> list = map.get(cls);
        List<T> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    private static Field[] getSortedDeclaredFields(Class<?> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        Arrays.sort(declaredFields, FIELD_COMPARATOR);
        return declaredFields;
    }

    private static List<Class<?>> getSuperClasses(Class<?> cls) {
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            arrayList.add(cls);
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    private static <T extends FrameworkMember<T>> Map<Class<? extends Annotation>, List<T>> makeDeeplyUnmodifiable(Map<Class<? extends Annotation>, List<T>> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Class<? extends Annotation>, List<T>> entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), Collections.unmodifiableList(entry.getValue()));
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    private static boolean runsTopToBottom(Class<? extends Annotation> cls) {
        return cls.equals(Before.class) || cls.equals(BeforeClass.class);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        if (this.clazz != ((TestClass) obj).clazz) {
            z = false;
        }
        return z;
    }

    public <T> List<T> getAnnotatedFieldValues(Object obj, Class<? extends Annotation> cls, Class<T> cls2) {
        ArrayList arrayList = new ArrayList();
        for (FrameworkField frameworkField : getAnnotatedFields(cls)) {
            try {
                Object obj2 = frameworkField.get(obj);
                if (cls2.isInstance(obj2)) {
                    arrayList.add(cls2.cast(obj2));
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("How did getFields return a field we couldn't access?", e);
            }
        }
        return arrayList;
    }

    public List<FrameworkField> getAnnotatedFields() {
        return collectValues(this.fieldsForAnnotations);
    }

    public List<FrameworkField> getAnnotatedFields(Class<? extends Annotation> cls) {
        return Collections.unmodifiableList(getAnnotatedMembers(this.fieldsForAnnotations, cls, false));
    }

    public <T> List<T> getAnnotatedMethodValues(Object obj, Class<? extends Annotation> cls, Class<T> cls2) {
        ArrayList arrayList = new ArrayList();
        for (FrameworkMethod frameworkMethod : getAnnotatedMethods(cls)) {
            try {
                if (cls2.isAssignableFrom(frameworkMethod.getReturnType())) {
                    arrayList.add(cls2.cast(frameworkMethod.invokeExplosively(obj, new Object[0])));
                }
            } catch (Throwable th) {
                throw new RuntimeException("Exception in " + frameworkMethod.getName(), th);
            }
        }
        return arrayList;
    }

    public List<FrameworkMethod> getAnnotatedMethods() {
        List<FrameworkMethod> collectValues = collectValues(this.methodsForAnnotations);
        Collections.sort(collectValues, METHOD_COMPARATOR);
        return collectValues;
    }

    public List<FrameworkMethod> getAnnotatedMethods(Class<? extends Annotation> cls) {
        return Collections.unmodifiableList(getAnnotatedMembers(this.methodsForAnnotations, cls, false));
    }

    @Override // org.junit.runners.model.Annotatable
    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        if (this.clazz == null) {
            return null;
        }
        return (T) this.clazz.getAnnotation(cls);
    }

    @Override // org.junit.runners.model.Annotatable
    public Annotation[] getAnnotations() {
        return this.clazz == null ? new Annotation[0] : this.clazz.getAnnotations();
    }

    public Class<?> getJavaClass() {
        return this.clazz;
    }

    public String getName() {
        return this.clazz == null ? "null" : this.clazz.getName();
    }

    public Constructor<?> getOnlyConstructor() {
        Constructor<?>[] constructors = this.clazz.getConstructors();
        Assert.assertEquals(1L, constructors.length);
        return constructors[0];
    }

    public int hashCode() {
        return this.clazz == null ? 0 : this.clazz.hashCode();
    }

    public boolean isANonStaticInnerClass() {
        return this.clazz.isMemberClass() && !Modifier.isStatic(this.clazz.getModifiers());
    }

    public boolean isPublic() {
        return Modifier.isPublic(this.clazz.getModifiers());
    }

    protected void scanAnnotatedMembers(Map<Class<? extends Annotation>, List<FrameworkMethod>> map, Map<Class<? extends Annotation>, List<FrameworkField>> map2) {
        for (Class<?> cls : getSuperClasses(this.clazz)) {
            for (Method method : MethodSorter.getDeclaredMethods(cls)) {
                addToAnnotationLists(new FrameworkMethod(method), map);
            }
            for (Field field : getSortedDeclaredFields(cls)) {
                addToAnnotationLists(new FrameworkField(field), map2);
            }
        }
    }
}
