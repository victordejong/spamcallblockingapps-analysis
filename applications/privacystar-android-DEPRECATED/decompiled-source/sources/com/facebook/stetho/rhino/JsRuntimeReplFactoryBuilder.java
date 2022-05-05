package com.facebook.stetho.rhino;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import com.facebook.stetho.common.LogUtil;
import com.facebook.stetho.inspector.console.CLog;
import com.facebook.stetho.inspector.console.RuntimeRepl;
import com.facebook.stetho.inspector.console.RuntimeReplFactory;
import com.facebook.stetho.inspector.protocol.module.Console;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ImporterTopLevel;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder.class */
public class JsRuntimeReplFactoryBuilder {
    private static final String SOURCE_NAME = "chrome";
    private final Context mContext;
    private final Set<Class<?>> mClasses = new HashSet();
    private final Set<String> mPackages = new HashSet();
    private final Map<String, Object> mVariables = new HashMap();
    private final Map<String, Function> mFunctions = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException.class */
    public static class StethoJsException extends Exception {
        StethoJsException(Throwable th, String str, Object... objArr) {
            super(objArr.length != 0 ? String.format(str, objArr) : str, th);
        }
    }

    public JsRuntimeReplFactoryBuilder(@NonNull Context context) {
        this.mContext = context;
        this.mPackages.add(context.getPackageName());
        this.mVariables.put("$_", org.mozilla.javascript.Context.getUndefinedValue());
    }

    public static RuntimeReplFactory defaultFactory(@NonNull Context context) {
        return new JsRuntimeReplFactoryBuilder(context).build();
    }

    private void importClasses(@NonNull org.mozilla.javascript.Context context, @NonNull ScriptableObject scriptableObject) throws StethoJsException {
        for (Class<?> cls : this.mClasses) {
            String name = cls.getName();
            try {
                context.evaluateString(scriptableObject, String.format("importClass(%s)", name), SOURCE_NAME, 1, null);
            } catch (Exception e) {
                try {
                    context.evaluateString(scriptableObject, String.format("importClass(Packages.%s)", name), SOURCE_NAME, 1, null);
                } catch (Exception e2) {
                    throw new StethoJsException(e2, "Failed to import class: %s", name);
                }
            }
        }
    }

    private void importConsole(@NonNull ScriptableObject scriptableObject) throws StethoJsException {
        try {
            ScriptableObject.defineClass(scriptableObject, JsConsole.class);
            scriptableObject.defineProperty("console", new JsConsole(scriptableObject), 2);
        } catch (Exception e) {
            throw new StethoJsException(e, "Failed to setup javascript console", new Object[0]);
        }
    }

    private void importFunctions(@NonNull ScriptableObject scriptableObject) throws StethoJsException {
        for (Map.Entry<String, Function> entry : this.mFunctions.entrySet()) {
            String key = entry.getKey();
            try {
                ScriptableObject.putProperty(scriptableObject, key, entry.getValue());
            } catch (Exception e) {
                throw new StethoJsException(e, "Failed to setup function: %s", key);
            }
        }
    }

    private void importPackages(@NonNull org.mozilla.javascript.Context context, @NonNull ScriptableObject scriptableObject) throws StethoJsException {
        for (String str : this.mPackages) {
            try {
                context.evaluateString(scriptableObject, String.format("importPackage(%s)", str), SOURCE_NAME, 1, null);
            } catch (Exception e) {
                try {
                    context.evaluateString(scriptableObject, String.format("importPackage(Packages.%s)", str), SOURCE_NAME, 1, null);
                } catch (Exception e2) {
                    throw new StethoJsException(e, "Failed to import package: %s", str);
                }
            }
        }
    }

    private void importVariables(@NonNull ScriptableObject scriptableObject) throws StethoJsException {
        for (Map.Entry<String, Object> entry : this.mVariables.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            Object obj = value;
            try {
                if (!(value instanceof Scriptable)) {
                    obj = value instanceof Undefined ? value : org.mozilla.javascript.Context.javaToJS(value, scriptableObject);
                }
                ScriptableObject.putProperty(scriptableObject, key, obj);
            } catch (Exception e) {
                throw new StethoJsException(e, "Failed to setup variable: %s", key);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public ScriptableObject initJsScope() {
        try {
            ScriptableObject initJsScope = initJsScope(JsRuntimeRepl.enterJsContext());
            org.mozilla.javascript.Context.exit();
            return initJsScope;
        } catch (Throwable th) {
            org.mozilla.javascript.Context.exit();
            throw th;
        }
    }

    @NonNull
    private ScriptableObject initJsScope(@NonNull org.mozilla.javascript.Context context) {
        ScriptableObject initStandardObjects = context.initStandardObjects(new ImporterTopLevel(context), false);
        ScriptableObject.putProperty(initStandardObjects, "context", org.mozilla.javascript.Context.javaToJS(this.mContext, initStandardObjects));
        try {
            importClasses(context, initStandardObjects);
            importPackages(context, initStandardObjects);
            importConsole(initStandardObjects);
            importVariables(initStandardObjects);
            importFunctions(initStandardObjects);
        } catch (StethoJsException e) {
            String format = String.format("%s\n%s", e.getMessage(), Log.getStackTraceString(e));
            LogUtil.m371e(e, format);
            CLog.writeToConsole(Console.MessageLevel.ERROR, Console.MessageSource.JAVASCRIPT, format);
        }
        return initStandardObjects;
    }

    @NonNull
    public JsRuntimeReplFactoryBuilder addFunction(@NonNull String str, @NonNull Function function) {
        this.mFunctions.put(str, function);
        return this;
    }

    public JsRuntimeReplFactoryBuilder addVariable(@NonNull String str, Object obj) {
        this.mVariables.put(str, obj);
        return this;
    }

    public RuntimeReplFactory build() {
        return new RuntimeReplFactory() { // from class: com.facebook.stetho.rhino.JsRuntimeReplFactoryBuilder.1
            @Override // com.facebook.stetho.inspector.console.RuntimeReplFactory
            public RuntimeRepl newInstance() {
                return new JsRuntimeRepl(JsRuntimeReplFactoryBuilder.this.initJsScope());
            }
        };
    }

    @NonNull
    public JsRuntimeReplFactoryBuilder importClass(@NonNull Class<?> cls) {
        this.mClasses.add(cls);
        return this;
    }

    @NonNull
    public JsRuntimeReplFactoryBuilder importPackage(@NonNull String str) {
        this.mPackages.add(str);
        return this;
    }
}
