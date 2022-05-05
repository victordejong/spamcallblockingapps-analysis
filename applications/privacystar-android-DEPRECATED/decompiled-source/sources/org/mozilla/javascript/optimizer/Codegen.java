package org.mozilla.javascript.optimizer;

import android.support.p001v4.app.NotificationCompat;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.util.HashMap;
import java.util.List;
import org.mozilla.classfile.ClassFileWriter;
import org.mozilla.javascript.CompilerEnvirons;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Evaluator;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeFunction;
import org.mozilla.javascript.ObjArray;
import org.mozilla.javascript.ObjToIntMap;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.ScriptNode;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/optimizer/Codegen.class */
public class Codegen implements Evaluator {
    static final String DEFAULT_MAIN_METHOD_CLASS = "org.mozilla.javascript.optimizer.OptRuntime";
    static final String FUNCTION_CONSTRUCTOR_SIGNATURE = "(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V";
    static final String FUNCTION_INIT_SIGNATURE = "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V";
    static final String ID_FIELD_NAME = "_id";
    static final String REGEXP_INIT_METHOD_NAME = "_reInit";
    static final String REGEXP_INIT_METHOD_SIGNATURE = "(Lorg/mozilla/javascript/Context;)V";
    private static final String SUPER_CLASS_NAME = "org.mozilla.javascript.NativeFunction";
    private static final Object globalLock = new Object();
    private static int globalSerialClassCounter;
    private CompilerEnvirons compilerEnv;
    private ObjArray directCallTargets;
    private double[] itsConstantList;
    private int itsConstantListSize;
    String mainClassName;
    String mainClassSignature;
    private String mainMethodClass = DEFAULT_MAIN_METHOD_CLASS;
    private ObjToIntMap scriptOrFnIndexes;
    ScriptNode[] scriptOrFnNodes;

    private static void addDoubleWrap(ClassFileWriter classFileWriter) {
        classFileWriter.addInvoke(184, "org/mozilla/javascript/optimizer/OptRuntime", "wrapDouble", "(D)Ljava/lang/Double;");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException badTree() {
        throw new RuntimeException("Bad tree in codegen");
    }

    private static void collectScriptNodes_r(ScriptNode scriptNode, ObjArray objArray) {
        objArray.add(scriptNode);
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            collectScriptNodes_r(scriptNode.getFunctionNode(i), objArray);
        }
    }

    private Class<?> defineClass(Object obj, Object obj2) {
        Object[] objArr = (Object[]) obj;
        String str = (String) objArr[0];
        byte[] bArr = (byte[]) objArr[1];
        GeneratedClassLoader createLoader = SecurityController.createLoader(getClass().getClassLoader(), obj2);
        try {
            Class<?> defineClass = createLoader.defineClass(str, bArr);
            createLoader.linkClass(defineClass);
            return defineClass;
        } catch (IllegalArgumentException | SecurityException e) {
            throw new RuntimeException("Malformed optimizer package " + e);
        }
    }

    private void emitConstantDudeInitializers(ClassFileWriter classFileWriter) {
        int i = this.itsConstantListSize;
        if (i != 0) {
            classFileWriter.startMethod("<clinit>", "()V", (short) 24);
            double[] dArr = this.itsConstantList;
            for (int i2 = 0; i2 != i; i2++) {
                double d = dArr[i2];
                String str = "_k" + i2;
                String staticConstantWrapperType = getStaticConstantWrapperType(d);
                classFileWriter.addField(str, staticConstantWrapperType, (short) 10);
                int i3 = (int) d;
                if (i3 == d) {
                    classFileWriter.addPush(i3);
                    classFileWriter.addInvoke(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                } else {
                    classFileWriter.addPush(d);
                    addDoubleWrap(classFileWriter);
                }
                classFileWriter.add(179, this.mainClassName, str, staticConstantWrapperType);
            }
            classFileWriter.add(177);
            classFileWriter.stopMethod((short) 0);
        }
    }

    private void emitDirectConstructor(ClassFileWriter classFileWriter, OptFunctionNode optFunctionNode) {
        classFileWriter.startMethod(getDirectCtorName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode), (short) 10);
        int paramCount = optFunctionNode.fnode.getParamCount();
        int i = (paramCount * 3) + 4;
        int i2 = i + 1;
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addInvoke(182, "org/mozilla/javascript/BaseFunction", "createObject", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;");
        classFileWriter.addAStore(i2);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(i2);
        for (int i3 = 0; i3 < paramCount; i3++) {
            int i4 = i3 * 3;
            classFileWriter.addALoad(i4 + 4);
            classFileWriter.addDLoad(i4 + 5);
        }
        classFileWriter.addALoad(i);
        classFileWriter.addInvoke(184, this.mainClassName, getBodyMethodName(optFunctionNode.fnode), getBodyMethodSignature(optFunctionNode.fnode));
        int acquireLabel = classFileWriter.acquireLabel();
        classFileWriter.add(89);
        classFileWriter.add(193, "org/mozilla/javascript/Scriptable");
        classFileWriter.add(153, acquireLabel);
        classFileWriter.add(192, "org/mozilla/javascript/Scriptable");
        classFileWriter.add(176);
        classFileWriter.markLabel(acquireLabel);
        classFileWriter.addALoad(i2);
        classFileWriter.add(176);
        classFileWriter.stopMethod((short) (i2 + 1));
    }

    private void emitRegExpInit(ClassFileWriter classFileWriter) {
        int i = 0;
        for (int i2 = 0; i2 != this.scriptOrFnNodes.length; i2++) {
            i += this.scriptOrFnNodes[i2].getRegexpCount();
        }
        if (i != 0) {
            classFileWriter.startMethod(REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE, (short) 10);
            classFileWriter.addField("_reInitDone", "Z", (short) 74);
            classFileWriter.add(178, this.mainClassName, "_reInitDone", "Z");
            int acquireLabel = classFileWriter.acquireLabel();
            classFileWriter.add(153, acquireLabel);
            classFileWriter.add(177);
            classFileWriter.markLabel(acquireLabel);
            classFileWriter.addALoad(0);
            classFileWriter.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "checkRegExpProxy", "(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;");
            classFileWriter.addAStore(1);
            for (int i3 = 0; i3 != this.scriptOrFnNodes.length; i3++) {
                ScriptNode scriptNode = this.scriptOrFnNodes[i3];
                int regexpCount = scriptNode.getRegexpCount();
                for (int i4 = 0; i4 != regexpCount; i4++) {
                    String compiledRegexpName = getCompiledRegexpName(scriptNode, i4);
                    String regexpString = scriptNode.getRegexpString(i4);
                    String regexpFlags = scriptNode.getRegexpFlags(i4);
                    classFileWriter.addField(compiledRegexpName, "Ljava/lang/Object;", (short) 10);
                    classFileWriter.addALoad(1);
                    classFileWriter.addALoad(0);
                    classFileWriter.addPush(regexpString);
                    if (regexpFlags == null) {
                        classFileWriter.add(1);
                    } else {
                        classFileWriter.addPush(regexpFlags);
                    }
                    classFileWriter.addInvoke(185, "org/mozilla/javascript/RegExpProxy", "compileRegExp", "(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;");
                    classFileWriter.add(179, this.mainClassName, compiledRegexpName, "Ljava/lang/Object;");
                }
            }
            classFileWriter.addPush(1);
            classFileWriter.add(179, this.mainClassName, "_reInitDone", "Z");
            classFileWriter.add(177);
            classFileWriter.stopMethod((short) 2);
        }
    }

    private void generateCallMethod(ClassFileWriter classFileWriter) {
        int i;
        int paramCount;
        classFileWriter.startMethod(NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
        int acquireLabel = classFileWriter.acquireLabel();
        classFileWriter.addALoad(1);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "hasTopCall", "(Lorg/mozilla/javascript/Context;)Z");
        classFileWriter.add(154, acquireLabel);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(3);
        classFileWriter.addALoad(4);
        classFileWriter.addInvoke(184, "org/mozilla/javascript/ScriptRuntime", "doTopCall", "(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        classFileWriter.add(176);
        classFileWriter.markLabel(acquireLabel);
        classFileWriter.addALoad(0);
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(3);
        classFileWriter.addALoad(4);
        int length = this.scriptOrFnNodes.length;
        boolean z = 2 <= length;
        if (z) {
            classFileWriter.addLoadThis();
            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
            i = classFileWriter.addTableSwitch(1, length - 1);
        } else {
            i = 0;
        }
        short s = 0;
        for (int i2 = 0; i2 != length; i2++) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i2];
            s = s;
            if (z) {
                if (i2 == 0) {
                    classFileWriter.markTableSwitchDefault(i);
                    s = classFileWriter.getStackTop();
                } else {
                    classFileWriter.markTableSwitchCase(i, i2 - 1, s);
                    s = s;
                }
            }
            if (scriptNode.getType() == 109) {
                OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                if (optFunctionNode.isTargetOfDirectCall() && (paramCount = optFunctionNode.fnode.getParamCount()) != 0) {
                    for (int i3 = 0; i3 != paramCount; i3++) {
                        classFileWriter.add(190);
                        classFileWriter.addPush(i3);
                        int acquireLabel2 = classFileWriter.acquireLabel();
                        int acquireLabel3 = classFileWriter.acquireLabel();
                        classFileWriter.add(164, acquireLabel2);
                        classFileWriter.addALoad(4);
                        classFileWriter.addPush(i3);
                        classFileWriter.add(50);
                        classFileWriter.add(167, acquireLabel3);
                        classFileWriter.markLabel(acquireLabel2);
                        pushUndefined(classFileWriter);
                        classFileWriter.markLabel(acquireLabel3);
                        classFileWriter.adjustStackTop(-1);
                        classFileWriter.addPush(0.0d);
                        classFileWriter.addALoad(4);
                    }
                }
            }
            classFileWriter.addInvoke(184, this.mainClassName, getBodyMethodName(scriptNode), getBodyMethodSignature(scriptNode));
            classFileWriter.add(176);
        }
        classFileWriter.stopMethod((short) 5);
    }

    private byte[] generateCode(String str) {
        boolean z = this.scriptOrFnNodes[0].getType() == 136;
        boolean z2 = true;
        if (this.scriptOrFnNodes.length <= 1) {
            z2 = !z;
        }
        String str2 = null;
        if (this.compilerEnv.isGenerateDebugInfo()) {
            str2 = this.scriptOrFnNodes[0].getSourceName();
        }
        ClassFileWriter classFileWriter = new ClassFileWriter(this.mainClassName, SUPER_CLASS_NAME, str2);
        classFileWriter.addField(ID_FIELD_NAME, "I", (short) 2);
        if (z2) {
            generateFunctionConstructor(classFileWriter);
        }
        if (z) {
            classFileWriter.addInterface("org/mozilla/javascript/Script");
            generateScriptCtor(classFileWriter);
            generateMain(classFileWriter);
            generateExecute(classFileWriter);
        }
        generateCallMethod(classFileWriter);
        generateResumeGenerator(classFileWriter);
        generateNativeFunctionOverrides(classFileWriter, str);
        int length = this.scriptOrFnNodes.length;
        for (int i = 0; i != length; i++) {
            ScriptNode scriptNode = this.scriptOrFnNodes[i];
            BodyCodegen bodyCodegen = new BodyCodegen();
            bodyCodegen.cfw = classFileWriter;
            bodyCodegen.codegen = this;
            bodyCodegen.compilerEnv = this.compilerEnv;
            bodyCodegen.scriptOrFn = scriptNode;
            bodyCodegen.scriptOrFnIndex = i;
            try {
                bodyCodegen.generateBodyCode();
                if (scriptNode.getType() == 109) {
                    OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
                    generateFunctionInit(classFileWriter, optFunctionNode);
                    if (optFunctionNode.isTargetOfDirectCall()) {
                        emitDirectConstructor(classFileWriter, optFunctionNode);
                    }
                }
            } catch (ClassFileWriter.ClassFileFormatException e) {
                throw reportClassFileFormatException(scriptNode, e.getMessage());
            }
        }
        emitRegExpInit(classFileWriter);
        emitConstantDudeInitializers(classFileWriter);
        return classFileWriter.toByteArray();
    }

    private void generateExecute(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("exec", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;", (short) 17);
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.add(89);
        classFileWriter.add(1);
        classFileWriter.addInvoke(182, classFileWriter.getClassName(), NotificationCompat.CATEGORY_CALL, "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;");
        classFileWriter.add(176);
        classFileWriter.stopMethod((short) 3);
    }

    private void generateFunctionConstructor(ClassFileWriter classFileWriter) {
        int i;
        boolean z = true;
        classFileWriter.startMethod("<init>", FUNCTION_CONSTRUCTOR_SIGNATURE, (short) 1);
        classFileWriter.addALoad(0);
        classFileWriter.addInvoke(183, SUPER_CLASS_NAME, "<init>", "()V");
        classFileWriter.addLoadThis();
        classFileWriter.addILoad(3);
        classFileWriter.add(181, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(2);
        classFileWriter.addALoad(1);
        int i2 = this.scriptOrFnNodes[0].getType() == 136 ? 1 : 0;
        int length = this.scriptOrFnNodes.length;
        if (i2 == length) {
            throw badTree();
        }
        if (2 > length - i2) {
            z = false;
        }
        if (z) {
            classFileWriter.addILoad(3);
            i = classFileWriter.addTableSwitch(i2 + 1, length - 1);
        } else {
            i = 0;
        }
        short s = 0;
        for (int i3 = i2; i3 != length; i3++) {
            s = s;
            if (z) {
                if (i3 == i2) {
                    classFileWriter.markTableSwitchDefault(i);
                    s = classFileWriter.getStackTop();
                } else {
                    classFileWriter.markTableSwitchCase(i, (i3 - 1) - i2, s);
                    s = s;
                }
            }
            classFileWriter.addInvoke(183, this.mainClassName, getFunctionInitMethodName(OptFunctionNode.get(this.scriptOrFnNodes[i3])), FUNCTION_INIT_SIGNATURE);
            classFileWriter.add(177);
        }
        classFileWriter.stopMethod((short) 4);
    }

    private void generateFunctionInit(ClassFileWriter classFileWriter, OptFunctionNode optFunctionNode) {
        classFileWriter.startMethod(getFunctionInitMethodName(optFunctionNode), FUNCTION_INIT_SIGNATURE, (short) 18);
        classFileWriter.addLoadThis();
        classFileWriter.addALoad(1);
        classFileWriter.addALoad(2);
        classFileWriter.addInvoke(182, "org/mozilla/javascript/NativeFunction", "initScriptFunction", FUNCTION_INIT_SIGNATURE);
        if (optFunctionNode.fnode.getRegexpCount() != 0) {
            classFileWriter.addALoad(1);
            classFileWriter.addInvoke(184, this.mainClassName, REGEXP_INIT_METHOD_NAME, REGEXP_INIT_METHOD_SIGNATURE);
        }
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 3);
    }

    private void generateMain(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("main", "([Ljava/lang/String;)V", (short) 9);
        classFileWriter.add(187, classFileWriter.getClassName());
        classFileWriter.add(89);
        classFileWriter.addInvoke(183, classFileWriter.getClassName(), "<init>", "()V");
        classFileWriter.add(42);
        classFileWriter.addInvoke(184, this.mainMethodClass, "main", "(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 1);
    }

    private void generateNativeFunctionOverrides(ClassFileWriter classFileWriter, String str) {
        short s;
        int i;
        classFileWriter.startMethod("getLanguageVersion", "()I", (short) 1);
        classFileWriter.addPush(this.compilerEnv.getLanguageVersion());
        int i2 = 172;
        classFileWriter.add(172);
        classFileWriter.stopMethod((short) 1);
        for (int i3 = 0; i3 != 6; i3++) {
            if (i3 != 4 || str != null) {
                switch (i3) {
                    case 0:
                        classFileWriter.startMethod("getFunctionName", "()Ljava/lang/String;", (short) 1);
                        s = 1;
                        break;
                    case 1:
                        classFileWriter.startMethod("getParamCount", "()I", (short) 1);
                        s = 1;
                        break;
                    case 2:
                        classFileWriter.startMethod("getParamAndVarCount", "()I", (short) 1);
                        s = 1;
                        break;
                    case 3:
                        s = 2;
                        classFileWriter.startMethod("getParamOrVarName", "(I)Ljava/lang/String;", (short) 1);
                        break;
                    case 4:
                        classFileWriter.startMethod("getEncodedSource", "()Ljava/lang/String;", (short) 1);
                        classFileWriter.addPush(str);
                        s = 1;
                        break;
                    case 5:
                        classFileWriter.startMethod("getParamOrVarConst", "(I)Z", (short) 1);
                        s = 3;
                        break;
                    default:
                        throw Kit.codeBug();
                }
                int length = this.scriptOrFnNodes.length;
                if (length > 1) {
                    classFileWriter.addLoadThis();
                    classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
                    i = classFileWriter.addTableSwitch(1, length - 1);
                } else {
                    i = 0;
                }
                short s2 = 0;
                for (int i4 = 0; i4 != length; i4++) {
                    ScriptNode scriptNode = this.scriptOrFnNodes[i4];
                    if (i4 != 0) {
                        classFileWriter.markTableSwitchCase(i, i4 - 1, s2);
                    } else if (length > 1) {
                        classFileWriter.markTableSwitchDefault(i);
                        s2 = classFileWriter.getStackTop();
                    }
                    switch (i3) {
                        case 0:
                            if (scriptNode.getType() == 136) {
                                classFileWriter.addPush("");
                            } else {
                                classFileWriter.addPush(((FunctionNode) scriptNode).getName());
                            }
                            classFileWriter.add(176);
                            i2 = i2;
                            break;
                        case 1:
                            classFileWriter.addPush(scriptNode.getParamCount());
                            classFileWriter.add(i2);
                            i2 = i2;
                            break;
                        case 2:
                            classFileWriter.addPush(scriptNode.getParamAndVarCount());
                            i2 = 172;
                            classFileWriter.add(172);
                            break;
                        case 3:
                            int paramAndVarCount = scriptNode.getParamAndVarCount();
                            if (paramAndVarCount != 0) {
                                if (paramAndVarCount == 1) {
                                    classFileWriter.addPush(scriptNode.getParamOrVarName(0));
                                    classFileWriter.add(176);
                                    i2 = i2;
                                    break;
                                } else {
                                    classFileWriter.addILoad(1);
                                    int addTableSwitch = classFileWriter.addTableSwitch(1, paramAndVarCount - 1);
                                    int i5 = 0;
                                    while (i5 != paramAndVarCount) {
                                        if (classFileWriter.getStackTop() != 0) {
                                            Kit.codeBug();
                                        }
                                        String paramOrVarName = scriptNode.getParamOrVarName(i5);
                                        if (i5 == 0) {
                                            classFileWriter.markTableSwitchDefault(addTableSwitch);
                                        } else {
                                            classFileWriter.markTableSwitchCase(addTableSwitch, i5 - 1, 0);
                                        }
                                        classFileWriter.addPush(paramOrVarName);
                                        classFileWriter.add(176);
                                        i5++;
                                        i2 = 172;
                                    }
                                    break;
                                }
                            } else {
                                classFileWriter.add(1);
                                classFileWriter.add(176);
                                i2 = i2;
                                break;
                            }
                        case 4:
                            classFileWriter.addPush(scriptNode.getEncodedSourceStart());
                            classFileWriter.addPush(scriptNode.getEncodedSourceEnd());
                            classFileWriter.addInvoke(182, "java/lang/String", "substring", "(II)Ljava/lang/String;");
                            classFileWriter.add(176);
                            i2 = i2;
                            break;
                        case 5:
                            int paramAndVarCount2 = scriptNode.getParamAndVarCount();
                            boolean[] paramAndVarConst = scriptNode.getParamAndVarConst();
                            if (paramAndVarCount2 == 0) {
                                classFileWriter.add(3);
                                classFileWriter.add(i2);
                                i2 = i2;
                                break;
                            } else if (paramAndVarCount2 == 1) {
                                classFileWriter.addPush(paramAndVarConst[0]);
                                classFileWriter.add(i2);
                                i2 = i2;
                                break;
                            } else {
                                classFileWriter.addILoad(1);
                                int addTableSwitch2 = classFileWriter.addTableSwitch(1, paramAndVarCount2 - 1);
                                int i6 = 0;
                                while (true) {
                                    i2 = i2;
                                    if (i6 != paramAndVarCount2) {
                                        if (classFileWriter.getStackTop() != 0) {
                                            Kit.codeBug();
                                        }
                                        if (i6 == 0) {
                                            classFileWriter.markTableSwitchDefault(addTableSwitch2);
                                        } else {
                                            classFileWriter.markTableSwitchCase(addTableSwitch2, i6 - 1, 0);
                                        }
                                        classFileWriter.addPush(paramAndVarConst[i6]);
                                        classFileWriter.add(i2);
                                        i6++;
                                    }
                                }
                            }
                            break;
                        default:
                            throw Kit.codeBug();
                    }
                }
                classFileWriter.stopMethod(s);
            }
        }
    }

    private void generateResumeGenerator(ClassFileWriter classFileWriter) {
        boolean z = false;
        for (int i = 0; i < this.scriptOrFnNodes.length; i++) {
            if (isGenerator(this.scriptOrFnNodes[i])) {
                z = true;
            }
        }
        if (z) {
            classFileWriter.startMethod("resumeGenerator", "(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", (short) 17);
            classFileWriter.addALoad(0);
            classFileWriter.addALoad(1);
            classFileWriter.addALoad(2);
            classFileWriter.addALoad(4);
            classFileWriter.addALoad(5);
            classFileWriter.addILoad(3);
            classFileWriter.addLoadThis();
            classFileWriter.add(180, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
            int addTableSwitch = classFileWriter.addTableSwitch(0, this.scriptOrFnNodes.length - 1);
            classFileWriter.markTableSwitchDefault(addTableSwitch);
            int acquireLabel = classFileWriter.acquireLabel();
            for (int i2 = 0; i2 < this.scriptOrFnNodes.length; i2++) {
                ScriptNode scriptNode = this.scriptOrFnNodes[i2];
                classFileWriter.markTableSwitchCase(addTableSwitch, i2, 6);
                if (isGenerator(scriptNode)) {
                    String str = this.mainClassName;
                    classFileWriter.addInvoke(184, str, getBodyMethodName(scriptNode) + "_gen", "(" + this.mainClassSignature + "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;");
                    classFileWriter.add(176);
                } else {
                    classFileWriter.add(167, acquireLabel);
                }
            }
            classFileWriter.markLabel(acquireLabel);
            pushUndefined(classFileWriter);
            classFileWriter.add(176);
            classFileWriter.stopMethod((short) 6);
        }
    }

    private void generateScriptCtor(ClassFileWriter classFileWriter) {
        classFileWriter.startMethod("<init>", "()V", (short) 1);
        classFileWriter.addLoadThis();
        classFileWriter.addInvoke(183, SUPER_CLASS_NAME, "<init>", "()V");
        classFileWriter.addLoadThis();
        classFileWriter.addPush(0);
        classFileWriter.add(181, classFileWriter.getClassName(), ID_FIELD_NAME, "I");
        classFileWriter.add(177);
        classFileWriter.stopMethod((short) 1);
    }

    private static String getStaticConstantWrapperType(double d) {
        return ((double) ((int) d)) == d ? "Ljava/lang/Integer;" : "Ljava/lang/Double;";
    }

    private static void initOptFunctions_r(ScriptNode scriptNode) {
        int functionCount = scriptNode.getFunctionCount();
        for (int i = 0; i != functionCount; i++) {
            FunctionNode functionNode = scriptNode.getFunctionNode(i);
            new OptFunctionNode(functionNode);
            initOptFunctions_r(functionNode);
        }
    }

    private void initScriptNodesData(ScriptNode scriptNode) {
        ObjArray objArray = new ObjArray();
        collectScriptNodes_r(scriptNode, objArray);
        int size = objArray.size();
        this.scriptOrFnNodes = new ScriptNode[size];
        objArray.toArray(this.scriptOrFnNodes);
        this.scriptOrFnIndexes = new ObjToIntMap(size);
        for (int i = 0; i != size; i++) {
            this.scriptOrFnIndexes.put(this.scriptOrFnNodes[i], i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGenerator(ScriptNode scriptNode) {
        return scriptNode.getType() == 109 && ((FunctionNode) scriptNode).isGenerator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void pushUndefined(ClassFileWriter classFileWriter) {
        classFileWriter.add(178, "org/mozilla/javascript/Undefined", "instance", "Ljava/lang/Object;");
    }

    private RuntimeException reportClassFileFormatException(ScriptNode scriptNode, String str) {
        return Context.reportRuntimeError(scriptNode instanceof FunctionNode ? ScriptRuntime.getMessage2("msg.while.compiling.fn", ((FunctionNode) scriptNode).getFunctionName(), str) : ScriptRuntime.getMessage1("msg.while.compiling.script", str), scriptNode.getSourceName(), scriptNode.getLineno(), null, 0);
    }

    private void transform(ScriptNode scriptNode) {
        initOptFunctions_r(scriptNode);
        int optimizationLevel = this.compilerEnv.getOptimizationLevel();
        HashMap hashMap = null;
        HashMap hashMap2 = null;
        if (optimizationLevel > 0) {
            hashMap2 = null;
            if (scriptNode.getType() == 136) {
                int functionCount = scriptNode.getFunctionCount();
                int i = 0;
                while (true) {
                    hashMap2 = hashMap;
                    if (i == functionCount) {
                        break;
                    }
                    OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode, i);
                    hashMap = hashMap;
                    if (optFunctionNode.fnode.getFunctionType() == 1) {
                        String name = optFunctionNode.fnode.getName();
                        hashMap = hashMap;
                        if (name.length() != 0) {
                            hashMap = hashMap;
                            if (hashMap == null) {
                                hashMap = new HashMap();
                            }
                            hashMap.put(name, optFunctionNode);
                        }
                    }
                    i++;
                }
            }
        }
        if (hashMap2 != null) {
            this.directCallTargets = new ObjArray();
        }
        new OptTransformer(hashMap2, this.directCallTargets).transform(scriptNode);
        if (optimizationLevel > 0) {
            new Optimizer().optimize(scriptNode);
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public void captureStackInfo(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    String cleanName(ScriptNode scriptNode) {
        String str;
        if (scriptNode instanceof FunctionNode) {
            Name functionName = ((FunctionNode) scriptNode).getFunctionName();
            str = functionName == null ? "anonymous" : functionName.getIdentifier();
        } else {
            str = "script";
        }
        return str;
    }

    @Override // org.mozilla.javascript.Evaluator
    public Object compile(CompilerEnvirons compilerEnvirons, ScriptNode scriptNode, String str, boolean z) {
        int i;
        synchronized (globalLock) {
            i = globalSerialClassCounter + 1;
            globalSerialClassCounter = i;
        }
        String str2 = "c";
        if (scriptNode.getSourceName().length() > 0) {
            String replaceAll = scriptNode.getSourceName().replaceAll("\\W", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            str2 = replaceAll;
            if (!Character.isJavaIdentifierStart(replaceAll.charAt(0))) {
                str2 = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + replaceAll;
            }
        }
        String str3 = "org.mozilla.javascript.gen." + str2 + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + i;
        return new Object[]{str3, compileToClassFile(compilerEnvirons, str3, scriptNode, str, z)};
    }

    public byte[] compileToClassFile(CompilerEnvirons compilerEnvirons, String str, ScriptNode scriptNode, String str2, boolean z) {
        this.compilerEnv = compilerEnvirons;
        transform(scriptNode);
        FunctionNode functionNode = scriptNode;
        if (z) {
            functionNode = scriptNode.getFunctionNode(0);
        }
        initScriptNodesData(functionNode);
        this.mainClassName = str;
        this.mainClassSignature = ClassFileWriter.classNameToSignature(str);
        try {
            return generateCode(str2);
        } catch (ClassFileWriter.ClassFileFormatException e) {
            throw reportClassFileFormatException(functionNode, e.getMessage());
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public Function createFunctionObject(Context context, Scriptable scriptable, Object obj, Object obj2) {
        try {
            return (NativeFunction) defineClass(obj, obj2).getConstructors()[0].newInstance(scriptable, context, 0);
        } catch (Exception e) {
            throw new RuntimeException("Unable to instantiate compiled class:" + e.toString());
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public Script createScriptObject(Object obj, Object obj2) {
        try {
            return (Script) defineClass(obj, obj2).newInstance();
        } catch (Exception e) {
            throw new RuntimeException("Unable to instantiate compiled class:" + e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getBodyMethodName(ScriptNode scriptNode) {
        return "_c_" + cleanName(scriptNode) + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + getIndex(scriptNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getBodyMethodSignature(ScriptNode scriptNode) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(this.mainClassSignature);
        sb.append("Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;");
        if (scriptNode.getType() == 109) {
            OptFunctionNode optFunctionNode = OptFunctionNode.get(scriptNode);
            if (optFunctionNode.isTargetOfDirectCall()) {
                int paramCount = optFunctionNode.fnode.getParamCount();
                for (int i = 0; i != paramCount; i++) {
                    sb.append("Ljava/lang/Object;D");
                }
            }
        }
        sb.append("[Ljava/lang/Object;)Ljava/lang/Object;");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCompiledRegexpName(ScriptNode scriptNode, int i) {
        return "_re" + getIndex(scriptNode) + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getDirectCtorName(ScriptNode scriptNode) {
        return "_n" + getIndex(scriptNode);
    }

    String getFunctionInitMethodName(OptFunctionNode optFunctionNode) {
        return "_i" + getIndex(optFunctionNode.fnode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getIndex(ScriptNode scriptNode) {
        return this.scriptOrFnIndexes.getExisting(scriptNode);
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getPatchedStack(RhinoException rhinoException, String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.Evaluator
    public List<String> getScriptStack(RhinoException rhinoException) {
        throw new UnsupportedOperationException();
    }

    @Override // org.mozilla.javascript.Evaluator
    public String getSourcePositionFromStack(Context context, int[] iArr) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pushNumberAsObject(ClassFileWriter classFileWriter, double d) {
        if (d == 0.0d) {
            if (1.0d / d > 0.0d) {
                classFileWriter.add(178, "org/mozilla/javascript/optimizer/OptRuntime", "zeroObj", "Ljava/lang/Double;");
                return;
            }
            classFileWriter.addPush(d);
            addDoubleWrap(classFileWriter);
        } else if (d == 1.0d) {
            classFileWriter.add(178, "org/mozilla/javascript/optimizer/OptRuntime", "oneObj", "Ljava/lang/Double;");
        } else if (d == -1.0d) {
            classFileWriter.add(178, "org/mozilla/javascript/optimizer/OptRuntime", "minusOneObj", "Ljava/lang/Double;");
        } else if (d != d) {
            classFileWriter.add(178, "org/mozilla/javascript/ScriptRuntime", "NaNobj", "Ljava/lang/Double;");
        } else if (this.itsConstantListSize >= 2000) {
            classFileWriter.addPush(d);
            addDoubleWrap(classFileWriter);
        } else {
            int i = this.itsConstantListSize;
            int i2 = 0;
            if (i == 0) {
                this.itsConstantList = new double[64];
            } else {
                double[] dArr = this.itsConstantList;
                i2 = 0;
                while (i2 != i && dArr[i2] != d) {
                    i2++;
                }
                if (i == dArr.length) {
                    double[] dArr2 = new double[i * 2];
                    System.arraycopy(this.itsConstantList, 0, dArr2, 0, i);
                    this.itsConstantList = dArr2;
                }
            }
            if (i2 == i) {
                this.itsConstantList[i] = d;
                this.itsConstantListSize = i + 1;
            }
            classFileWriter.add(178, this.mainClassName, "_k" + i2, getStaticConstantWrapperType(d));
        }
    }

    @Override // org.mozilla.javascript.Evaluator
    public void setEvalScriptFlag(Script script) {
        throw new UnsupportedOperationException();
    }

    public void setMainMethodClass(String str) {
        this.mainMethodClass = str;
    }
}
