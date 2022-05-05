package org.mozilla.javascript;

import org.mozilla.javascript.debug.DebuggableScript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeFunction.class */
public abstract class NativeFunction extends BaseFunction {
    static final long serialVersionUID = 8713897114082216401L;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.mozilla.javascript.BaseFunction
    public final String decompile(int i, int i2) {
        String encodedSource = getEncodedSource();
        if (encodedSource == null) {
            return super.decompile(i, i2);
        }
        UintMap uintMap = new UintMap(1);
        uintMap.put(1, i);
        return Decompiler.decompile(encodedSource, i2, uintMap);
    }

    @Override // org.mozilla.javascript.BaseFunction
    public int getArity() {
        return getParamCount();
    }

    public DebuggableScript getDebuggableView() {
        return null;
    }

    public String getEncodedSource() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getLanguageVersion();

    @Override // org.mozilla.javascript.BaseFunction
    public int getLength() {
        NativeCall findFunctionActivation;
        int paramCount = getParamCount();
        if (getLanguageVersion() == 120 && (findFunctionActivation = ScriptRuntime.findFunctionActivation(Context.getContext(), this)) != null) {
            return findFunctionActivation.originalArgs.length;
        }
        return paramCount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getParamAndVarCount();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getParamCount();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getParamOrVarConst(int i) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String getParamOrVarName(int i);

    public final void initScriptFunction(Context context, Scriptable scriptable) {
        ScriptRuntime.setFunctionProtoAndParent(this, scriptable);
    }

    @Deprecated
    public String jsGet_name() {
        return getFunctionName();
    }

    public Object resumeGenerator(Context context, Scriptable scriptable, int i, Object obj, Object obj2) {
        throw new EvaluatorException("resumeGenerator() not implemented");
    }
}
