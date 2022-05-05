package p660rx.exceptions;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import p459j.p460a.p582w0.p590x4.C14247d;
import p660rx.plugins.RxJavaPlugins;
/* renamed from: rx.exceptions.OnErrorThrowable */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/OnErrorThrowable.class */
public final class OnErrorThrowable extends RuntimeException {

    /* renamed from: rx.exceptions.OnErrorThrowable$OnNextValue */
    /* loaded from: classes3-dex2jar.jar:rx/exceptions/OnErrorThrowable$OnNextValue.class */
    public static class OnNextValue extends RuntimeException {
        public final Object value;

        /* renamed from: rx.exceptions.OnErrorThrowable$OnNextValue$Primitives */
        /* loaded from: classes3-dex2jar.jar:rx/exceptions/OnErrorThrowable$OnNextValue$Primitives.class */
        public static final class Primitives {
            public static final Set<Class<?>> INSTANCE = create();

            public static Set<Class<?>> create() {
                HashSet hashSet = new HashSet();
                hashSet.add(Boolean.class);
                hashSet.add(Character.class);
                hashSet.add(Byte.class);
                hashSet.add(Short.class);
                hashSet.add(Integer.class);
                hashSet.add(Long.class);
                hashSet.add(Float.class);
                hashSet.add(Double.class);
                return hashSet;
            }
        }

        public OnNextValue(Object obj) {
            super("OnError while emitting onNext value: " + renderValue(obj));
            if (!(obj instanceof Serializable)) {
                try {
                    obj = String.valueOf(obj);
                } catch (Throwable th) {
                    obj = th.getMessage();
                }
            }
            this.value = obj;
        }

        public static String renderValue(Object obj) {
            if (obj == null) {
                return C14247d.f31851f;
            }
            if (Primitives.INSTANCE.contains(obj.getClass())) {
                return obj.toString();
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            String handleOnNextValueRendering = RxJavaPlugins.getInstance().getErrorHandler().handleOnNextValueRendering(obj);
            if (handleOnNextValueRendering != null) {
                return handleOnNextValueRendering;
            }
            return obj.getClass().getName() + ".class";
        }

        public Object getValue() {
            return this.value;
        }
    }

    public static Throwable addValueAsLastCause(Throwable th, Object obj) {
        Throwable th2 = th;
        if (th == null) {
            th2 = new NullPointerException();
        }
        Throwable finalCause = Exceptions.getFinalCause(th2);
        if ((finalCause instanceof OnNextValue) && ((OnNextValue) finalCause).getValue() == obj) {
            return th2;
        }
        Exceptions.addCause(th2, new OnNextValue(obj));
        return th2;
    }
}
