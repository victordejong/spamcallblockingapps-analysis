package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/SecurityController.class */
public abstract class SecurityController {
    private static SecurityController global;

    public static GeneratedClassLoader createLoader(ClassLoader classLoader, Object obj) {
        Context context = Context.getContext();
        ClassLoader classLoader2 = classLoader;
        if (classLoader == null) {
            classLoader2 = context.getApplicationClassLoader();
        }
        SecurityController securityController = context.getSecurityController();
        return securityController == null ? context.createClassLoader(classLoader2) : securityController.createClassLoader(classLoader2, securityController.getDynamicSecurityDomain(obj));
    }

    public static Class<?> getStaticSecurityDomainClass() {
        SecurityController securityController = Context.getContext().getSecurityController();
        return securityController == null ? null : securityController.getStaticSecurityDomainClassInternal();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SecurityController global() {
        return global;
    }

    public static boolean hasGlobal() {
        return global != null;
    }

    public static void initGlobal(SecurityController securityController) {
        if (securityController == null) {
            throw new IllegalArgumentException();
        } else if (global != null) {
            throw new SecurityException("Cannot overwrite already installed global SecurityController");
        } else {
            global = securityController;
        }
    }

    public Object callWithDomain(Object obj, Context context, final Callable callable, Scriptable scriptable, final Scriptable scriptable2, final Object[] objArr) {
        return execWithDomain(context, scriptable, new Script() { // from class: org.mozilla.javascript.SecurityController.1
            @Override // org.mozilla.javascript.Script
            public Object exec(Context context2, Scriptable scriptable3) {
                return callable.call(context2, scriptable3, scriptable2, objArr);
            }
        }, obj);
    }

    public abstract GeneratedClassLoader createClassLoader(ClassLoader classLoader, Object obj);

    @Deprecated
    public Object execWithDomain(Context context, Scriptable scriptable, Script script, Object obj) {
        throw new IllegalStateException("callWithDomain should be overridden");
    }

    public abstract Object getDynamicSecurityDomain(Object obj);

    public Class<?> getStaticSecurityDomainClassInternal() {
        return null;
    }
}
