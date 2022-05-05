package org.mozilla.javascript;

import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.debug.DebuggableScript;
import org.mozilla.javascript.debug.Debugger;
import org.mozilla.javascript.xml.XMLLib;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Context.class */
public class Context {
    public static final int FEATURE_DYNAMIC_SCOPE = 7;
    public static final int FEATURE_E4X = 6;
    public static final int FEATURE_ENHANCED_JAVA_ACCESS = 13;
    public static final int FEATURE_LOCATION_INFORMATION_IN_ERROR = 10;
    public static final int FEATURE_MEMBER_EXPR_AS_FUNCTION_NAME = 2;
    public static final int FEATURE_NON_ECMA_GET_YEAR = 1;
    public static final int FEATURE_PARENT_PROTO_PROPERTIES = 5;
    @Deprecated
    public static final int FEATURE_PARENT_PROTO_PROPRTIES = 5;
    public static final int FEATURE_RESERVED_KEYWORD_AS_IDENTIFIER = 3;
    public static final int FEATURE_STRICT_EVAL = 9;
    public static final int FEATURE_STRICT_MODE = 11;
    public static final int FEATURE_STRICT_VARS = 8;
    public static final int FEATURE_TO_STRING_AS_SOURCE = 4;
    public static final int FEATURE_V8_EXTENSIONS = 14;
    public static final int FEATURE_WARNING_AS_ERROR = 12;
    public static final int VERSION_1_0 = 100;
    public static final int VERSION_1_1 = 110;
    public static final int VERSION_1_2 = 120;
    public static final int VERSION_1_3 = 130;
    public static final int VERSION_1_4 = 140;
    public static final int VERSION_1_5 = 150;
    public static final int VERSION_1_6 = 160;
    public static final int VERSION_1_7 = 170;
    public static final int VERSION_1_8 = 180;
    public static final int VERSION_DEFAULT = 0;
    public static final int VERSION_UNKNOWN = -1;
    public static final String errorReporterProperty = "error reporter";
    private static String implementationVersion;
    public static final String languageVersionProperty = "language version";
    Set<String> activationNames;
    private ClassLoader applicationClassLoader;
    XMLLib cachedXMLLib;
    private ClassShutter classShutter;
    NativeCall currentActivationCall;
    Debugger debugger;
    private Object debuggerData;
    private int enterCount;
    private ErrorReporter errorReporter;
    private final ContextFactory factory;
    public boolean generateObserverCount;
    private boolean generatingDebug;
    private boolean generatingDebugChanged;
    private boolean generatingSource;
    private boolean hasClassShutter;
    int instructionCount;
    int instructionThreshold;
    Object interpreterSecurityDomain;
    boolean isContinuationsTopCall;
    ObjToIntMap iterating;
    Object lastInterpreterFrame;
    private Locale locale;
    private int maximumInterpreterStackDepth;
    private int optimizationLevel;
    ObjArray previousInterpreterInvocations;
    private Object propertyListeners;
    RegExpProxy regExpProxy;
    int scratchIndex;
    Scriptable scratchScriptable;
    long scratchUint32;
    private Object sealKey;
    private boolean sealed;
    private SecurityController securityController;
    private Map<Object, Object> threadLocalMap;
    Scriptable topCallScope;
    BaseFunction typeErrorThrower;
    boolean useDynamicScope;
    int version;
    private WrapFactory wrapFactory;
    public static final Object[] emptyArgs = ScriptRuntime.emptyArgs;
    private static Class<?> codegenClass = Kit.classOrNull("org.mozilla.javascript.optimizer.Codegen");
    private static Class<?> interpreterClass = Kit.classOrNull("org.mozilla.javascript.Interpreter");

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Context$ClassShutterSetter.class */
    public interface ClassShutterSetter {
        ClassShutter getClassShutter();

        void setClassShutter(ClassShutter classShutter);
    }

    @Deprecated
    public Context() {
        this(ContextFactory.getGlobal());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context(ContextFactory contextFactory) {
        this.generatingSource = true;
        int i = 0;
        this.generateObserverCount = false;
        if (contextFactory == null) {
            throw new IllegalArgumentException("factory == null");
        }
        this.factory = contextFactory;
        this.version = 0;
        this.optimizationLevel = codegenClass == null ? -1 : i;
        this.maximumInterpreterStackDepth = Integer.MAX_VALUE;
    }

    @Deprecated
    public static void addContextListener(ContextListener contextListener) {
        if ("org.mozilla.javascript.tools.debugger.Main".equals(contextListener.getClass().getName())) {
            try {
                contextListener.getClass().getMethod("attachTo", Kit.classOrNull("org.mozilla.javascript.ContextFactory")).invoke(contextListener, ContextFactory.getGlobal());
            } catch (Exception e) {
                RuntimeException runtimeException = new RuntimeException();
                Kit.initCause(runtimeException, e);
                throw runtimeException;
            }
        } else {
            ContextFactory.getGlobal().addListener(contextListener);
        }
    }

    @Deprecated
    public static Object call(ContextAction contextAction) {
        return call(ContextFactory.getGlobal(), contextAction);
    }

    public static Object call(ContextFactory contextFactory, final Callable callable, final Scriptable scriptable, final Scriptable scriptable2, final Object[] objArr) {
        ContextFactory contextFactory2 = contextFactory;
        if (contextFactory == null) {
            contextFactory2 = ContextFactory.getGlobal();
        }
        return call(contextFactory2, new ContextAction() { // from class: org.mozilla.javascript.Context.1
            @Override // org.mozilla.javascript.ContextAction
            public Object run(Context context) {
                return Callable.this.call(context, scriptable, scriptable2, objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object call(ContextFactory contextFactory, ContextAction contextAction) {
        try {
            Object run = contextAction.run(enter(null, contextFactory));
            exit();
            return run;
        } catch (Throwable th) {
            exit();
            throw th;
        }
    }

    public static void checkLanguageVersion(int i) {
        if (!isValidLanguageVersion(i)) {
            throw new IllegalArgumentException("Bad language version: " + i);
        }
    }

    public static void checkOptimizationLevel(int i) {
        if (!isValidOptimizationLevel(i)) {
            throw new IllegalArgumentException("Optimization level outside [-1..9]: " + i);
        }
    }

    private Object compileImpl(Scriptable scriptable, Reader reader, String str, String str2, int i, Object obj, boolean z, Evaluator evaluator, ErrorReporter errorReporter) throws IOException {
        String str3 = str2;
        if (str2 == null) {
            str3 = "unnamed script";
        }
        if (obj == null || getSecurityController() != null) {
            boolean z2 = false;
            if (!((reader == null) ^ (str == null))) {
                Kit.codeBug();
            }
            if (scriptable == null) {
                z2 = true;
            }
            if (!(z2 ^ z)) {
                Kit.codeBug();
            }
            CompilerEnvirons compilerEnvirons = new CompilerEnvirons();
            compilerEnvirons.initFromContext(this);
            ErrorReporter errorReporter2 = errorReporter;
            if (errorReporter == null) {
                errorReporter2 = compilerEnvirons.getErrorReporter();
            }
            Reader reader2 = reader;
            String str4 = str;
            if (this.debugger != null) {
                reader2 = reader;
                str4 = str;
                if (reader != null) {
                    str4 = Kit.readReader(reader);
                    reader2 = null;
                }
            }
            Parser parser = new Parser(compilerEnvirons, errorReporter2);
            if (z) {
                parser.calledByCompileFunction = true;
            }
            AstRoot parse = str4 != null ? parser.parse(str4, str3, i) : parser.parse(reader2, str3, i);
            if (!z || (parse.getFirstChild() != null && parse.getFirstChild().getType() == 109)) {
                ScriptNode transformTree = new IRFactory(compilerEnvirons, errorReporter2).transformTree(parse);
                Evaluator evaluator2 = evaluator;
                if (evaluator == null) {
                    evaluator2 = createCompiler();
                }
                Object compile = evaluator2.compile(compilerEnvirons, transformTree, transformTree.getEncodedSource(), z);
                if (this.debugger != null) {
                    if (str4 == null) {
                        Kit.codeBug();
                    }
                    if (compile instanceof DebuggableScript) {
                        notifyDebugger_r(this, (DebuggableScript) compile, str4);
                    } else {
                        throw new RuntimeException("NOT SUPPORTED");
                    }
                }
                return z ? evaluator2.createFunctionObject(this, scriptable, compile, obj) : evaluator2.createScriptObject(compile, obj);
            }
            throw new IllegalArgumentException("compileFunction only accepts source with single JS function: " + str4);
        }
        throw new IllegalArgumentException("securityDomain should be null if setSecurityController() was never called");
    }

    private Evaluator createCompiler() {
        Evaluator evaluator = (this.optimizationLevel < 0 || codegenClass == null) ? null : (Evaluator) Kit.newInstanceOrNull(codegenClass);
        Evaluator evaluator2 = evaluator;
        if (evaluator == null) {
            evaluator2 = createInterpreter();
        }
        return evaluator2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Evaluator createInterpreter() {
        return (Evaluator) Kit.newInstanceOrNull(interpreterClass);
    }

    public static Context enter() {
        return enter(null);
    }

    @Deprecated
    public static Context enter(Context context) {
        return enter(context, ContextFactory.getGlobal());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final Context enter(Context context, ContextFactory contextFactory) {
        Object threadContextHelper = VMBridge.instance.getThreadContextHelper();
        Context context2 = VMBridge.instance.getContext(threadContextHelper);
        if (context2 == null) {
            if (context == null) {
                Context makeContext = contextFactory.makeContext();
                if (makeContext.enterCount != 0) {
                    throw new IllegalStateException("factory.makeContext() returned Context instance already associated with some thread");
                }
                contextFactory.onContextCreated(makeContext);
                context2 = makeContext;
                if (contextFactory.isSealed()) {
                    context2 = makeContext;
                    if (!makeContext.isSealed()) {
                        makeContext.seal(null);
                        context2 = makeContext;
                    }
                }
            } else {
                context2 = context;
                if (context.enterCount != 0) {
                    throw new IllegalStateException("can not use Context instance already associated with some thread");
                }
            }
            VMBridge.instance.setContext(threadContextHelper, context2);
        }
        context2.enterCount++;
        return context2;
    }

    public static void exit() {
        Object threadContextHelper = VMBridge.instance.getThreadContextHelper();
        Context context = VMBridge.instance.getContext(threadContextHelper);
        if (context == null) {
            throw new IllegalStateException("Calling Context.exit without previous Context.enter");
        }
        if (context.enterCount < 1) {
            Kit.codeBug();
        }
        int i = context.enterCount - 1;
        context.enterCount = i;
        if (i == 0) {
            VMBridge.instance.setContext(threadContextHelper, null);
            context.factory.onContextReleased(context);
        }
    }

    private void firePropertyChangeImpl(Object obj, String str, Object obj2, Object obj3) {
        int i = 0;
        while (true) {
            Object listener = Kit.getListener(obj, i);
            if (listener != null) {
                if (listener instanceof PropertyChangeListener) {
                    ((PropertyChangeListener) listener).propertyChange(new PropertyChangeEvent(this, str, obj2, obj3));
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context getContext() {
        Context currentContext = getCurrentContext();
        if (currentContext != null) {
            return currentContext;
        }
        throw new RuntimeException("No Context associated with current Thread");
    }

    public static Context getCurrentContext() {
        return VMBridge.instance.getContext(VMBridge.instance.getThreadContextHelper());
    }

    public static DebuggableScript getDebuggableView(Script script) {
        if (script instanceof NativeFunction) {
            return ((NativeFunction) script).getDebuggableView();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getSourcePositionFromStack(int[] iArr) {
        StackTraceElement[] stackTrace;
        int lineNumber;
        Evaluator createInterpreter;
        Context currentContext = getCurrentContext();
        if (currentContext == null) {
            return null;
        }
        if (!(currentContext.lastInterpreterFrame == null || (createInterpreter = createInterpreter()) == null)) {
            return createInterpreter.getSourcePositionFromStack(currentContext, iArr);
        }
        for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
            String fileName = stackTraceElement.getFileName();
            if (fileName != null && !fileName.endsWith(".java") && (lineNumber = stackTraceElement.getLineNumber()) >= 0) {
                iArr[0] = lineNumber;
                return fileName;
            }
        }
        return null;
    }

    public static Object getUndefinedValue() {
        return Undefined.instance;
    }

    public static boolean isValidLanguageVersion(int i) {
        return i == 0 || i == 100 || i == 110 || i == 120 || i == 130 || i == 140 || i == 150 || i == 160 || i == 170 || i == 180;
    }

    public static boolean isValidOptimizationLevel(int i) {
        return -1 <= i && i <= 9;
    }

    public static Object javaToJS(Object obj, Scriptable scriptable) {
        if ((obj instanceof String) || (obj instanceof Number) || (obj instanceof Boolean) || (obj instanceof Scriptable)) {
            return obj;
        }
        if (obj instanceof Character) {
            return String.valueOf(((Character) obj).charValue());
        }
        Context context = getContext();
        return context.getWrapFactory().wrap(context, scriptable, obj, null);
    }

    public static Object jsToJava(Object obj, Class<?> cls) throws EvaluatorException {
        return NativeJavaObject.coerceTypeImpl(cls, obj);
    }

    private static void notifyDebugger_r(Context context, DebuggableScript debuggableScript, String str) {
        context.debugger.handleCompilationDone(context, debuggableScript, str);
        for (int i = 0; i != debuggableScript.getFunctionCount(); i++) {
            notifyDebugger_r(context, debuggableScript.getFunction(i), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onSealedMutation() {
        throw new IllegalStateException();
    }

    @Deprecated
    public static void removeContextListener(ContextListener contextListener) {
        ContextFactory.getGlobal().addListener(contextListener);
    }

    public static void reportError(String str) {
        int[] iArr = {0};
        reportError(str, getSourcePositionFromStack(iArr), iArr[0], null, 0);
    }

    public static void reportError(String str, String str2, int i, String str3, int i2) {
        Context currentContext = getCurrentContext();
        if (currentContext != null) {
            currentContext.getErrorReporter().error(str, str2, i, str3, i2);
            return;
        }
        throw new EvaluatorException(str, str2, i, str3, i2);
    }

    public static EvaluatorException reportRuntimeError(String str) {
        int[] iArr = {0};
        return reportRuntimeError(str, getSourcePositionFromStack(iArr), iArr[0], null, 0);
    }

    public static EvaluatorException reportRuntimeError(String str, String str2, int i, String str3, int i2) {
        Context currentContext = getCurrentContext();
        if (currentContext != null) {
            return currentContext.getErrorReporter().runtimeError(str, str2, i, str3, i2);
        }
        throw new EvaluatorException(str, str2, i, str3, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EvaluatorException reportRuntimeError0(String str) {
        return reportRuntimeError(ScriptRuntime.getMessage0(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EvaluatorException reportRuntimeError1(String str, Object obj) {
        return reportRuntimeError(ScriptRuntime.getMessage1(str, obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EvaluatorException reportRuntimeError2(String str, Object obj, Object obj2) {
        return reportRuntimeError(ScriptRuntime.getMessage2(str, obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EvaluatorException reportRuntimeError3(String str, Object obj, Object obj2, Object obj3) {
        return reportRuntimeError(ScriptRuntime.getMessage3(str, obj, obj2, obj3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EvaluatorException reportRuntimeError4(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        return reportRuntimeError(ScriptRuntime.getMessage4(str, obj, obj2, obj3, obj4));
    }

    public static void reportWarning(String str) {
        int[] iArr = {0};
        reportWarning(str, getSourcePositionFromStack(iArr), iArr[0], null, 0);
    }

    public static void reportWarning(String str, String str2, int i, String str3, int i2) {
        Context context = getContext();
        if (context.hasFeature(12)) {
            reportError(str, str2, i, str3, i2);
        } else {
            context.getErrorReporter().warning(str, str2, i, str3, i2);
        }
    }

    public static void reportWarning(String str, Throwable th) {
        int[] iArr = {0};
        String sourcePositionFromStack = getSourcePositionFromStack(iArr);
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.println(str);
        th.printStackTrace(printWriter);
        printWriter.flush();
        reportWarning(stringWriter.toString(), sourcePositionFromStack, iArr[0], null, 0);
    }

    @Deprecated
    public static void setCachingEnabled(boolean z) {
    }

    public static RuntimeException throwAsScriptRuntimeEx(Throwable th) {
        Context context;
        while (th instanceof InvocationTargetException) {
            th = ((InvocationTargetException) th).getTargetException();
        }
        if ((th instanceof Error) && ((context = getContext()) == null || !context.hasFeature(13))) {
            throw ((Error) th);
        } else if (th instanceof RhinoException) {
            throw ((RhinoException) th);
        } else {
            throw new WrappedException(th);
        }
    }

    public static boolean toBoolean(Object obj) {
        return ScriptRuntime.toBoolean(obj);
    }

    public static double toNumber(Object obj) {
        return ScriptRuntime.toNumber(obj);
    }

    public static Scriptable toObject(Object obj, Scriptable scriptable) {
        return ScriptRuntime.toObject(scriptable, obj);
    }

    @Deprecated
    public static Scriptable toObject(Object obj, Scriptable scriptable, Class<?> cls) {
        return ScriptRuntime.toObject(scriptable, obj);
    }

    public static String toString(Object obj) {
        return ScriptRuntime.toString(obj);
    }

    @Deprecated
    public static Object toType(Object obj, Class<?> cls) throws IllegalArgumentException {
        try {
            return jsToJava(obj, cls);
        } catch (EvaluatorException e) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException(e.getMessage());
            Kit.initCause(illegalArgumentException, e);
            throw illegalArgumentException;
        }
    }

    public void addActivationName(String str) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (this.activationNames == null) {
            this.activationNames = new HashSet();
        }
        this.activationNames.add(str);
    }

    public final void addPropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        if (this.sealed) {
            onSealedMutation();
        }
        this.propertyListeners = Kit.addListener(this.propertyListeners, propertyChangeListener);
    }

    public Object callFunctionWithContinuations(Callable callable, Scriptable scriptable, Object[] objArr) throws ContinuationPending {
        if (!(callable instanceof InterpretedFunction)) {
            throw new IllegalArgumentException("Function argument was not created by interpreted mode ");
        } else if (ScriptRuntime.hasTopCall(this)) {
            throw new IllegalStateException("Cannot have any pending top calls when executing a script with continuations");
        } else {
            this.isContinuationsTopCall = true;
            return ScriptRuntime.doTopCall(callable, this, scriptable, scriptable, objArr);
        }
    }

    public ContinuationPending captureContinuation() {
        return new ContinuationPending(Interpreter.captureContinuation(this));
    }

    public final Function compileFunction(Scriptable scriptable, String str, String str2, int i, Object obj) {
        return compileFunction(scriptable, str, null, null, str2, i, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Function compileFunction(Scriptable scriptable, String str, Evaluator evaluator, ErrorReporter errorReporter, String str2, int i, Object obj) {
        try {
            return (Function) compileImpl(scriptable, null, str, str2, i, obj, true, evaluator, errorReporter);
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }

    public final Script compileReader(Reader reader, String str, int i, Object obj) throws IOException {
        if (i < 0) {
            i = 0;
        }
        return (Script) compileImpl(null, reader, null, str, i, obj, false, null, null);
    }

    @Deprecated
    public final Script compileReader(Scriptable scriptable, Reader reader, String str, int i, Object obj) throws IOException {
        return compileReader(reader, str, i, obj);
    }

    public final Script compileString(String str, String str2, int i, Object obj) {
        if (i < 0) {
            i = 0;
        }
        return compileString(str, null, null, str2, i, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Script compileString(String str, Evaluator evaluator, ErrorReporter errorReporter, String str2, int i, Object obj) {
        try {
            return (Script) compileImpl(null, null, str, str2, i, obj, false, evaluator, errorReporter);
        } catch (IOException e) {
            throw new RuntimeException();
        }
    }

    public GeneratedClassLoader createClassLoader(ClassLoader classLoader) {
        return getFactory().createClassLoader(classLoader);
    }

    public final String decompileFunction(Function function, int i) {
        if (function instanceof BaseFunction) {
            return ((BaseFunction) function).decompile(i, 0);
        }
        return "function " + function.getClassName() + "() {\n\t[native code]\n}\n";
    }

    public final String decompileFunctionBody(Function function, int i) {
        return function instanceof BaseFunction ? ((BaseFunction) function).decompile(i, 1) : "[native code]\n";
    }

    public final String decompileScript(Script script, int i) {
        return ((NativeFunction) script).decompile(i, 0);
    }

    public final Object evaluateReader(Scriptable scriptable, Reader reader, String str, int i, Object obj) throws IOException {
        Script compileReader = compileReader(scriptable, reader, str, i, obj);
        if (compileReader != null) {
            return compileReader.exec(this, scriptable);
        }
        return null;
    }

    public final Object evaluateString(Scriptable scriptable, String str, String str2, int i, Object obj) {
        Script compileString = compileString(str, str2, i, obj);
        if (compileString != null) {
            return compileString.exec(this, scriptable);
        }
        return null;
    }

    public Object executeScriptWithContinuations(Script script, Scriptable scriptable) throws ContinuationPending {
        if (script instanceof InterpretedFunction) {
            InterpretedFunction interpretedFunction = (InterpretedFunction) script;
            if (interpretedFunction.isScript()) {
                return callFunctionWithContinuations(interpretedFunction, scriptable, ScriptRuntime.emptyArgs);
            }
        }
        throw new IllegalArgumentException("Script argument was not a script or was not created by interpreted mode ");
    }

    final void firePropertyChange(String str, Object obj, Object obj2) {
        Object obj3 = this.propertyListeners;
        if (obj3 != null) {
            firePropertyChangeImpl(obj3, str, obj, obj2);
        }
    }

    public final ClassLoader getApplicationClassLoader() {
        if (this.applicationClassLoader == null) {
            ContextFactory factory = getFactory();
            ClassLoader applicationClassLoader = factory.getApplicationClassLoader();
            ClassLoader classLoader = applicationClassLoader;
            if (applicationClassLoader == null) {
                ClassLoader currentThreadClassLoader = VMBridge.instance.getCurrentThreadClassLoader();
                if (currentThreadClassLoader != null && Kit.testIfCanLoadRhinoClasses(currentThreadClassLoader)) {
                    return currentThreadClassLoader;
                }
                Class<?> cls = factory.getClass();
                classLoader = cls != ScriptRuntime.ContextFactoryClass ? cls.getClassLoader() : getClass().getClassLoader();
            }
            this.applicationClassLoader = classLoader;
        }
        return this.applicationClassLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ClassShutter getClassShutter() {
        ClassShutter classShutter;
        synchronized (this) {
            classShutter = this.classShutter;
        }
        return classShutter;
    }

    public final ClassShutterSetter getClassShutterSetter() {
        synchronized (this) {
            if (this.hasClassShutter) {
                return null;
            }
            this.hasClassShutter = true;
            return new ClassShutterSetter() { // from class: org.mozilla.javascript.Context.2
                @Override // org.mozilla.javascript.Context.ClassShutterSetter
                public ClassShutter getClassShutter() {
                    return Context.this.classShutter;
                }

                @Override // org.mozilla.javascript.Context.ClassShutterSetter
                public void setClassShutter(ClassShutter classShutter) {
                    Context.this.classShutter = classShutter;
                }
            };
        }
    }

    public final Debugger getDebugger() {
        return this.debugger;
    }

    public final Object getDebuggerContextData() {
        return this.debuggerData;
    }

    public XMLLib.Factory getE4xImplementationFactory() {
        return getFactory().getE4xImplementationFactory();
    }

    public final Object[] getElements(Scriptable scriptable) {
        return ScriptRuntime.getArrayElements(scriptable);
    }

    public final ErrorReporter getErrorReporter() {
        return this.errorReporter == null ? DefaultErrorReporter.instance : this.errorReporter;
    }

    public final ContextFactory getFactory() {
        return this.factory;
    }

    public final String getImplementationVersion() {
        if (implementationVersion == null) {
            implementationVersion = ScriptRuntime.getMessage0("implementation.version");
        }
        return implementationVersion;
    }

    public final int getInstructionObserverThreshold() {
        return this.instructionThreshold;
    }

    public final int getLanguageVersion() {
        return this.version;
    }

    public final Locale getLocale() {
        if (this.locale == null) {
            this.locale = Locale.getDefault();
        }
        return this.locale;
    }

    public final int getMaximumInterpreterStackDepth() {
        return this.maximumInterpreterStackDepth;
    }

    public final int getOptimizationLevel() {
        return this.optimizationLevel;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RegExpProxy getRegExpProxy() {
        Class<?> classOrNull;
        if (this.regExpProxy == null && (classOrNull = Kit.classOrNull("org.mozilla.javascript.regexp.RegExpImpl")) != null) {
            this.regExpProxy = (RegExpProxy) Kit.newInstanceOrNull(classOrNull);
        }
        return this.regExpProxy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecurityController getSecurityController() {
        SecurityController global = SecurityController.global();
        return global != null ? global : this.securityController;
    }

    public final Object getThreadLocal(Object obj) {
        if (this.threadLocalMap == null) {
            return null;
        }
        return this.threadLocalMap.get(obj);
    }

    public final WrapFactory getWrapFactory() {
        if (this.wrapFactory == null) {
            this.wrapFactory = new WrapFactory();
        }
        return this.wrapFactory;
    }

    public boolean hasFeature(int i) {
        return getFactory().hasFeature(this, i);
    }

    public final Scriptable initSafeStandardObjects(ScriptableObject scriptableObject) {
        return initSafeStandardObjects(scriptableObject, false);
    }

    public final ScriptableObject initSafeStandardObjects() {
        return initSafeStandardObjects(null, false);
    }

    public ScriptableObject initSafeStandardObjects(ScriptableObject scriptableObject, boolean z) {
        return ScriptRuntime.initSafeStandardObjects(this, scriptableObject, z);
    }

    public final Scriptable initStandardObjects(ScriptableObject scriptableObject) {
        return initStandardObjects(scriptableObject, false);
    }

    public final ScriptableObject initStandardObjects() {
        return initStandardObjects(null, false);
    }

    public ScriptableObject initStandardObjects(ScriptableObject scriptableObject, boolean z) {
        return ScriptRuntime.initStandardObjects(this, scriptableObject, z);
    }

    public final boolean isActivationNeeded(String str) {
        return this.activationNames != null && this.activationNames.contains(str);
    }

    public final boolean isGeneratingDebug() {
        return this.generatingDebug;
    }

    public final boolean isGeneratingDebugChanged() {
        return this.generatingDebugChanged;
    }

    public final boolean isGeneratingSource() {
        return this.generatingSource;
    }

    public final boolean isSealed() {
        return this.sealed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isVersionECMA1() {
        return this.version == 0 || this.version >= 130;
    }

    public Scriptable newArray(Scriptable scriptable, int i) {
        NativeArray nativeArray = new NativeArray(i);
        ScriptRuntime.setBuiltinProtoAndParent(nativeArray, scriptable, TopLevel.Builtins.Array);
        return nativeArray;
    }

    public Scriptable newArray(Scriptable scriptable, Object[] objArr) {
        if (objArr.getClass().getComponentType() != ScriptRuntime.ObjectClass) {
            throw new IllegalArgumentException();
        }
        NativeArray nativeArray = new NativeArray(objArr);
        ScriptRuntime.setBuiltinProtoAndParent(nativeArray, scriptable, TopLevel.Builtins.Array);
        return nativeArray;
    }

    public Scriptable newObject(Scriptable scriptable) {
        NativeObject nativeObject = new NativeObject();
        ScriptRuntime.setBuiltinProtoAndParent(nativeObject, scriptable, TopLevel.Builtins.Object);
        return nativeObject;
    }

    public Scriptable newObject(Scriptable scriptable, String str) {
        return newObject(scriptable, str, ScriptRuntime.emptyArgs);
    }

    public Scriptable newObject(Scriptable scriptable, String str, Object[] objArr) {
        return ScriptRuntime.newObject(this, scriptable, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void observeInstructionCount(int i) {
        getFactory().observeInstructionCount(this, i);
    }

    public final void putThreadLocal(Object obj, Object obj2) {
        synchronized (this) {
            if (this.sealed) {
                onSealedMutation();
            }
            if (this.threadLocalMap == null) {
                this.threadLocalMap = new HashMap();
            }
            this.threadLocalMap.put(obj, obj2);
        }
    }

    public void removeActivationName(String str) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (this.activationNames != null) {
            this.activationNames.remove(str);
        }
    }

    public final void removePropertyChangeListener(PropertyChangeListener propertyChangeListener) {
        if (this.sealed) {
            onSealedMutation();
        }
        this.propertyListeners = Kit.removeListener(this.propertyListeners, propertyChangeListener);
    }

    public final void removeThreadLocal(Object obj) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (this.threadLocalMap != null) {
            this.threadLocalMap.remove(obj);
        }
    }

    public Object resumeContinuation(Object obj, Scriptable scriptable, Object obj2) throws ContinuationPending {
        return Interpreter.restartContinuation((NativeContinuation) obj, this, scriptable, new Object[]{obj2});
    }

    public final void seal(Object obj) {
        if (this.sealed) {
            onSealedMutation();
        }
        this.sealed = true;
        this.sealKey = obj;
    }

    public final void setApplicationClassLoader(ClassLoader classLoader) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (classLoader == null) {
            this.applicationClassLoader = null;
        } else if (!Kit.testIfCanLoadRhinoClasses(classLoader)) {
            throw new IllegalArgumentException("Loader can not resolve Rhino classes");
        } else {
            this.applicationClassLoader = classLoader;
        }
    }

    public final void setClassShutter(ClassShutter classShutter) {
        synchronized (this) {
            if (this.sealed) {
                onSealedMutation();
            }
            if (classShutter == null) {
                throw new IllegalArgumentException();
            } else if (this.hasClassShutter) {
                throw new SecurityException("Cannot overwrite existing ClassShutter object");
            } else {
                this.classShutter = classShutter;
                this.hasClassShutter = true;
            }
        }
    }

    public final void setDebugger(Debugger debugger, Object obj) {
        if (this.sealed) {
            onSealedMutation();
        }
        this.debugger = debugger;
        this.debuggerData = obj;
    }

    public final ErrorReporter setErrorReporter(ErrorReporter errorReporter) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (errorReporter == null) {
            throw new IllegalArgumentException();
        }
        ErrorReporter errorReporter2 = getErrorReporter();
        if (errorReporter == errorReporter2) {
            return errorReporter2;
        }
        Object obj = this.propertyListeners;
        if (obj != null) {
            firePropertyChangeImpl(obj, errorReporterProperty, errorReporter2, errorReporter);
        }
        this.errorReporter = errorReporter;
        return errorReporter2;
    }

    public void setGenerateObserverCount(boolean z) {
        this.generateObserverCount = z;
    }

    public final void setGeneratingDebug(boolean z) {
        if (this.sealed) {
            onSealedMutation();
        }
        this.generatingDebugChanged = true;
        if (z && getOptimizationLevel() > 0) {
            setOptimizationLevel(0);
        }
        this.generatingDebug = z;
    }

    public final void setGeneratingSource(boolean z) {
        if (this.sealed) {
            onSealedMutation();
        }
        this.generatingSource = z;
    }

    public final void setInstructionObserverThreshold(int i) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        this.instructionThreshold = i;
        setGenerateObserverCount(i > 0);
    }

    public void setLanguageVersion(int i) {
        if (this.sealed) {
            onSealedMutation();
        }
        checkLanguageVersion(i);
        Object obj = this.propertyListeners;
        if (!(obj == null || i == this.version)) {
            firePropertyChangeImpl(obj, languageVersionProperty, Integer.valueOf(this.version), Integer.valueOf(i));
        }
        this.version = i;
    }

    public final Locale setLocale(Locale locale) {
        if (this.sealed) {
            onSealedMutation();
        }
        Locale locale2 = this.locale;
        this.locale = locale;
        return locale2;
    }

    public final void setMaximumInterpreterStackDepth(int i) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (this.optimizationLevel != -1) {
            throw new IllegalStateException("Cannot set maximumInterpreterStackDepth when optimizationLevel != -1");
        } else if (i < 1) {
            throw new IllegalArgumentException("Cannot set maximumInterpreterStackDepth to less than 1");
        } else {
            this.maximumInterpreterStackDepth = i;
        }
    }

    public final void setOptimizationLevel(int i) {
        if (this.sealed) {
            onSealedMutation();
        }
        int i2 = i;
        if (i == -2) {
            i2 = -1;
        }
        checkOptimizationLevel(i2);
        if (codegenClass == null) {
            i2 = -1;
        }
        this.optimizationLevel = i2;
    }

    public final void setSecurityController(SecurityController securityController) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (securityController == null) {
            throw new IllegalArgumentException();
        } else if (this.securityController != null) {
            throw new SecurityException("Can not overwrite existing SecurityController object");
        } else if (SecurityController.hasGlobal()) {
            throw new SecurityException("Can not overwrite existing global SecurityController object");
        } else {
            this.securityController = securityController;
        }
    }

    public final void setWrapFactory(WrapFactory wrapFactory) {
        if (this.sealed) {
            onSealedMutation();
        }
        if (wrapFactory == null) {
            throw new IllegalArgumentException();
        }
        this.wrapFactory = wrapFactory;
    }

    public final boolean stringIsCompilableUnit(String str) {
        boolean z;
        CompilerEnvirons compilerEnvirons = new CompilerEnvirons();
        compilerEnvirons.initFromContext(this);
        compilerEnvirons.setGeneratingSource(false);
        Parser parser = new Parser(compilerEnvirons, DefaultErrorReporter.instance);
        try {
            parser.parse(str, (String) null, 1);
            z = false;
        } catch (EvaluatorException e) {
            z = true;
        }
        return !z || !parser.eof();
    }

    public final void unseal(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        } else if (this.sealKey != obj) {
            throw new IllegalArgumentException();
        } else if (!this.sealed) {
            throw new IllegalStateException();
        } else {
            this.sealed = false;
            this.sealKey = null;
        }
    }
}
