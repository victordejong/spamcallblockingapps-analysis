package org.mozilla.javascript;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/JavaMembers.class */
public class JavaMembers {

    /* renamed from: cl */
    private Class<?> f774cl;
    NativeJavaMethod ctors;
    private Map<String, FieldAndMethods> fieldAndMethods;
    private Map<String, Object> members;
    private Map<String, FieldAndMethods> staticFieldAndMethods;
    private Map<String, Object> staticMembers;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/JavaMembers$MethodSignature.class */
    public static final class MethodSignature {
        private final Class<?>[] args;
        private final String name;

        private MethodSignature(String str, Class<?>[] clsArr) {
            this.name = str;
            this.args = clsArr;
        }

        MethodSignature(Method method) {
            this(method.getName(), method.getParameterTypes());
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof MethodSignature)) {
                return false;
            }
            MethodSignature methodSignature = (MethodSignature) obj;
            boolean z = false;
            if (methodSignature.name.equals(this.name)) {
                z = false;
                if (Arrays.equals(this.args, methodSignature.args)) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return this.name.hashCode() ^ this.args.length;
        }
    }

    JavaMembers(Scriptable scriptable, Class<?> cls) {
        this(scriptable, cls, false);
    }

    JavaMembers(Scriptable scriptable, Class<?> cls, boolean z) {
        try {
            Context enterContext = ContextFactory.getGlobal().enterContext();
            ClassShutter classShutter = enterContext.getClassShutter();
            if (classShutter == null || classShutter.visibleToScripts(cls.getName())) {
                this.members = new HashMap();
                this.staticMembers = new HashMap();
                this.f774cl = cls;
                reflect(scriptable, z, enterContext.hasFeature(13));
                return;
            }
            throw Context.reportRuntimeError1("msg.access.prohibited", cls.getName());
        } finally {
            Context.exit();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r8 != false) goto L_0x0018;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.reflect.Method[]] */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void discoverAccessibleMethods(java.lang.Class<?> r5, java.util.Map<org.mozilla.javascript.JavaMembers.MethodSignature, java.lang.reflect.Method> r6, boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.JavaMembers.discoverAccessibleMethods(java.lang.Class, java.util.Map, boolean, boolean):void");
    }

    private static Method[] discoverAccessibleMethods(Class<?> cls, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        discoverAccessibleMethods(cls, hashMap, z, z2);
        return (Method[]) hashMap.values().toArray(new Method[hashMap.size()]);
    }

    private static MemberBox extractGetMethod(MemberBox[] memberBoxArr, boolean z) {
        for (MemberBox memberBox : memberBoxArr) {
            if (memberBox.argTypes.length == 0 && (!z || memberBox.isStatic())) {
                if (memberBox.method().getReturnType() != Void.TYPE) {
                    return memberBox;
                } else {
                    return null;
                }
            }
        }
        return null;
    }

    private static MemberBox extractSetMethod(Class<?> cls, MemberBox[] memberBoxArr, boolean z) {
        for (int i = 1; i <= 2; i++) {
            for (MemberBox memberBox : memberBoxArr) {
                if (!z || memberBox.isStatic()) {
                    Class<?>[] clsArr = memberBox.argTypes;
                    if (clsArr.length != 1) {
                        continue;
                    } else if (i != 1) {
                        if (i != 2) {
                            Kit.codeBug();
                        }
                        if (clsArr[0].isAssignableFrom(cls)) {
                            return memberBox;
                        }
                    } else if (clsArr[0] == cls) {
                        return memberBox;
                    }
                }
            }
        }
        return null;
    }

    private static MemberBox extractSetMethod(MemberBox[] memberBoxArr, boolean z) {
        for (MemberBox memberBox : memberBoxArr) {
            if ((!z || memberBox.isStatic()) && memberBox.method().getReturnType() == Void.TYPE && memberBox.argTypes.length == 1) {
                return memberBox;
            }
        }
        return null;
    }

    private MemberBox findExplicitFunction(String str, boolean z) {
        MemberBox[] memberBoxArr;
        int indexOf = str.indexOf(40);
        if (indexOf < 0) {
            return null;
        }
        Map<String, Object> map = z ? this.staticMembers : this.members;
        if (z && indexOf == 0) {
            memberBoxArr = this.ctors.methods;
        } else {
            String substring = str.substring(0, indexOf);
            Object obj = map.get(substring);
            Object obj2 = obj;
            if (!z) {
                obj2 = obj;
                if (obj == null) {
                    obj2 = this.staticMembers.get(substring);
                }
            }
            memberBoxArr = obj2 instanceof NativeJavaMethod ? ((NativeJavaMethod) obj2).methods : null;
        }
        if (memberBoxArr == null) {
            return null;
        }
        for (MemberBox memberBox : memberBoxArr) {
            String liveConnectSignature = liveConnectSignature(memberBox.argTypes);
            if (liveConnectSignature.length() + indexOf == str.length() && str.regionMatches(indexOf, liveConnectSignature, 0, liveConnectSignature.length())) {
                return memberBox;
            }
        }
        return null;
    }

    private MemberBox findGetter(boolean z, Map<String, Object> map, String str, String str2) {
        String concat = str.concat(str2);
        if (!map.containsKey(concat)) {
            return null;
        }
        Object obj = map.get(concat);
        if (obj instanceof NativeJavaMethod) {
            return extractGetMethod(((NativeJavaMethod) obj).methods, z);
        }
        return null;
    }

    private Constructor<?>[] getAccessibleConstructors(boolean z) {
        if (z && this.f774cl != ScriptRuntime.ClassClass) {
            try {
                Constructor<?>[] declaredConstructors = this.f774cl.getDeclaredConstructors();
                AccessibleObject.setAccessible(declaredConstructors, true);
                return declaredConstructors;
            } catch (SecurityException e) {
                Context.reportWarning("Could not access constructor  of class " + this.f774cl.getName() + " due to lack of privileges.");
            }
        }
        return this.f774cl.getConstructors();
    }

    private Field[] getAccessibleFields(boolean z, boolean z2) {
        Field[] declaredFields;
        if (z2 || z) {
            try {
                ArrayList arrayList = new ArrayList();
                for (Class<?> cls = this.f774cl; cls != null; cls = cls.getSuperclass()) {
                    for (Field field : cls.getDeclaredFields()) {
                        int modifiers = field.getModifiers();
                        if (z2 || Modifier.isPublic(modifiers) || Modifier.isProtected(modifiers)) {
                            if (!field.isAccessible()) {
                                field.setAccessible(true);
                            }
                            arrayList.add(field);
                        }
                    }
                }
                return (Field[]) arrayList.toArray(new Field[arrayList.size()]);
            } catch (SecurityException e) {
            }
        }
        return this.f774cl.getFields();
    }

    private Object getExplicitFunction(Scriptable scriptable, String str, Object obj, boolean z) {
        Map<String, Object> map = z ? this.staticMembers : this.members;
        NativeJavaConstructor nativeJavaConstructor = null;
        MemberBox findExplicitFunction = findExplicitFunction(str, z);
        if (findExplicitFunction != null) {
            Scriptable functionPrototype = ScriptableObject.getFunctionPrototype(scriptable);
            if (findExplicitFunction.isCtor()) {
                NativeJavaConstructor nativeJavaConstructor2 = new NativeJavaConstructor(findExplicitFunction);
                nativeJavaConstructor2.setPrototype(functionPrototype);
                map.put(str, nativeJavaConstructor2);
                nativeJavaConstructor = nativeJavaConstructor2;
            } else {
                Object obj2 = map.get(findExplicitFunction.getName());
                nativeJavaConstructor = obj2;
                if (obj2 instanceof NativeJavaMethod) {
                    nativeJavaConstructor = obj2;
                    if (((NativeJavaMethod) obj2).methods.length > 1) {
                        NativeJavaMethod nativeJavaMethod = new NativeJavaMethod(findExplicitFunction, str);
                        nativeJavaMethod.setPrototype(functionPrototype);
                        map.put(str, nativeJavaMethod);
                        nativeJavaConstructor = nativeJavaMethod;
                    }
                }
            }
        }
        return nativeJavaConstructor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String javaSignature(Class<?> cls) {
        int i;
        Class<?> componentType;
        if (!cls.isArray()) {
            return cls.getName();
        }
        int i2 = 0;
        do {
            i = i2 + 1;
            componentType = cls.getComponentType();
            i2 = i;
            cls = componentType;
        } while (componentType.isArray());
        String name = componentType.getName();
        if (i == 1) {
            return name.concat("[]");
        }
        StringBuilder sb = new StringBuilder(name.length() + ("[]".length() * i));
        sb.append(name);
        while (i != 0) {
            i--;
            sb.append("[]");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String liveConnectSignature(Class<?>[] clsArr) {
        int length = clsArr.length;
        if (length == 0) {
            return "()";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        for (int i = 0; i != length; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(javaSignature(clsArr[i]));
        }
        sb.append(')');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JavaMembers lookupClass(Scriptable scriptable, Class<?> cls, Class<?> cls2, boolean z) {
        ClassCache classCache = ClassCache.get(scriptable);
        Map<Class<?>, JavaMembers> classCacheMap = classCache.getClassCacheMap();
        Class<?> cls3 = cls;
        while (true) {
            JavaMembers javaMembers = classCacheMap.get(cls3);
            if (javaMembers != null) {
                if (cls3 != cls) {
                    classCacheMap.put(cls, javaMembers);
                }
                return javaMembers;
            }
            try {
                JavaMembers javaMembers2 = new JavaMembers(classCache.getAssociatedScope(), cls3, z);
                if (classCache.isCachingEnabled()) {
                    classCacheMap.put(cls3, javaMembers2);
                    if (cls3 != cls) {
                        classCacheMap.put(cls, javaMembers2);
                    }
                }
                return javaMembers2;
            } catch (SecurityException e) {
                if (cls2 == null || !cls2.isInterface()) {
                    Class<? super Object> superclass = cls3.getSuperclass();
                    cls3 = superclass;
                    if (superclass == null) {
                        if (cls3.isInterface()) {
                            cls3 = ScriptRuntime.ObjectClass;
                        } else {
                            throw e;
                        }
                    }
                    cls2 = cls2;
                } else {
                    cls2 = null;
                    cls3 = cls2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0468  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void reflect(org.mozilla.javascript.Scriptable r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 1374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.JavaMembers.reflect(org.mozilla.javascript.Scriptable, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object get(Scriptable scriptable, String str, Object obj, boolean z) {
        Class<?> cls;
        Object obj2;
        Object obj3 = (z ? this.staticMembers : this.members).get(str);
        Object obj4 = obj3;
        if (!z) {
            obj4 = obj3;
            if (obj3 == null) {
                obj4 = this.staticMembers.get(str);
            }
        }
        Object obj5 = obj4;
        if (obj4 == null) {
            Object explicitFunction = getExplicitFunction(scriptable, str, obj, z);
            obj5 = explicitFunction;
            if (explicitFunction == null) {
                return Scriptable.NOT_FOUND;
            }
        }
        if (obj5 instanceof Scriptable) {
            return obj5;
        }
        Context context = Context.getContext();
        try {
            if (obj5 instanceof BeanProperty) {
                BeanProperty beanProperty = (BeanProperty) obj5;
                if (beanProperty.getter == null) {
                    return Scriptable.NOT_FOUND;
                }
                obj2 = beanProperty.getter.invoke(obj, Context.emptyArgs);
                cls = beanProperty.getter.method().getReturnType();
            } else {
                Field field = (Field) obj5;
                if (z) {
                    obj = null;
                }
                obj2 = field.get(obj);
                cls = field.getType();
            }
            return context.getWrapFactory().wrap(context, ScriptableObject.getTopLevelScope(scriptable), obj2, cls);
        } catch (Exception e) {
            throw Context.throwAsScriptRuntimeEx(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, FieldAndMethods> getFieldAndMethodsObjects(Scriptable scriptable, Object obj, boolean z) {
        Map<String, FieldAndMethods> map = z ? this.staticFieldAndMethods : this.fieldAndMethods;
        if (map == null) {
            return null;
        }
        HashMap hashMap = new HashMap(map.size());
        for (FieldAndMethods fieldAndMethods : map.values()) {
            FieldAndMethods fieldAndMethods2 = new FieldAndMethods(scriptable, fieldAndMethods.methods, fieldAndMethods.field);
            fieldAndMethods2.javaObject = obj;
            hashMap.put(fieldAndMethods.field.getName(), fieldAndMethods2);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] getIds(boolean z) {
        Map<String, Object> map = z ? this.staticMembers : this.members;
        return map.keySet().toArray(new Object[map.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean has(String str, boolean z) {
        Map<String, Object> map = z ? this.staticMembers : this.members;
        boolean z2 = true;
        if (map.get(str) != null) {
            return true;
        }
        if (findExplicitFunction(str, z) == null) {
            z2 = false;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(Scriptable scriptable, String str, Object obj, Object obj2, boolean z) {
        Map<String, Object> map = z ? this.staticMembers : this.members;
        Object obj3 = map.get(str);
        Object obj4 = obj3;
        if (!z) {
            obj4 = obj3;
            if (obj3 == null) {
                obj4 = this.staticMembers.get(str);
            }
        }
        if (obj4 == null) {
            throw reportMemberNotFound(str);
        }
        Object obj5 = obj4;
        if (obj4 instanceof FieldAndMethods) {
            obj5 = ((FieldAndMethods) map.get(str)).field;
        }
        if (obj5 instanceof BeanProperty) {
            BeanProperty beanProperty = (BeanProperty) obj5;
            if (beanProperty.setter == null) {
                throw reportMemberNotFound(str);
            } else if (beanProperty.setters == null || obj2 == null) {
                try {
                    beanProperty.setter.invoke(obj, new Object[]{Context.jsToJava(obj2, beanProperty.setter.argTypes[0])});
                } catch (Exception e) {
                    throw Context.throwAsScriptRuntimeEx(e);
                }
            } else {
                beanProperty.setters.call(Context.getContext(), ScriptableObject.getTopLevelScope(scriptable), scriptable, new Object[]{obj2});
            }
        } else if (!(obj5 instanceof Field)) {
            throw Context.reportRuntimeError1(obj5 == null ? "msg.java.internal.private" : "msg.java.method.assign", str);
        } else {
            Field field = (Field) obj5;
            try {
                field.set(obj, Context.jsToJava(obj2, field.getType()));
            } catch (IllegalAccessException e2) {
                if ((field.getModifiers() & 16) == 0) {
                    throw Context.throwAsScriptRuntimeEx(e2);
                }
            } catch (IllegalArgumentException e3) {
                throw Context.reportRuntimeError3("msg.java.internal.field.type", obj2.getClass().getName(), field, obj.getClass().getName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RuntimeException reportMemberNotFound(String str) {
        return Context.reportRuntimeError2("msg.java.member.not.found", this.f774cl.getName(), str);
    }
}
