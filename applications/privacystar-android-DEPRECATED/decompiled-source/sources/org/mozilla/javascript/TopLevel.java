package org.mozilla.javascript;

import java.util.EnumMap;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/TopLevel.class */
public class TopLevel extends IdScriptableObject {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final long serialVersionUID = -4648046356662472260L;
    private EnumMap<Builtins, BaseFunction> ctors;
    private EnumMap<NativeErrors, BaseFunction> errors;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/TopLevel$Builtins.class */
    public enum Builtins {
        Object,
        Array,
        Function,
        String,
        Number,
        Boolean,
        RegExp,
        Error
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/TopLevel$NativeErrors.class */
    public enum NativeErrors {
        Error,
        EvalError,
        RangeError,
        ReferenceError,
        SyntaxError,
        TypeError,
        URIError,
        InternalError,
        JavaException
    }

    public static Function getBuiltinCtor(Context context, Scriptable scriptable, Builtins builtins) {
        BaseFunction builtinCtor;
        return (!(scriptable instanceof TopLevel) || (builtinCtor = ((TopLevel) scriptable).getBuiltinCtor(builtins)) == null) ? ScriptRuntime.getExistingCtor(context, scriptable, builtins.name()) : builtinCtor;
    }

    public static Scriptable getBuiltinPrototype(Scriptable scriptable, Builtins builtins) {
        Scriptable builtinPrototype;
        return (!(scriptable instanceof TopLevel) || (builtinPrototype = ((TopLevel) scriptable).getBuiltinPrototype(builtins)) == null) ? ScriptableObject.getClassPrototype(scriptable, builtins.name()) : builtinPrototype;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Function getNativeErrorCtor(Context context, Scriptable scriptable, NativeErrors nativeErrors) {
        BaseFunction nativeErrorCtor;
        return (!(scriptable instanceof TopLevel) || (nativeErrorCtor = ((TopLevel) scriptable).getNativeErrorCtor(nativeErrors)) == null) ? ScriptRuntime.getExistingCtor(context, scriptable, nativeErrors.name()) : nativeErrorCtor;
    }

    public void cacheBuiltins() {
        Builtins[] values;
        NativeErrors[] values2;
        this.ctors = new EnumMap<>(Builtins.class);
        for (Builtins builtins : Builtins.values()) {
            Object property = ScriptableObject.getProperty(this, builtins.name());
            if (property instanceof BaseFunction) {
                this.ctors.put((EnumMap<Builtins, BaseFunction>) builtins, (Builtins) ((BaseFunction) property));
            }
        }
        this.errors = new EnumMap<>(NativeErrors.class);
        for (NativeErrors nativeErrors : NativeErrors.values()) {
            Object property2 = ScriptableObject.getProperty(this, nativeErrors.name());
            if (property2 instanceof BaseFunction) {
                this.errors.put((EnumMap<NativeErrors, BaseFunction>) nativeErrors, (NativeErrors) ((BaseFunction) property2));
            }
        }
    }

    public BaseFunction getBuiltinCtor(Builtins builtins) {
        return this.ctors != null ? this.ctors.get(builtins) : null;
    }

    public Scriptable getBuiltinPrototype(Builtins builtins) {
        BaseFunction builtinCtor = getBuiltinCtor(builtins);
        Scriptable scriptable = null;
        Object prototypeProperty = builtinCtor != null ? builtinCtor.getPrototypeProperty() : null;
        if (prototypeProperty instanceof Scriptable) {
            scriptable = (Scriptable) prototypeProperty;
        }
        return scriptable;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "global";
    }

    BaseFunction getNativeErrorCtor(NativeErrors nativeErrors) {
        return this.errors != null ? this.errors.get(nativeErrors) : null;
    }
}
