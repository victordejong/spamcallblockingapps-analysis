package net.pubnative.lite.sdk.utils.reflection;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/reflection/ReflectionUtils.class */
public class ReflectionUtils {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/reflection/ReflectionUtils$MethodBuilder.class */
    public static class MethodBuilder {
        private Class<?> mClass;
        private final Object mInstance;
        private boolean mIsAccessible;
        private boolean mIsStatic;
        private final String mMethodName;
        private List<Class<?>> mParameterClasses = new ArrayList();
        private List<Object> mParameters = new ArrayList();

        public MethodBuilder(Object obj, String str) {
            this.mInstance = obj;
            this.mMethodName = str;
            this.mClass = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            this.mParameterClasses.add(cls);
            this.mParameters.add(t);
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = ReflectionUtils.getDeclaredMethodWithTraversal(this.mClass, this.mMethodName, (Class[]) this.mParameterClasses.toArray(new Class[this.mParameterClasses.size()]));
            if (this.mIsAccessible) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.mParameters.toArray();
            return this.mIsStatic ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.mInstance, array);
        }

        public MethodBuilder setStatic(Class<?> cls) {
            this.mIsStatic = true;
            this.mClass = cls;
            return this;
        }

        public MethodBuilder setStatic(String str) throws ClassNotFoundException {
            this.mIsStatic = true;
            this.mClass = Class.forName(str);
            return this;
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }
}
