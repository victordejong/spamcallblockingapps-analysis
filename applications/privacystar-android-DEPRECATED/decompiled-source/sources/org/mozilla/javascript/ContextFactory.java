package org.mozilla.javascript;

import java.security.AccessController;
import java.security.PrivilegedAction;
import org.mozilla.javascript.xml.XMLLib;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ContextFactory.class */
public class ContextFactory {
    private static ContextFactory global = new ContextFactory();
    private static volatile boolean hasCustomGlobal;
    private ClassLoader applicationClassLoader;
    private boolean disabledListening;
    private volatile Object listeners;
    private final Object listenersLock = new Object();
    private volatile boolean sealed;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ContextFactory$GlobalSetter.class */
    public interface GlobalSetter {
        ContextFactory getContextFactoryGlobal();

        void setContextFactoryGlobal(ContextFactory contextFactory);
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ContextFactory$Listener.class */
    public interface Listener {
        void contextCreated(Context context);

        void contextReleased(Context context);
    }

    public static ContextFactory getGlobal() {
        return global;
    }

    public static GlobalSetter getGlobalSetter() {
        GlobalSetter globalSetter;
        synchronized (ContextFactory.class) {
            try {
                if (hasCustomGlobal) {
                    throw new IllegalStateException();
                }
                hasCustomGlobal = true;
                globalSetter = new GlobalSetter() { // from class: org.mozilla.javascript.ContextFactory.1GlobalSetterImpl
                    @Override // org.mozilla.javascript.ContextFactory.GlobalSetter
                    public ContextFactory getContextFactoryGlobal() {
                        return ContextFactory.global;
                    }

                    @Override // org.mozilla.javascript.ContextFactory.GlobalSetter
                    public void setContextFactoryGlobal(ContextFactory contextFactory) {
                        ContextFactory contextFactory2 = contextFactory;
                        if (contextFactory == null) {
                            contextFactory2 = new ContextFactory();
                        }
                        ContextFactory unused = ContextFactory.global = contextFactory2;
                    }
                };
            } catch (Throwable th) {
                throw th;
            }
        }
        return globalSetter;
    }

    public static boolean hasExplicitGlobal() {
        return hasCustomGlobal;
    }

    public static void initGlobal(ContextFactory contextFactory) {
        synchronized (ContextFactory.class) {
            try {
                if (contextFactory == null) {
                    throw new IllegalArgumentException();
                } else if (hasCustomGlobal) {
                    throw new IllegalStateException();
                } else {
                    hasCustomGlobal = true;
                    global = contextFactory;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean isDom3Present() {
        Class<?> classOrNull = Kit.classOrNull("org.w3c.dom.Node");
        if (classOrNull == null) {
            return false;
        }
        try {
            classOrNull.getMethod("getUserData", String.class);
            return true;
        } catch (NoSuchMethodException e) {
            return false;
        }
    }

    public final void addListener(Listener listener) {
        checkNotSealed();
        synchronized (this.listenersLock) {
            if (this.disabledListening) {
                throw new IllegalStateException();
            }
            this.listeners = Kit.addListener(this.listeners, listener);
        }
    }

    public final Object call(ContextAction contextAction) {
        return Context.call(this, contextAction);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkNotSealed() {
        if (this.sealed) {
            throw new IllegalStateException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GeneratedClassLoader createClassLoader(final ClassLoader classLoader) {
        return (GeneratedClassLoader) AccessController.doPrivileged(new PrivilegedAction<DefiningClassLoader>() { // from class: org.mozilla.javascript.ContextFactory.1
            @Override // java.security.PrivilegedAction
            public DefiningClassLoader run() {
                return new DefiningClassLoader(classLoader);
            }
        });
    }

    final void disableContextListening() {
        checkNotSealed();
        synchronized (this.listenersLock) {
            this.disabledListening = true;
            this.listeners = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object doTopCall(Callable callable, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object call = callable.call(context, scriptable, scriptable2, objArr);
        String str = call;
        if (call instanceof ConsString) {
            str = call.toString();
        }
        return str;
    }

    @Deprecated
    public final Context enter() {
        return enterContext(null);
    }

    public Context enterContext() {
        return enterContext(null);
    }

    public final Context enterContext(Context context) {
        return Context.enter(context, this);
    }

    @Deprecated
    public final void exit() {
        Context.exit();
    }

    public final ClassLoader getApplicationClassLoader() {
        return this.applicationClassLoader;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public XMLLib.Factory getE4xImplementationFactory() {
        if (isDom3Present()) {
            return XMLLib.Factory.create("org.mozilla.javascript.xmlimpl.XMLLibImpl");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasFeature(Context context, int i) {
        boolean z = true;
        switch (i) {
            case 1:
                int languageVersion = context.getLanguageVersion();
                boolean z2 = true;
                if (languageVersion != 100) {
                    z2 = true;
                    if (languageVersion != 110) {
                        z2 = languageVersion == 120;
                    }
                }
                return z2;
            case 2:
                return false;
            case 3:
                return true;
            case 4:
                if (context.getLanguageVersion() != 120) {
                    z = false;
                }
                return z;
            case 5:
                return true;
            case 6:
                int languageVersion2 = context.getLanguageVersion();
                boolean z3 = true;
                if (languageVersion2 != 0) {
                    z3 = languageVersion2 >= 160;
                }
                return z3;
            case 7:
                return false;
            case 8:
                return false;
            case 9:
                return false;
            case 10:
                return false;
            case 11:
                return false;
            case 12:
                return false;
            case 13:
                return false;
            case 14:
                return true;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
    }

    public final void initApplicationClassLoader(ClassLoader classLoader) {
        if (classLoader == null) {
            throw new IllegalArgumentException("loader is null");
        } else if (!Kit.testIfCanLoadRhinoClasses(classLoader)) {
            throw new IllegalArgumentException("Loader can not resolve Rhino classes");
        } else if (this.applicationClassLoader != null) {
            throw new IllegalStateException("applicationClassLoader can only be set once");
        } else {
            checkNotSealed();
            this.applicationClassLoader = classLoader;
        }
    }

    public final boolean isSealed() {
        return this.sealed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context makeContext() {
        return new Context(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void observeInstructionCount(Context context, int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onContextCreated(Context context) {
        Object obj = this.listeners;
        int i = 0;
        while (true) {
            Listener listener = (Listener) Kit.getListener(obj, i);
            if (listener != null) {
                listener.contextCreated(context);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onContextReleased(Context context) {
        Object obj = this.listeners;
        int i = 0;
        while (true) {
            Listener listener = (Listener) Kit.getListener(obj, i);
            if (listener != null) {
                listener.contextReleased(context);
                i++;
            } else {
                return;
            }
        }
    }

    public final void removeListener(Listener listener) {
        checkNotSealed();
        synchronized (this.listenersLock) {
            if (this.disabledListening) {
                throw new IllegalStateException();
            }
            this.listeners = Kit.removeListener(this.listeners, listener);
        }
    }

    public final void seal() {
        checkNotSealed();
        this.sealed = true;
    }
}
