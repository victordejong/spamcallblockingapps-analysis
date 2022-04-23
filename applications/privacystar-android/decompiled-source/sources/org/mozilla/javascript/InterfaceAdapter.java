package org.mozilla.javascript;

import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/InterfaceAdapter.class */
public class InterfaceAdapter {
    private final Object proxyHelper;

    private InterfaceAdapter(ContextFactory contextFactory, Class<?> cls) {
        this.proxyHelper = VMBridge.instance.getInterfaceProxyHelper(contextFactory, new Class[]{cls});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object create(Context context, Class<?> cls, ScriptableObject scriptableObject) {
        InterfaceAdapter interfaceAdapter;
        if (!cls.isInterface()) {
            throw new IllegalArgumentException();
        }
        Scriptable topCallScope = ScriptRuntime.getTopCallScope(context);
        ClassCache classCache = ClassCache.get(topCallScope);
        InterfaceAdapter interfaceAdapter2 = (InterfaceAdapter) classCache.getInterfaceAdapter(cls);
        ContextFactory factory = context.getFactory();
        if (interfaceAdapter2 == null) {
            Method[] methods = cls.getMethods();
            if (scriptableObject instanceof Callable) {
                int length = methods.length;
                if (length == 0) {
                    throw Context.reportRuntimeError1("msg.no.empty.interface.conversion", cls.getName());
                }
                if (length > 1) {
                    String name = methods[0].getName();
                    for (int i = 1; i < length; i++) {
                        if (!name.equals(methods[i].getName())) {
                            throw Context.reportRuntimeError1("msg.no.function.interface.conversion", cls.getName());
                        }
                    }
                }
            }
            interfaceAdapter = new InterfaceAdapter(factory, cls);
            classCache.cacheInterfaceAdapter(cls, interfaceAdapter);
        } else {
            interfaceAdapter = interfaceAdapter2;
        }
        return VMBridge.instance.newInterfaceProxy(interfaceAdapter.proxyHelper, factory, interfaceAdapter, scriptableObject, topCallScope);
    }

    public Object invoke(ContextFactory contextFactory, final Object obj, final Scriptable scriptable, final Object obj2, final Method method, final Object[] objArr) {
        return contextFactory.call(new ContextAction() { // from class: org.mozilla.javascript.InterfaceAdapter.1
            @Override // org.mozilla.javascript.ContextAction
            public Object run(Context context) {
                return InterfaceAdapter.this.invokeImpl(context, obj, scriptable, obj2, method, objArr);
            }
        });
    }

    Object invokeImpl(Context context, Object obj, Scriptable scriptable, Object obj2, Method method, Object[] objArr) {
        Callable callable;
        Object[] objArr2;
        Object obj3 = null;
        if (obj instanceof Callable) {
            callable = (Callable) obj;
        } else {
            String name = method.getName();
            Object property = ScriptableObject.getProperty((Scriptable) obj, name);
            if (property == ScriptableObject.NOT_FOUND) {
                Context.reportWarning(ScriptRuntime.getMessage1("msg.undefined.function.interface", name));
                Class<?> returnType = method.getReturnType();
                if (returnType == Void.TYPE) {
                    return null;
                }
                return Context.jsToJava(null, returnType);
            } else if (!(property instanceof Callable)) {
                throw Context.reportRuntimeError1("msg.not.function.interface", name);
            } else {
                callable = (Callable) property;
            }
        }
        WrapFactory wrapFactory = context.getWrapFactory();
        if (objArr != null) {
            int i = 0;
            int length = objArr.length;
            while (true) {
                objArr2 = objArr;
                if (i == length) {
                    break;
                }
                Object obj4 = objArr[i];
                if (!(obj4 instanceof String) && !(obj4 instanceof Number) && !(obj4 instanceof Boolean)) {
                    objArr[i] = wrapFactory.wrap(context, scriptable, obj4, null);
                }
                i++;
            }
        } else {
            objArr2 = ScriptRuntime.emptyArgs;
        }
        Object call = callable.call(context, scriptable, wrapFactory.wrapAsJavaObject(context, scriptable, obj2, null), objArr2);
        Class<?> returnType2 = method.getReturnType();
        if (returnType2 != Void.TYPE) {
            obj3 = Context.jsToJava(call, returnType2);
        }
        return obj3;
    }
}
