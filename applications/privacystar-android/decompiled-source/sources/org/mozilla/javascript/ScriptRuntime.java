package org.mozilla.javascript;

import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.Serializable;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.mozilla.javascript.NativeIterator;
import org.mozilla.javascript.TopLevel;
import org.mozilla.javascript.typedarrays.NativeArrayBuffer;
import org.mozilla.javascript.typedarrays.NativeDataView;
import org.mozilla.javascript.v8dtoa.DoubleConversion;
import org.mozilla.javascript.v8dtoa.FastDtoa;
import org.mozilla.javascript.xml.XMLLib;
import org.mozilla.javascript.xml.XMLObject;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptRuntime.class */
public class ScriptRuntime {
    private static final String DEFAULT_NS_TAG = "__default_namespace__";
    public static final int ENUMERATE_ARRAY = 2;
    public static final int ENUMERATE_ARRAY_NO_ITERATOR = 5;
    public static final int ENUMERATE_KEYS = 0;
    public static final int ENUMERATE_KEYS_NO_ITERATOR = 3;
    public static final int ENUMERATE_VALUES = 1;
    public static final int ENUMERATE_VALUES_NO_ITERATOR = 4;
    public static final Class<?> BooleanClass = Kit.classOrNull("java.lang.Boolean");
    public static final Class<?> ByteClass = Kit.classOrNull("java.lang.Byte");
    public static final Class<?> CharacterClass = Kit.classOrNull("java.lang.Character");
    public static final Class<?> ClassClass = Kit.classOrNull("java.lang.Class");
    public static final Class<?> DoubleClass = Kit.classOrNull("java.lang.Double");
    public static final Class<?> FloatClass = Kit.classOrNull("java.lang.Float");
    public static final Class<?> IntegerClass = Kit.classOrNull("java.lang.Integer");
    public static final Class<?> LongClass = Kit.classOrNull("java.lang.Long");
    public static final Class<?> NumberClass = Kit.classOrNull("java.lang.Number");
    public static final Class<?> ObjectClass = Kit.classOrNull("java.lang.Object");
    public static final Class<?> ShortClass = Kit.classOrNull("java.lang.Short");
    public static final Class<?> StringClass = Kit.classOrNull("java.lang.String");
    public static final Class<?> DateClass = Kit.classOrNull("java.util.Date");
    public static final Class<?> ContextClass = Kit.classOrNull("org.mozilla.javascript.Context");
    public static final Class<?> ContextFactoryClass = Kit.classOrNull("org.mozilla.javascript.ContextFactory");
    public static final Class<?> FunctionClass = Kit.classOrNull("org.mozilla.javascript.Function");
    public static final Class<?> ScriptableObjectClass = Kit.classOrNull("org.mozilla.javascript.ScriptableObject");
    public static final Class<Scriptable> ScriptableClass = Scriptable.class;
    public static Locale ROOT_LOCALE = new Locale("");
    private static final Object LIBRARY_SCOPE_KEY = "LIBRARY_SCOPE";
    public static final double NaN = Double.longBitsToDouble(9221120237041090560L);
    public static final double negativeZero = Double.longBitsToDouble(Long.MIN_VALUE);
    public static final Double NaNobj = new Double(NaN);
    public static MessageProvider messageProvider = new DefaultMessageProvider();
    public static final Object[] emptyArgs = new Object[0];
    public static final String[] emptyStrings = new String[0];

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptRuntime$DefaultMessageProvider.class */
    private static class DefaultMessageProvider implements MessageProvider {
        private DefaultMessageProvider() {
        }

        @Override // org.mozilla.javascript.ScriptRuntime.MessageProvider
        public String getMessage(String str, Object[] objArr) {
            Context currentContext = Context.getCurrentContext();
            try {
                return new MessageFormat(ResourceBundle.getBundle("org.mozilla.javascript.resources.Messages", currentContext != null ? currentContext.getLocale() : Locale.getDefault()).getString(str)).format(objArr);
            } catch (MissingResourceException e) {
                throw new RuntimeException("no message resource found for message property " + str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptRuntime$IdEnumeration.class */
    public static class IdEnumeration implements Serializable {
        private static final long serialVersionUID = 1;
        Object currentId;
        boolean enumNumbers;
        int enumType;
        Object[] ids;
        int index;
        Scriptable iterator;
        Scriptable obj;
        ObjToIntMap used;

        private IdEnumeration() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptRuntime$MessageProvider.class */
    public interface MessageProvider {
        String getMessage(String str, Object[] objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptRuntime$NoSuchMethodShim.class */
    public static class NoSuchMethodShim implements Callable {
        String methodName;
        Callable noSuchMethodMethod;

        NoSuchMethodShim(Callable callable, String str) {
            this.noSuchMethodMethod = callable;
            this.methodName = str;
        }

        @Override // org.mozilla.javascript.Callable
        public Object call(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
            return this.noSuchMethodMethod.call(context, scriptable, scriptable2, new Object[]{this.methodName, ScriptRuntime.newArrayLiteral(objArr, null, context, scriptable)});
        }
    }

    public static CharSequence add(CharSequence charSequence, Object obj) {
        return new ConsString(charSequence, toCharSequence(obj));
    }

    public static CharSequence add(Object obj, CharSequence charSequence) {
        return new ConsString(toCharSequence(obj), charSequence);
    }

    public static Object add(Object obj, Object obj2, Context context) {
        Object addValues;
        Object addValues2;
        if ((obj instanceof Number) && (obj2 instanceof Number)) {
            return wrapNumber(((Number) obj).doubleValue() + ((Number) obj2).doubleValue());
        }
        if ((obj instanceof XMLObject) && (addValues2 = ((XMLObject) obj).addValues(context, true, obj2)) != Scriptable.NOT_FOUND) {
            return addValues2;
        }
        if ((obj2 instanceof XMLObject) && (addValues = ((XMLObject) obj2).addValues(context, false, obj)) != Scriptable.NOT_FOUND) {
            return addValues;
        }
        Object obj3 = obj;
        if (obj instanceof Scriptable) {
            obj3 = ((Scriptable) obj).getDefaultValue(null);
        }
        Object obj4 = obj2;
        if (obj2 instanceof Scriptable) {
            obj4 = ((Scriptable) obj2).getDefaultValue(null);
        }
        return ((obj3 instanceof CharSequence) || (obj4 instanceof CharSequence)) ? new ConsString(toCharSequence(obj3), toCharSequence(obj4)) : (!(obj3 instanceof Number) || !(obj4 instanceof Number)) ? wrapNumber(toNumber(obj3) + toNumber(obj4)) : wrapNumber(((Number) obj3).doubleValue() + ((Number) obj4).doubleValue());
    }

    public static void addInstructionCount(Context context, int i) {
        context.instructionCount += i;
        if (context.instructionCount > context.instructionThreshold) {
            context.observeInstructionCount(context.instructionCount);
            context.instructionCount = 0;
        }
    }

    public static Object applyOrCall(boolean z, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object[] objArr2;
        int length = objArr.length;
        Callable callable = getCallable(scriptable2);
        Scriptable objectOrNull = length != 0 ? toObjectOrNull(context, objArr[0], scriptable) : null;
        Scriptable scriptable3 = objectOrNull;
        if (objectOrNull == null) {
            scriptable3 = getTopCallScope(context);
        }
        if (z) {
            objArr2 = length <= 1 ? emptyArgs : getApplyArguments(context, objArr[1]);
        } else if (length <= 1) {
            objArr2 = emptyArgs;
        } else {
            int i = length - 1;
            objArr2 = new Object[i];
            System.arraycopy(objArr, 1, objArr2, 0, i);
        }
        return callable.call(context, scriptable, scriptable3, objArr2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
        if (org.mozilla.javascript.ScriptableObject.hasProperty(r10, r6) == false) goto L_0x0089;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0088, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0089, code lost:
        r8 = r7.getParentScope();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0093, code lost:
        if (r8 != null) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0099, code lost:
        r10 = r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.mozilla.javascript.Scriptable bind(org.mozilla.javascript.Context r4, org.mozilla.javascript.Scriptable r5, java.lang.String r6) {
        /*
            r0 = r5
            org.mozilla.javascript.Scriptable r0 = r0.getParentScope()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x009f
            r0 = 0
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r8
            r5 = r0
        L_0x0014:
            r0 = r7
            r8 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            boolean r0 = r0 instanceof org.mozilla.javascript.NativeWith
            if (r0 == 0) goto L_0x007a
            r0 = r9
            org.mozilla.javascript.Scriptable r0 = r0.getPrototype()
            r9 = r0
            r0 = r9
            boolean r0 = r0 instanceof org.mozilla.javascript.xml.XMLObject
            if (r0 == 0) goto L_0x0055
            r0 = r9
            org.mozilla.javascript.xml.XMLObject r0 = (org.mozilla.javascript.xml.XMLObject) r0
            r9 = r0
            r0 = r9
            r1 = r4
            r2 = r6
            boolean r0 = r0.has(r1, r2)
            if (r0 == 0) goto L_0x0048
            r0 = r9
            return r0
        L_0x0048:
            r0 = r5
            if (r0 != 0) goto L_0x0052
            r0 = r9
            r5 = r0
            goto L_0x0052
        L_0x0052:
            goto L_0x0061
        L_0x0055:
            r0 = r9
            r1 = r6
            boolean r0 = org.mozilla.javascript.ScriptableObject.hasProperty(r0, r1)
            if (r0 == 0) goto L_0x0061
            r0 = r9
            return r0
        L_0x0061:
            r0 = r7
            org.mozilla.javascript.Scriptable r0 = r0.getParentScope()
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0071
            goto L_0x00a3
        L_0x0071:
            r0 = r7
            r9 = r0
            r0 = r8
            r7 = r0
            goto L_0x0014
        L_0x007a:
            r0 = r8
            r7 = r0
            r0 = r10
            r1 = r6
            boolean r0 = org.mozilla.javascript.ScriptableObject.hasProperty(r0, r1)
            if (r0 == 0) goto L_0x0089
            r0 = r10
            return r0
        L_0x0089:
            r0 = r7
            org.mozilla.javascript.Scriptable r0 = r0.getParentScope()
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0099
            goto L_0x00a3
        L_0x0099:
            r0 = r7
            r10 = r0
            goto L_0x007a
        L_0x009f:
            r0 = r5
            r7 = r0
            r0 = 0
            r5 = r0
        L_0x00a3:
            r0 = r7
            r9 = r0
            r0 = r4
            boolean r0 = r0.useDynamicScope
            if (r0 == 0) goto L_0x00b7
            r0 = r4
            org.mozilla.javascript.Scriptable r0 = r0.topCallScope
            r1 = r7
            org.mozilla.javascript.Scriptable r0 = checkDynamicScope(r0, r1)
            r9 = r0
        L_0x00b7:
            r0 = r9
            r1 = r6
            boolean r0 = org.mozilla.javascript.ScriptableObject.hasProperty(r0, r1)
            if (r0 == 0) goto L_0x00c3
            r0 = r9
            return r0
        L_0x00c3:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.bind(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.String):org.mozilla.javascript.Scriptable");
    }

    @Deprecated
    public static Object call(Context context, Object obj, Object obj2, Object[] objArr, Scriptable scriptable) {
        if (!(obj instanceof Function)) {
            throw notFunctionError(toString(obj));
        }
        Function function = (Function) obj;
        Scriptable objectOrNull = toObjectOrNull(context, obj2, scriptable);
        if (objectOrNull != null) {
            return function.call(context, scriptable, objectOrNull, objArr);
        }
        throw undefCallError(objectOrNull, "function");
    }

    public static Ref callRef(Callable callable, Scriptable scriptable, Object[] objArr, Context context) {
        if (callable instanceof RefCallable) {
            RefCallable refCallable = (RefCallable) callable;
            Ref refCall = refCallable.refCall(context, scriptable, objArr);
            if (refCall != null) {
                return refCall;
            }
            throw new IllegalStateException(refCallable.getClass().getName() + ".refCall() returned null");
        }
        throw constructError("ReferenceError", getMessage1("msg.no.ref.from.function", toString(callable)));
    }

    public static Object callSpecial(Context context, Callable callable, Scriptable scriptable, Object[] objArr, Scriptable scriptable2, Scriptable scriptable3, int i, String str, int i2) {
        if (i == 1) {
            if (scriptable.getParentScope() == null && NativeGlobal.isEvalFunction(callable)) {
                return evalSpecial(context, scriptable2, scriptable3, objArr, str, i2);
            }
        } else if (i != 2) {
            throw Kit.codeBug();
        } else if (NativeWith.isWithFunction(callable)) {
            throw Context.reportRuntimeError1("msg.only.from.new", "With");
        }
        return callable.call(context, scriptable2, scriptable, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkDeprecated(Context context, String str) {
        int languageVersion = context.getLanguageVersion();
        if (languageVersion >= 140 || languageVersion == 0) {
            String message1 = getMessage1("msg.deprec.ctor", str);
            if (languageVersion == 0) {
                Context.reportWarning(message1);
                return;
            }
            throw Context.reportRuntimeError(message1);
        }
    }

    static Scriptable checkDynamicScope(Scriptable scriptable, Scriptable scriptable2) {
        Scriptable prototype;
        if (scriptable == scriptable2) {
            return scriptable;
        }
        Scriptable scriptable3 = scriptable;
        do {
            prototype = scriptable3.getPrototype();
            if (prototype == scriptable2) {
                return scriptable;
            }
            scriptable3 = prototype;
        } while (prototype != null);
        return scriptable2;
    }

    public static RegExpProxy checkRegExpProxy(Context context) {
        RegExpProxy regExpProxy = getRegExpProxy(context);
        if (regExpProxy != null) {
            return regExpProxy;
        }
        throw Context.reportRuntimeError0("msg.no.regexp");
    }

    public static boolean cmp_LE(Object obj, Object obj2) {
        double d;
        double d2;
        boolean z = false;
        boolean z2 = false;
        if (!(obj instanceof Number) || !(obj2 instanceof Number)) {
            Object obj3 = obj;
            if (obj instanceof Scriptable) {
                obj3 = ((Scriptable) obj).getDefaultValue(NumberClass);
            }
            Object obj4 = obj2;
            if (obj2 instanceof Scriptable) {
                obj4 = ((Scriptable) obj2).getDefaultValue(NumberClass);
            }
            if (!(obj3 instanceof CharSequence) || !(obj4 instanceof CharSequence)) {
                d2 = toNumber(obj3);
                d = toNumber(obj4);
            } else {
                if (obj3.toString().compareTo(obj4.toString()) <= 0) {
                    z2 = true;
                }
                return z2;
            }
        } else {
            d2 = ((Number) obj).doubleValue();
            d = ((Number) obj2).doubleValue();
        }
        if (d2 <= d) {
            z = true;
        }
        return z;
    }

    public static boolean cmp_LT(Object obj, Object obj2) {
        double d;
        double d2;
        boolean z = false;
        boolean z2 = false;
        if (!(obj instanceof Number) || !(obj2 instanceof Number)) {
            Object obj3 = obj;
            if (obj instanceof Scriptable) {
                obj3 = ((Scriptable) obj).getDefaultValue(NumberClass);
            }
            Object obj4 = obj2;
            if (obj2 instanceof Scriptable) {
                obj4 = ((Scriptable) obj2).getDefaultValue(NumberClass);
            }
            if (!(obj3 instanceof CharSequence) || !(obj4 instanceof CharSequence)) {
                d2 = toNumber(obj3);
                d = toNumber(obj4);
            } else {
                if (obj3.toString().compareTo(obj4.toString()) < 0) {
                    z2 = true;
                }
                return z2;
            }
        } else {
            d2 = ((Number) obj).doubleValue();
            d = ((Number) obj2).doubleValue();
        }
        if (d2 < d) {
            z = true;
        }
        return z;
    }

    public static EcmaError constructError(String str, String str2) {
        int[] iArr = new int[1];
        return constructError(str, str2, Context.getSourcePositionFromStack(iArr), iArr[0], null, 0);
    }

    public static EcmaError constructError(String str, String str2, int i) {
        int[] iArr = new int[1];
        String sourcePositionFromStack = Context.getSourcePositionFromStack(iArr);
        if (iArr[0] != 0) {
            iArr[0] = iArr[0] + i;
        }
        return constructError(str, str2, sourcePositionFromStack, iArr[0], null, 0);
    }

    public static EcmaError constructError(String str, String str2, String str3, int i, String str4, int i2) {
        return new EcmaError(str, str2, str3, i, str4, i2);
    }

    public static Scriptable createFunctionActivation(NativeFunction nativeFunction, Scriptable scriptable, Object[] objArr) {
        return new NativeCall(nativeFunction, scriptable, objArr);
    }

    private static XMLLib currentXMLLib(Context context) {
        if (context.topCallScope == null) {
            throw new IllegalStateException();
        }
        XMLLib xMLLib = context.cachedXMLLib;
        XMLLib xMLLib2 = xMLLib;
        if (xMLLib == null) {
            xMLLib2 = XMLLib.extractFromScope(context.topCallScope);
            if (xMLLib2 == null) {
                throw new IllegalStateException();
            }
            context.cachedXMLLib = xMLLib2;
        }
        return xMLLib2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String defaultObjectToSource(Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        boolean z;
        boolean z2;
        Object obj;
        if (context.iterating == null) {
            context.iterating = new ObjToIntMap(31);
            z2 = true;
            z = false;
        } else {
            z = context.iterating.has(scriptable2);
            z2 = false;
        }
        StringBuilder sb = new StringBuilder(128);
        if (z2) {
            sb.append("(");
        }
        sb.append('{');
        if (!z) {
            try {
                context.iterating.intern(scriptable2);
                Object[] ids = scriptable2.getIds();
                for (int i = 0; i < ids.length; i++) {
                    Object obj2 = ids[i];
                    if (obj2 instanceof Integer) {
                        int intValue = ((Integer) obj2).intValue();
                        obj = scriptable2.get(intValue, scriptable2);
                        if (obj != Scriptable.NOT_FOUND) {
                            if (i > 0) {
                                sb.append(", ");
                            }
                            sb.append(intValue);
                            sb.append(':');
                            sb.append(uneval(context, scriptable, obj));
                        }
                    } else {
                        String str = (String) obj2;
                        obj = scriptable2.get(str, scriptable2);
                        if (obj != Scriptable.NOT_FOUND) {
                            if (i > 0) {
                                sb.append(", ");
                            }
                            if (isValidIdentifierName(str)) {
                                sb.append(str);
                            } else {
                                sb.append('\'');
                                sb.append(escapeString(str, '\''));
                                sb.append('\'');
                            }
                            sb.append(':');
                            sb.append(uneval(context, scriptable, obj));
                        }
                    }
                }
            } catch (Throwable th) {
                if (z2) {
                    context.iterating = null;
                }
                throw th;
            }
        }
        if (z2) {
            context.iterating = null;
        }
        sb.append('}');
        if (z2) {
            sb.append(')');
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String defaultObjectToString(Scriptable scriptable) {
        return "[object " + scriptable.getClassName() + ']';
    }

    @Deprecated
    public static Object delete(Object obj, Object obj2, Context context) {
        return delete(obj, obj2, context, false);
    }

    public static Object delete(Object obj, Object obj2, Context context, Scriptable scriptable, boolean z) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            return wrapBoolean(deleteObjectElem(objectOrNull, obj2, context));
        }
        if (z) {
            return Boolean.TRUE;
        }
        throw undefDeleteError(obj, obj2);
    }

    @Deprecated
    public static Object delete(Object obj, Object obj2, Context context, boolean z) {
        return delete(obj, obj2, context, getTopCallScope(context), z);
    }

    public static boolean deleteObjectElem(Scriptable scriptable, Object obj, Context context) {
        String stringIdOrIndex = toStringIdOrIndex(context, obj);
        if (stringIdOrIndex == null) {
            int lastIndexResult = lastIndexResult(context);
            scriptable.delete(lastIndexResult);
            return !scriptable.has(lastIndexResult, scriptable);
        }
        scriptable.delete(stringIdOrIndex);
        return !scriptable.has(stringIdOrIndex, scriptable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0, types: [double] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object doScriptableIncrDecr(org.mozilla.javascript.Scriptable r5, java.lang.String r6, org.mozilla.javascript.Scriptable r7, java.lang.Object r8, int r9) {
        /*
            r0 = r9
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x000d
            r0 = 1
            r10 = r0
            goto L_0x0010
        L_0x000d:
            r0 = 0
            r10 = r0
        L_0x0010:
            r0 = r8
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x0023
            r0 = r8
            java.lang.Number r0 = (java.lang.Number) r0
            double r0 = r0.doubleValue()
            r11 = r0
            goto L_0x003c
        L_0x0023:
            r0 = r8
            double r0 = toNumber(r0)
            r13 = r0
            r0 = r13
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x003c
            r0 = r13
            java.lang.Number r0 = wrapNumber(r0)
            r8 = r0
            r0 = r13
            r11 = r0
        L_0x003c:
            r0 = r9
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x004c
            r0 = r11
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 + r1
            r11 = r0
            goto L_0x0052
        L_0x004c:
            r0 = r11
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 - r1
            r11 = r0
        L_0x0052:
            r0 = r11
            java.lang.Number r0 = wrapNumber(r0)
            r15 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r15
            r0.put(r1, r2, r3)
            r0 = r10
            if (r0 == 0) goto L_0x006a
            r0 = r8
            return r0
        L_0x006a:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.doScriptableIncrDecr(org.mozilla.javascript.Scriptable, java.lang.String, org.mozilla.javascript.Scriptable, java.lang.Object, int):java.lang.Object");
    }

    public static Object doTopCall(Callable callable, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (scriptable == null) {
            throw new IllegalArgumentException();
        } else if (context.topCallScope != null) {
            throw new IllegalStateException();
        } else {
            context.topCallScope = ScriptableObject.getTopLevelScope(scriptable);
            context.useDynamicScope = context.hasFeature(7);
            try {
                Object doTopCall = context.getFactory().doTopCall(callable, context, scriptable, scriptable2, objArr);
                context.topCallScope = null;
                context.cachedXMLLib = null;
                if (context.currentActivationCall == null) {
                    return doTopCall;
                }
                throw new IllegalStateException();
            } catch (Throwable th) {
                context.topCallScope = null;
                context.cachedXMLLib = null;
                if (context.currentActivationCall != null) {
                    throw new IllegalStateException();
                }
                throw th;
            }
        }
    }

    @Deprecated
    public static Object elemIncrDecr(Object obj, Object obj2, Context context, int i) {
        return elemIncrDecr(obj, obj2, context, getTopCallScope(context), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r13v0, types: [double] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object elemIncrDecr(java.lang.Object r6, java.lang.Object r7, org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, int r10) {
        /*
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            java.lang.Object r0 = getObjectElem(r0, r1, r2, r3)
            r11 = r0
            r0 = r10
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0016
            r0 = 1
            r12 = r0
            goto L_0x0019
        L_0x0016:
            r0 = 0
            r12 = r0
        L_0x0019:
            r0 = r11
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x002e
            r0 = r11
            java.lang.Number r0 = (java.lang.Number) r0
            double r0 = r0.doubleValue()
            r13 = r0
            goto L_0x0049
        L_0x002e:
            r0 = r11
            double r0 = toNumber(r0)
            r15 = r0
            r0 = r15
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0049
            r0 = r15
            java.lang.Number r0 = wrapNumber(r0)
            r11 = r0
            r0 = r15
            r13 = r0
        L_0x0049:
            r0 = r10
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0059
            r0 = r13
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 + r1
            r13 = r0
            goto L_0x005f
        L_0x0059:
            r0 = r13
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 - r1
            r13 = r0
        L_0x005f:
            r0 = r13
            java.lang.Number r0 = wrapNumber(r0)
            r17 = r0
            r0 = r6
            r1 = r7
            r2 = r17
            r3 = r8
            r4 = r9
            java.lang.Object r0 = setObjectElem(r0, r1, r2, r3, r4)
            r0 = r12
            if (r0 == 0) goto L_0x0078
            r0 = r11
            return r0
        L_0x0078:
            r0 = r17
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.elemIncrDecr(java.lang.Object, java.lang.Object, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, int):java.lang.Object");
    }

    public static void enterActivationFunction(Context context, Scriptable scriptable) {
        if (context.topCallScope == null) {
            throw new IllegalStateException();
        }
        NativeCall nativeCall = (NativeCall) scriptable;
        nativeCall.parentActivationCall = context.currentActivationCall;
        context.currentActivationCall = nativeCall;
    }

    public static Scriptable enterDotQuery(Object obj, Scriptable scriptable) {
        if (obj instanceof XMLObject) {
            return ((XMLObject) obj).enterDotQuery(scriptable);
        }
        throw notXmlError(obj);
    }

    public static Scriptable enterWith(Object obj, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            return objectOrNull instanceof XMLObject ? ((XMLObject) objectOrNull).enterWith(scriptable) : new NativeWith(scriptable, objectOrNull);
        }
        throw typeError1("msg.undef.with", toString(obj));
    }

    private static void enumChangeObject(IdEnumeration idEnumeration) {
        Object[] objArr = null;
        while (idEnumeration.obj != null) {
            objArr = idEnumeration.obj.getIds();
            if (objArr.length != 0) {
                break;
            }
            idEnumeration.obj = idEnumeration.obj.getPrototype();
        }
        if (!(idEnumeration.obj == null || idEnumeration.ids == null)) {
            Object[] objArr2 = idEnumeration.ids;
            int length = objArr2.length;
            if (idEnumeration.used == null) {
                idEnumeration.used = new ObjToIntMap(length);
            }
            for (int i = 0; i != length; i++) {
                idEnumeration.used.intern(objArr2[i]);
            }
        }
        idEnumeration.ids = objArr;
        idEnumeration.index = 0;
    }

    public static Object enumId(Object obj, Context context) {
        IdEnumeration idEnumeration = (IdEnumeration) obj;
        if (idEnumeration.iterator != null) {
            return idEnumeration.currentId;
        }
        switch (idEnumeration.enumType) {
            case 0:
            case 3:
                return idEnumeration.currentId;
            case 1:
            case 4:
                return enumValue(obj, context);
            case 2:
            case 5:
                return context.newArray(ScriptableObject.getTopLevelScope(idEnumeration.obj), new Object[]{idEnumeration.currentId, enumValue(obj, context)});
            default:
                throw Kit.codeBug();
        }
    }

    @Deprecated
    public static Object enumInit(Object obj, Context context, int i) {
        return enumInit(obj, context, getTopCallScope(context), i);
    }

    public static Object enumInit(Object obj, Context context, Scriptable scriptable, int i) {
        IdEnumeration idEnumeration = new IdEnumeration();
        idEnumeration.obj = toObjectOrNull(context, obj, scriptable);
        if (idEnumeration.obj == null) {
            return idEnumeration;
        }
        idEnumeration.enumType = i;
        idEnumeration.iterator = null;
        if (!(i == 3 || i == 4 || i == 5)) {
            idEnumeration.iterator = toIterator(context, idEnumeration.obj.getParentScope(), idEnumeration.obj, i == 0);
        }
        if (idEnumeration.iterator == null) {
            enumChangeObject(idEnumeration);
        }
        return idEnumeration;
    }

    @Deprecated
    public static Object enumInit(Object obj, Context context, boolean z) {
        return enumInit(obj, context, z ? 1 : 0);
    }

    public static Boolean enumNext(Object obj) {
        IdEnumeration idEnumeration = (IdEnumeration) obj;
        if (idEnumeration.iterator != null) {
            Object property = ScriptableObject.getProperty(idEnumeration.iterator, "next");
            if (!(property instanceof Callable)) {
                return Boolean.FALSE;
            }
            try {
                idEnumeration.currentId = ((Callable) property).call(Context.getContext(), idEnumeration.iterator.getParentScope(), idEnumeration.iterator, emptyArgs);
                return Boolean.TRUE;
            } catch (JavaScriptException e) {
                if (e.getValue() instanceof NativeIterator.StopIteration) {
                    return Boolean.FALSE;
                }
                throw e;
            }
        } else {
            while (idEnumeration.obj != null) {
                if (idEnumeration.index == idEnumeration.ids.length) {
                    idEnumeration.obj = idEnumeration.obj.getPrototype();
                    enumChangeObject(idEnumeration);
                } else {
                    Object[] objArr = idEnumeration.ids;
                    int i = idEnumeration.index;
                    idEnumeration.index = i + 1;
                    Object obj2 = objArr[i];
                    if (idEnumeration.used == null || !idEnumeration.used.has(obj2)) {
                        if (obj2 instanceof String) {
                            String str = (String) obj2;
                            if (idEnumeration.obj.has(str, idEnumeration.obj)) {
                                idEnumeration.currentId = str;
                                return Boolean.TRUE;
                            }
                        } else {
                            int intValue = ((Number) obj2).intValue();
                            if (idEnumeration.obj.has(intValue, idEnumeration.obj)) {
                                idEnumeration.currentId = idEnumeration.enumNumbers ? Integer.valueOf(intValue) : String.valueOf(intValue);
                                return Boolean.TRUE;
                            }
                        }
                    }
                }
            }
            return Boolean.FALSE;
        }
    }

    public static Object enumValue(Object obj, Context context) {
        Object obj2;
        IdEnumeration idEnumeration = (IdEnumeration) obj;
        String stringIdOrIndex = toStringIdOrIndex(context, idEnumeration.currentId);
        if (stringIdOrIndex == null) {
            obj2 = idEnumeration.obj.get(lastIndexResult(context), idEnumeration.obj);
        } else {
            obj2 = idEnumeration.obj.get(stringIdOrIndex, idEnumeration.obj);
        }
        return obj2;
    }

    /* renamed from: eq */
    public static boolean m217eq(Object obj, Object obj2) {
        Object equivalentValues;
        Object equivalentValues2;
        Object equivalentValues3;
        Object equivalentValues4;
        Object equivalentValues5;
        boolean z = true;
        boolean z2 = true;
        if (obj == null || obj == Undefined.instance) {
            if (obj2 == null || obj2 == Undefined.instance) {
                return true;
            }
            if (!(obj2 instanceof ScriptableObject) || (equivalentValues = ((ScriptableObject) obj2).equivalentValues(obj)) == Scriptable.NOT_FOUND) {
                return false;
            }
            return ((Boolean) equivalentValues).booleanValue();
        } else if (obj instanceof Number) {
            return eqNumber(((Number) obj).doubleValue(), obj2);
        } else {
            if (obj == obj2) {
                return true;
            }
            if (obj instanceof CharSequence) {
                return eqString((CharSequence) obj, obj2);
            }
            double d = 0.0d;
            if (obj instanceof Boolean) {
                boolean booleanValue = ((Boolean) obj).booleanValue();
                if (obj2 instanceof Boolean) {
                    if (booleanValue != ((Boolean) obj2).booleanValue()) {
                        z2 = false;
                    }
                    return z2;
                } else if ((obj2 instanceof ScriptableObject) && (equivalentValues5 = ((ScriptableObject) obj2).equivalentValues(obj)) != Scriptable.NOT_FOUND) {
                    return ((Boolean) equivalentValues5).booleanValue();
                } else {
                    if (booleanValue) {
                        d = 1.0d;
                    }
                    return eqNumber(d, obj2);
                }
            } else if (!(obj instanceof Scriptable)) {
                warnAboutNonJSObject(obj);
                if (obj != obj2) {
                    z = false;
                }
                return z;
            } else if (obj2 instanceof Scriptable) {
                if ((obj instanceof ScriptableObject) && (equivalentValues4 = ((ScriptableObject) obj).equivalentValues(obj2)) != Scriptable.NOT_FOUND) {
                    return ((Boolean) equivalentValues4).booleanValue();
                }
                if ((obj2 instanceof ScriptableObject) && (equivalentValues3 = ((ScriptableObject) obj2).equivalentValues(obj)) != Scriptable.NOT_FOUND) {
                    return ((Boolean) equivalentValues3).booleanValue();
                }
                if (!(obj instanceof Wrapper) || !(obj2 instanceof Wrapper)) {
                    return false;
                }
                Object unwrap = ((Wrapper) obj).unwrap();
                Object unwrap2 = ((Wrapper) obj2).unwrap();
                boolean z3 = true;
                if (unwrap != unwrap2) {
                    z3 = isPrimitive(unwrap) && isPrimitive(unwrap2) && m217eq(unwrap, unwrap2);
                }
                return z3;
            } else if (obj2 instanceof Boolean) {
                if ((obj instanceof ScriptableObject) && (equivalentValues2 = ((ScriptableObject) obj).equivalentValues(obj2)) != Scriptable.NOT_FOUND) {
                    return ((Boolean) equivalentValues2).booleanValue();
                }
                if (((Boolean) obj2).booleanValue()) {
                    d = 1.0d;
                }
                return eqNumber(d, obj);
            } else if (obj2 instanceof Number) {
                return eqNumber(((Number) obj2).doubleValue(), obj);
            } else {
                if (obj2 instanceof CharSequence) {
                    return eqString((CharSequence) obj2, obj);
                }
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean eqNumber(double d, Object obj) {
        while (true) {
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            if (obj == null || obj == Undefined.instance) {
                return false;
            }
            if (obj instanceof Number) {
                if (d == ((Number) obj).doubleValue()) {
                    z3 = true;
                }
                return z3;
            } else if (obj instanceof CharSequence) {
                if (d == toNumber(obj)) {
                    z = true;
                }
                return z;
            } else if (obj instanceof Boolean) {
                if (d == (((Boolean) obj).booleanValue() ? 1.0d : 0.0d)) {
                    z2 = true;
                }
                return z2;
            } else if (obj instanceof Scriptable) {
                if (obj instanceof ScriptableObject) {
                    Object equivalentValues = ((ScriptableObject) obj).equivalentValues(wrapNumber(d));
                    if (equivalentValues != Scriptable.NOT_FOUND) {
                        return ((Boolean) equivalentValues).booleanValue();
                    }
                }
                obj = toPrimitive(obj);
            } else {
                warnAboutNonJSObject(obj);
                return false;
            }
        }
    }

    private static boolean eqString(CharSequence charSequence, Object obj) {
        Object equivalentValues;
        while (true) {
            boolean z = false;
            boolean z2 = false;
            if (obj == null || obj == Undefined.instance) {
                return false;
            }
            if (obj instanceof CharSequence) {
                CharSequence charSequence2 = (CharSequence) obj;
                boolean z3 = false;
                if (charSequence.length() == charSequence2.length()) {
                    z3 = false;
                    if (charSequence.toString().equals(charSequence2.toString())) {
                        z3 = true;
                    }
                }
                return z3;
            } else if (obj instanceof Number) {
                if (toNumber(charSequence.toString()) == ((Number) obj).doubleValue()) {
                    z = true;
                }
                return z;
            } else if (obj instanceof Boolean) {
                if (toNumber(charSequence.toString()) == (((Boolean) obj).booleanValue() ? 1.0d : 0.0d)) {
                    z2 = true;
                }
                return z2;
            } else if (!(obj instanceof Scriptable)) {
                warnAboutNonJSObject(obj);
                return false;
            } else if ((obj instanceof ScriptableObject) && (equivalentValues = ((ScriptableObject) obj).equivalentValues(charSequence.toString())) != Scriptable.NOT_FOUND) {
                return ((Boolean) equivalentValues).booleanValue();
            } else {
                obj = toPrimitive(obj);
            }
        }
    }

    private static RuntimeException errorWithClassName(String str, Object obj) {
        return Context.reportRuntimeError1(str, obj.getClass().getName());
    }

    public static String escapeAttributeValue(Object obj, Context context) {
        return currentXMLLib(context).escapeAttributeValue(obj);
    }

    public static String escapeString(String str) {
        return escapeString(str, '\"');
    }

    public static String escapeString(String str, char c) {
        int i;
        if (!(c == '\"' || c == '\'')) {
            Kit.codeBug();
        }
        StringBuilder sb = null;
        int length = str.length();
        for (int i2 = 0; i2 != length; i2++) {
            char charAt = str.charAt(i2);
            int i3 = 32;
            if (' ' > charAt || charAt > '~' || charAt == c || charAt == '\\') {
                StringBuilder sb2 = sb;
                if (sb == null) {
                    sb2 = new StringBuilder(length + 3);
                    sb2.append(str);
                    sb2.setLength(i2);
                }
                if (charAt != ' ') {
                    if (charAt != '\\') {
                        switch (charAt) {
                            case '\b':
                                i3 = 98;
                                break;
                            case '\t':
                                i3 = 116;
                                break;
                            case '\n':
                                i3 = 110;
                                break;
                            case 11:
                                i3 = 118;
                                break;
                            case '\f':
                                i3 = 102;
                                break;
                            case '\r':
                                i3 = 114;
                                break;
                            default:
                                i3 = -1;
                                break;
                        }
                    } else {
                        i3 = 92;
                    }
                }
                if (i3 >= 0) {
                    sb2.append('\\');
                    sb2.append((char) i3);
                    sb = sb2;
                } else if (charAt == c) {
                    sb2.append('\\');
                    sb2.append(c);
                    sb = sb2;
                } else {
                    if (charAt < 256) {
                        sb2.append("\\x");
                        i = 2;
                    } else {
                        sb2.append("\\u");
                        i = 4;
                    }
                    int i4 = (i - 1) * 4;
                    while (true) {
                        sb = sb2;
                        if (i4 >= 0) {
                            int i5 = (charAt >> i4) & 15;
                            sb2.append((char) (i5 < 10 ? i5 + 48 : i5 + 87));
                            i4 -= 4;
                        }
                    }
                }
            } else {
                sb = sb;
                if (sb != null) {
                    sb.append(charAt);
                    sb = sb;
                }
            }
        }
        if (sb != null) {
            str = sb.toString();
        }
        return str;
    }

    public static String escapeTextValue(Object obj, Context context) {
        return currentXMLLib(context).escapeTextValue(obj);
    }

    public static Object evalSpecial(Context context, Scriptable scriptable, Object obj, Object[] objArr, String str, int i) {
        if (objArr.length < 1) {
            return Undefined.instance;
        }
        Object obj2 = objArr[0];
        if (obj2 instanceof CharSequence) {
            String str2 = str;
            int i2 = i;
            if (str == null) {
                int[] iArr = new int[1];
                str2 = Context.getSourcePositionFromStack(iArr);
                if (str2 != null) {
                    i2 = iArr[0];
                } else {
                    str2 = "";
                    i2 = i;
                }
            }
            String makeUrlForGeneratedScript = makeUrlForGeneratedScript(true, str2, i2);
            ErrorReporter forEval = DefaultErrorReporter.forEval(context.getErrorReporter());
            Evaluator createInterpreter = Context.createInterpreter();
            if (createInterpreter == null) {
                throw new JavaScriptException("Interpreter not present", str2, i2);
            }
            Script compileString = context.compileString(obj2.toString(), createInterpreter, forEval, makeUrlForGeneratedScript, 1, null);
            createInterpreter.setEvalScriptFlag(compileString);
            return ((Callable) compileString).call(context, scriptable, (Scriptable) obj, emptyArgs);
        } else if (context.hasFeature(11) || context.hasFeature(9)) {
            throw Context.reportRuntimeError0("msg.eval.nonstring.strict");
        } else {
            Context.reportWarning(getMessage0("msg.eval.nonstring"));
            return obj2;
        }
    }

    public static void exitActivationFunction(Context context) {
        NativeCall nativeCall = context.currentActivationCall;
        context.currentActivationCall = nativeCall.parentActivationCall;
        nativeCall.parentActivationCall = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static NativeCall findFunctionActivation(Context context, Function function) {
        for (NativeCall nativeCall = context.currentActivationCall; nativeCall != null; nativeCall = nativeCall.parentActivationCall) {
            if (nativeCall.function == function) {
                return nativeCall;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] getApplyArguments(Context context, Object obj) {
        if (obj == null || obj == Undefined.instance) {
            return emptyArgs;
        }
        if ((obj instanceof NativeArray) || (obj instanceof Arguments)) {
            return context.getElements((Scriptable) obj);
        }
        throw typeError0("msg.arg.isnt.array");
    }

    public static Object[] getArrayElements(Scriptable scriptable) {
        long lengthProperty = NativeArray.getLengthProperty(Context.getContext(), scriptable);
        if (lengthProperty > 2147483647L) {
            throw new IllegalArgumentException();
        }
        int i = (int) lengthProperty;
        if (i == 0) {
            return emptyArgs;
        }
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            Object property = ScriptableObject.getProperty(scriptable, i2);
            Object obj = property;
            if (property == Scriptable.NOT_FOUND) {
                obj = Undefined.instance;
            }
            objArr[i2] = obj;
        }
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Callable getCallable(Scriptable scriptable) {
        Callable callable;
        if (scriptable instanceof Callable) {
            callable = (Callable) scriptable;
        } else {
            Object defaultValue = scriptable.getDefaultValue(FunctionClass);
            if (!(defaultValue instanceof Callable)) {
                throw notFunctionError(defaultValue, scriptable);
            }
            callable = (Callable) defaultValue;
        }
        return callable;
    }

    @Deprecated
    public static Callable getElemFunctionAndThis(Object obj, Object obj2, Context context) {
        return getElemFunctionAndThis(obj, obj2, context, getTopCallScope(context));
    }

    public static Callable getElemFunctionAndThis(Object obj, Object obj2, Context context, Scriptable scriptable) {
        String stringIdOrIndex = toStringIdOrIndex(context, obj2);
        if (stringIdOrIndex != null) {
            return getPropFunctionAndThis(obj, stringIdOrIndex, context, scriptable);
        }
        int lastIndexResult = lastIndexResult(context);
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw undefCallError(obj, String.valueOf(lastIndexResult));
        }
        Object property = ScriptableObject.getProperty(objectOrNull, lastIndexResult);
        if (!(property instanceof Callable)) {
            throw notFunctionError(property, obj2);
        }
        storeScriptable(context, objectOrNull);
        return (Callable) property;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Function getExistingCtor(Context context, Scriptable scriptable, String str) {
        Object property = ScriptableObject.getProperty(scriptable, str);
        if (property instanceof Function) {
            return (Function) property;
        }
        if (property == Scriptable.NOT_FOUND) {
            throw Context.reportRuntimeError1("msg.ctor.not.found", str);
        }
        throw Context.reportRuntimeError1("msg.not.ctor", str);
    }

    public static ScriptableObject getGlobal(Context context) {
        Class<?> classOrNull = Kit.classOrNull("org.mozilla.javascript.tools.shell.Global");
        if (classOrNull != null) {
            try {
                return (ScriptableObject) classOrNull.getConstructor(ContextClass).newInstance(context);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
        return new ImporterTopLevel(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getIndexObject(double d) {
        int i = (int) d;
        return ((double) i) == d ? Integer.valueOf(i) : toString(d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object getIndexObject(String str) {
        long indexFromString = indexFromString(str);
        return indexFromString >= 0 ? Integer.valueOf((int) indexFromString) : str;
    }

    public static ScriptableObject getLibraryScopeOrNull(Scriptable scriptable) {
        return (ScriptableObject) ScriptableObject.getTopScopeValue(scriptable, LIBRARY_SCOPE_KEY);
    }

    public static String getMessage(String str, Object[] objArr) {
        return messageProvider.getMessage(str, objArr);
    }

    public static String getMessage0(String str) {
        return getMessage(str, null);
    }

    public static String getMessage1(String str, Object obj) {
        return getMessage(str, new Object[]{obj});
    }

    public static String getMessage2(String str, Object obj, Object obj2) {
        return getMessage(str, new Object[]{obj, obj2});
    }

    public static String getMessage3(String str, Object obj, Object obj2, Object obj3) {
        return getMessage(str, new Object[]{obj, obj2, obj3});
    }

    public static String getMessage4(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        return getMessage(str, new Object[]{obj, obj2, obj3, obj4});
    }

    public static Callable getNameFunctionAndThis(String str, Context context, Scriptable scriptable) {
        Scriptable parentScope = scriptable.getParentScope();
        if (parentScope != null) {
            return (Callable) nameOrFunction(context, scriptable, parentScope, str, true);
        }
        Object obj = topScopeName(context, scriptable, str);
        if (obj instanceof Callable) {
            storeScriptable(context, scriptable);
            return (Callable) obj;
        } else if (obj == Scriptable.NOT_FOUND) {
            throw notFoundError(scriptable, str);
        } else {
            throw notFunctionError(obj, str);
        }
    }

    @Deprecated
    public static Object getObjectElem(Object obj, Object obj2, Context context) {
        return getObjectElem(obj, obj2, context, getTopCallScope(context));
    }

    public static Object getObjectElem(Object obj, Object obj2, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            return getObjectElem(objectOrNull, obj2, context);
        }
        throw undefReadError(obj, obj2);
    }

    public static Object getObjectElem(Scriptable scriptable, Object obj, Context context) {
        Object obj2;
        if (scriptable instanceof XMLObject) {
            obj2 = ((XMLObject) scriptable).get(context, obj);
        } else {
            String stringIdOrIndex = toStringIdOrIndex(context, obj);
            obj2 = stringIdOrIndex == null ? ScriptableObject.getProperty(scriptable, lastIndexResult(context)) : ScriptableObject.getProperty(scriptable, stringIdOrIndex);
        }
        Object obj3 = obj2;
        if (obj2 == Scriptable.NOT_FOUND) {
            obj3 = Undefined.instance;
        }
        return obj3;
    }

    @Deprecated
    public static Object getObjectIndex(Object obj, double d, Context context) {
        return getObjectIndex(obj, d, context, getTopCallScope(context));
    }

    public static Object getObjectIndex(Object obj, double d, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw undefReadError(obj, toString(d));
        }
        int i = (int) d;
        return ((double) i) == d ? getObjectIndex(objectOrNull, i, context) : getObjectProp(objectOrNull, toString(d), context);
    }

    public static Object getObjectIndex(Scriptable scriptable, int i, Context context) {
        Object property = ScriptableObject.getProperty(scriptable, i);
        Object obj = property;
        if (property == Scriptable.NOT_FOUND) {
            obj = Undefined.instance;
        }
        return obj;
    }

    @Deprecated
    public static Object getObjectProp(Object obj, String str, Context context) {
        return getObjectProp(obj, str, context, getTopCallScope(context));
    }

    public static Object getObjectProp(Object obj, String str, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            return getObjectProp(objectOrNull, str, context);
        }
        throw undefReadError(obj, str);
    }

    public static Object getObjectProp(Scriptable scriptable, String str, Context context) {
        Object property = ScriptableObject.getProperty(scriptable, str);
        Object obj = property;
        if (property == Scriptable.NOT_FOUND) {
            if (context.hasFeature(11)) {
                Context.reportWarning(getMessage1("msg.ref.undefined.prop", str));
            }
            obj = Undefined.instance;
        }
        return obj;
    }

    @Deprecated
    public static Object getObjectPropNoWarn(Object obj, String str, Context context) {
        return getObjectPropNoWarn(obj, str, context, getTopCallScope(context));
    }

    public static Object getObjectPropNoWarn(Object obj, String str, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw undefReadError(obj, str);
        }
        Object property = ScriptableObject.getProperty(objectOrNull, str);
        return property == Scriptable.NOT_FOUND ? Undefined.instance : property;
    }

    @Deprecated
    public static Callable getPropFunctionAndThis(Object obj, String str, Context context) {
        return getPropFunctionAndThis(obj, str, context, getTopCallScope(context));
    }

    public static Callable getPropFunctionAndThis(Object obj, String str, Context context, Scriptable scriptable) {
        return getPropFunctionAndThisHelper(obj, str, context, toObjectOrNull(context, obj, scriptable));
    }

    private static Callable getPropFunctionAndThisHelper(Object obj, String str, Context context, Scriptable scriptable) {
        if (scriptable == null) {
            throw undefCallError(obj, str);
        }
        Object property = ScriptableObject.getProperty(scriptable, str);
        Object obj2 = property;
        if (!(property instanceof Callable)) {
            Object property2 = ScriptableObject.getProperty(scriptable, "__noSuchMethod__");
            obj2 = property;
            if (property2 instanceof Callable) {
                obj2 = new NoSuchMethodShim((Callable) property2, str);
            }
        }
        if (!(obj2 instanceof Callable)) {
            throw notFunctionError(scriptable, obj2, str);
        }
        storeScriptable(context, scriptable);
        return (Callable) obj2;
    }

    public static RegExpProxy getRegExpProxy(Context context) {
        return context.getRegExpProxy();
    }

    public static Scriptable getTopCallScope(Context context) {
        Scriptable scriptable = context.topCallScope;
        if (scriptable != null) {
            return scriptable;
        }
        throw new IllegalStateException();
    }

    public static Object getTopLevelProp(Scriptable scriptable, String str) {
        return ScriptableObject.getProperty(ScriptableObject.getTopLevelScope(scriptable), str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] getTopPackageNames() {
        return "Dalvik".equals(System.getProperty("java.vm.name")) ? new String[]{"java", "javax", "org", "com", "edu", "net", AbstractSpiCall.ANDROID_CLIENT_TYPE} : new String[]{"java", "javax", "org", "com", "edu", "net"};
    }

    public static Callable getValueFunctionAndThis(Object obj, Context context) {
        if (!(obj instanceof Callable)) {
            throw notFunctionError(obj);
        }
        Callable callable = (Callable) obj;
        Scriptable scriptable = null;
        if (callable instanceof Scriptable) {
            scriptable = ((Scriptable) callable).getParentScope();
        }
        Scriptable scriptable2 = scriptable;
        if (scriptable == null) {
            if (context.topCallScope == null) {
                throw new IllegalStateException();
            }
            scriptable2 = context.topCallScope;
        }
        Scriptable scriptable3 = scriptable2;
        if (scriptable2.getParentScope() != null) {
            if (scriptable2 instanceof NativeWith) {
                scriptable3 = scriptable2;
            } else {
                scriptable3 = scriptable2;
                if (scriptable2 instanceof NativeCall) {
                    scriptable3 = ScriptableObject.getTopLevelScope(scriptable2);
                }
            }
        }
        storeScriptable(context, scriptable3);
        return callable;
    }

    public static boolean hasObjectElem(Scriptable scriptable, Object obj, Context context) {
        String stringIdOrIndex = toStringIdOrIndex(context, obj);
        return stringIdOrIndex == null ? ScriptableObject.hasProperty(scriptable, lastIndexResult(context)) : ScriptableObject.hasProperty(scriptable, stringIdOrIndex);
    }

    public static boolean hasTopCall(Context context) {
        return context.topCallScope != null;
    }

    /* renamed from: in */
    public static boolean m216in(Object obj, Object obj2, Context context) {
        if (obj2 instanceof Scriptable) {
            return hasObjectElem((Scriptable) obj2, obj, context);
        }
        throw typeError0("msg.in.not.object");
    }

    public static long indexFromString(String str) {
        int i;
        boolean z;
        int length = str.length();
        if (length <= 0) {
            return -1L;
        }
        int i2 = 0;
        int i3 = 0;
        char charAt = str.charAt(0);
        if (charAt != '-' || length <= 1) {
            z = false;
            i = 0;
        } else {
            charAt = str.charAt(1);
            if (charAt == '0') {
                return -1L;
            }
            z = true;
            i = 1;
        }
        int i4 = charAt - '0';
        if (i4 < 0 || i4 > 9) {
            return -1L;
        }
        if (length > (z ? 11 : 10)) {
            return -1L;
        }
        int i5 = -i4;
        int i6 = i + 1;
        int i7 = i4;
        int i8 = i6;
        int i9 = i5;
        if (i5 != 0) {
            i7 = i4;
            while (true) {
                i2 = i3;
                i8 = i6;
                i9 = i5;
                if (i6 == length) {
                    break;
                }
                int charAt2 = str.charAt(i6) - '0';
                i2 = i3;
                i7 = charAt2;
                i8 = i6;
                i9 = i5;
                if (charAt2 < 0) {
                    break;
                }
                i2 = i3;
                i7 = charAt2;
                i8 = i6;
                i9 = i5;
                if (charAt2 > 9) {
                    break;
                }
                i6++;
                i5 = (i5 * 10) - charAt2;
                i3 = i5;
                i7 = charAt2;
            }
        }
        if (i8 != length) {
            return -1L;
        }
        if (i2 <= -214748364) {
            if (i2 != -214748364) {
                return -1L;
            }
            if (i7 > (z ? 8 : 7)) {
                return -1L;
            }
        }
        if (!z) {
            i9 = -i9;
        }
        return BodyPartID.bodyIdMax & i9;
    }

    public static void initFunction(Context context, Scriptable scriptable, NativeFunction nativeFunction, int i, boolean z) {
        if (i == 1) {
            String functionName = nativeFunction.getFunctionName();
            if (functionName != null && functionName.length() != 0) {
                if (!z) {
                    ScriptableObject.defineProperty(scriptable, functionName, nativeFunction, 4);
                } else {
                    scriptable.put(functionName, scriptable, nativeFunction);
                }
            }
        } else if (i == 3) {
            String functionName2 = nativeFunction.getFunctionName();
            if (functionName2 != null && functionName2.length() != 0) {
                while (scriptable instanceof NativeWith) {
                    scriptable = scriptable.getParentScope();
                }
                scriptable.put(functionName2, scriptable, nativeFunction);
            }
        } else {
            throw Kit.codeBug();
        }
    }

    public static ScriptableObject initSafeStandardObjects(Context context, ScriptableObject scriptableObject, boolean z) {
        ScriptableObject scriptableObject2 = scriptableObject;
        if (scriptableObject == null) {
            scriptableObject2 = new NativeObject();
        }
        scriptableObject2.associateValue(LIBRARY_SCOPE_KEY, scriptableObject2);
        new ClassCache().associate(scriptableObject2);
        BaseFunction.init(scriptableObject2, z);
        NativeObject.init(scriptableObject2, z);
        Scriptable objectPrototype = ScriptableObject.getObjectPrototype(scriptableObject2);
        ScriptableObject.getClassPrototype(scriptableObject2, "Function").setPrototype(objectPrototype);
        if (scriptableObject2.getPrototype() == null) {
            scriptableObject2.setPrototype(objectPrototype);
        }
        NativeError.init(scriptableObject2, z);
        NativeGlobal.init(context, scriptableObject2, z);
        NativeArray.init(scriptableObject2, z);
        if (context.getOptimizationLevel() > 0) {
            NativeArray.setMaximumInitialCapacity(200000);
        }
        NativeString.init(scriptableObject2, z);
        NativeBoolean.init(scriptableObject2, z);
        NativeNumber.init(scriptableObject2, z);
        NativeDate.init(scriptableObject2, z);
        NativeMath.init(scriptableObject2, z);
        NativeJSON.init(scriptableObject2, z);
        NativeWith.init(scriptableObject2, z);
        NativeCall.init(scriptableObject2, z);
        NativeScript.init(scriptableObject2, z);
        NativeIterator.init(scriptableObject2, z);
        boolean z2 = context.hasFeature(6) && context.getE4xImplementationFactory() != null;
        new LazilyLoadedCtor(scriptableObject2, "RegExp", "org.mozilla.javascript.regexp.NativeRegExp", z, true);
        new LazilyLoadedCtor(scriptableObject2, "Continuation", "org.mozilla.javascript.NativeContinuation", z, true);
        if (z2) {
            String implementationClassName = context.getE4xImplementationFactory().getImplementationClassName();
            new LazilyLoadedCtor(scriptableObject2, "XML", implementationClassName, z, true);
            new LazilyLoadedCtor(scriptableObject2, "XMLList", implementationClassName, z, true);
            new LazilyLoadedCtor(scriptableObject2, "Namespace", implementationClassName, z, true);
            new LazilyLoadedCtor(scriptableObject2, "QName", implementationClassName, z, true);
        }
        if (context.getLanguageVersion() >= 180 && context.hasFeature(14)) {
            new LazilyLoadedCtor(scriptableObject2, NativeArrayBuffer.CLASS_NAME, "org.mozilla.javascript.typedarrays.NativeArrayBuffer", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Int8Array", "org.mozilla.javascript.typedarrays.NativeInt8Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Uint8Array", "org.mozilla.javascript.typedarrays.NativeUint8Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Uint8ClampedArray", "org.mozilla.javascript.typedarrays.NativeUint8ClampedArray", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Int16Array", "org.mozilla.javascript.typedarrays.NativeInt16Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Uint16Array", "org.mozilla.javascript.typedarrays.NativeUint16Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Int32Array", "org.mozilla.javascript.typedarrays.NativeInt32Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Uint32Array", "org.mozilla.javascript.typedarrays.NativeUint32Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Float32Array", "org.mozilla.javascript.typedarrays.NativeFloat32Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, "Float64Array", "org.mozilla.javascript.typedarrays.NativeFloat64Array", z, true);
            new LazilyLoadedCtor(scriptableObject2, NativeDataView.CLASS_NAME, "org.mozilla.javascript.typedarrays.NativeDataView", z, true);
        }
        if (scriptableObject2 instanceof TopLevel) {
            ((TopLevel) scriptableObject2).cacheBuiltins();
        }
        return scriptableObject2;
    }

    public static void initScript(NativeFunction nativeFunction, Scriptable scriptable, Context context, Scriptable scriptable2, boolean z) {
        int i;
        if (context.topCallScope == null) {
            throw new IllegalStateException();
        }
        int paramAndVarCount = nativeFunction.getParamAndVarCount();
        if (paramAndVarCount != 0) {
            Scriptable scriptable3 = scriptable2;
            while (true) {
                i = paramAndVarCount;
                if (scriptable3 instanceof NativeWith) {
                    scriptable3 = scriptable3.getParentScope();
                }
            }
            while (true) {
                int i2 = i - 1;
                if (i != 0) {
                    String paramOrVarName = nativeFunction.getParamOrVarName(i2);
                    boolean paramOrVarConst = nativeFunction.getParamOrVarConst(i2);
                    if (ScriptableObject.hasProperty(scriptable2, paramOrVarName)) {
                        ScriptableObject.redefineProperty(scriptable2, paramOrVarName, paramOrVarConst);
                    } else if (paramOrVarConst) {
                        ScriptableObject.defineConstProperty(scriptable3, paramOrVarName);
                    } else if (!z) {
                        ScriptableObject.defineProperty(scriptable3, paramOrVarName, Undefined.instance, 4);
                    } else {
                        scriptable3.put(paramOrVarName, scriptable3, Undefined.instance);
                    }
                    i = i2;
                } else {
                    return;
                }
            }
        }
    }

    public static ScriptableObject initStandardObjects(Context context, ScriptableObject scriptableObject, boolean z) {
        ScriptableObject initSafeStandardObjects = initSafeStandardObjects(context, scriptableObject, z);
        new LazilyLoadedCtor(initSafeStandardObjects, "Packages", "org.mozilla.javascript.NativeJavaTopPackage", z, true);
        new LazilyLoadedCtor(initSafeStandardObjects, "getClass", "org.mozilla.javascript.NativeJavaTopPackage", z, true);
        new LazilyLoadedCtor(initSafeStandardObjects, "JavaAdapter", "org.mozilla.javascript.JavaAdapter", z, true);
        new LazilyLoadedCtor(initSafeStandardObjects, "JavaImporter", "org.mozilla.javascript.ImporterTopLevel", z, true);
        for (String str : getTopPackageNames()) {
            new LazilyLoadedCtor(initSafeStandardObjects, str, "org.mozilla.javascript.NativeJavaTopPackage", z, true);
        }
        return initSafeStandardObjects;
    }

    public static boolean instanceOf(Object obj, Object obj2, Context context) {
        if (!(obj2 instanceof Scriptable)) {
            throw typeError0("msg.instanceof.not.object");
        } else if (!(obj instanceof Scriptable)) {
            return false;
        } else {
            return ((Scriptable) obj2).hasInstance((Scriptable) obj);
        }
    }

    public static boolean isArrayObject(Object obj) {
        return (obj instanceof NativeArray) || (obj instanceof Arguments);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGeneratedScript(String str) {
        return str.indexOf("(eval)") >= 0 || str.indexOf("(Function)") >= 0;
    }

    public static boolean isJSLineTerminator(int i) {
        boolean z = false;
        if ((57296 & i) != 0) {
            return false;
        }
        if (i == 10 || i == 13 || i == 8232 || i == 8233) {
            z = true;
        }
        return z;
    }

    public static boolean isJSWhitespaceOrLineTerminator(int i) {
        return isStrWhiteSpaceChar(i) || isJSLineTerminator(i);
    }

    public static boolean isPrimitive(Object obj) {
        return obj == null || obj == Undefined.instance || (obj instanceof Number) || (obj instanceof String) || (obj instanceof Boolean);
    }

    public static boolean isRhinoRuntimeType(Class<?> cls) {
        boolean z = false;
        boolean z2 = false;
        if (cls.isPrimitive()) {
            if (cls != Character.TYPE) {
                z2 = true;
            }
            return z2;
        }
        if (cls == StringClass || cls == BooleanClass || NumberClass.isAssignableFrom(cls) || ScriptableClass.isAssignableFrom(cls)) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSpecialProperty(String str) {
        return str.equals("__proto__") || str.equals("__parent__");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isStrWhiteSpaceChar(int i) {
        boolean z = true;
        if (i == 32 || i == 160 || i == 65279) {
            return true;
        }
        switch (i) {
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                return true;
            default:
                switch (i) {
                    case 8232:
                    case 8233:
                        return true;
                    default:
                        if (Character.getType(i) != 12) {
                            z = false;
                        }
                        return z;
                }
        }
    }

    static boolean isValidIdentifierName(String str) {
        int length = str.length();
        if (length == 0 || !Character.isJavaIdentifierStart(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i != length; i++) {
            if (!Character.isJavaIdentifierPart(str.charAt(i))) {
                return false;
            }
        }
        return !TokenStream.isKeyword(str);
    }

    private static boolean isVisible(Context context, Object obj) {
        ClassShutter classShutter = context.getClassShutter();
        return classShutter == null || classShutter.visibleToScripts(obj.getClass().getName());
    }

    public static boolean jsDelegatesTo(Scriptable scriptable, Scriptable scriptable2) {
        for (Scriptable prototype = scriptable.getPrototype(); prototype != null; prototype = prototype.getPrototype()) {
            if (prototype.equals(scriptable2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int lastIndexResult(Context context) {
        return context.scratchIndex;
    }

    public static Scriptable lastStoredScriptable(Context context) {
        Scriptable scriptable = context.scratchScriptable;
        context.scratchScriptable = null;
        return scriptable;
    }

    public static long lastUint32Result(Context context) {
        long j = context.scratchUint32;
        if ((j >>> 32) == 0) {
            return j;
        }
        throw new IllegalStateException();
    }

    public static Scriptable leaveDotQuery(Scriptable scriptable) {
        return ((NativeWith) scriptable).getParentScope();
    }

    public static Scriptable leaveWith(Scriptable scriptable) {
        return ((NativeWith) scriptable).getParentScope();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String makeUrlForGeneratedScript(boolean z, String str, int i) {
        if (z) {
            return str + '#' + i + "(eval)";
        }
        return str + '#' + i + "(Function)";
    }

    public static Ref memberRef(Object obj, Object obj2, Object obj3, Context context, int i) {
        if (obj instanceof XMLObject) {
            return ((XMLObject) obj).memberRef(context, obj2, obj3, i);
        }
        throw notXmlError(obj);
    }

    public static Ref memberRef(Object obj, Object obj2, Context context, int i) {
        if (obj instanceof XMLObject) {
            return ((XMLObject) obj).memberRef(context, obj2, i);
        }
        throw notXmlError(obj);
    }

    public static Object name(Context context, Scriptable scriptable, String str) {
        Scriptable parentScope = scriptable.getParentScope();
        if (parentScope != null) {
            return nameOrFunction(context, scriptable, parentScope, str, false);
        }
        Object obj = topScopeName(context, scriptable, str);
        if (obj != Scriptable.NOT_FOUND) {
            return obj;
        }
        throw notFoundError(scriptable, str);
    }

    @Deprecated
    public static Object nameIncrDecr(Scriptable scriptable, String str, int i) {
        return nameIncrDecr(scriptable, str, Context.getContext(), i);
    }

    public static Object nameIncrDecr(Scriptable scriptable, String str, Context context, int i) {
        Scriptable parentScope;
        Scriptable prototype;
        Scriptable scriptable2 = scriptable;
        do {
            Scriptable scriptable3 = scriptable2;
            if (context.useDynamicScope) {
                scriptable3 = scriptable2;
                if (scriptable2.getParentScope() == null) {
                    scriptable3 = checkDynamicScope(context.topCallScope, scriptable2);
                }
            }
            Scriptable scriptable4 = scriptable3;
            do {
                if ((scriptable4 instanceof NativeWith) && (scriptable4.getPrototype() instanceof XMLObject)) {
                    break;
                }
                Object obj = scriptable4.get(str, scriptable3);
                if (obj != Scriptable.NOT_FOUND) {
                    return doScriptableIncrDecr(scriptable4, str, scriptable3, obj, i);
                }
                prototype = scriptable4.getPrototype();
                scriptable4 = prototype;
            } while (prototype != null);
            parentScope = scriptable3.getParentScope();
            scriptable2 = parentScope;
        } while (parentScope != null);
        throw notFoundError(parentScope, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0114 A[LOOP:0: B:3:0x0006->B:47:0x0114, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object nameOrFunction(org.mozilla.javascript.Context r4, org.mozilla.javascript.Scriptable r5, org.mozilla.javascript.Scriptable r5, java.lang.String r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.nameOrFunction(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.String, boolean):java.lang.Object");
    }

    public static Ref nameRef(Object obj, Object obj2, Context context, Scriptable scriptable, int i) {
        return currentXMLLib(context).nameRef(context, obj, obj2, scriptable, i);
    }

    public static Ref nameRef(Object obj, Context context, Scriptable scriptable, int i) {
        return currentXMLLib(context).nameRef(context, obj, scriptable, i);
    }

    public static Scriptable newArrayLiteral(Object[] objArr, int[] iArr, Context context, Scriptable scriptable) {
        int length = objArr.length;
        int length2 = iArr != null ? iArr.length : 0;
        int i = length + length2;
        if (i <= 1 || length2 * 2 >= i) {
            Scriptable newArray = context.newArray(scriptable, i);
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 != i; i4++) {
                if (i2 == length2 || iArr[i2] != i4) {
                    ScriptableObject.putProperty(newArray, i4, objArr[i3]);
                    i3++;
                } else {
                    i2++;
                }
            }
            return newArray;
        }
        if (length2 != 0) {
            Object[] objArr2 = new Object[i];
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 != i; i7++) {
                if (i5 == length2 || iArr[i5] != i7) {
                    objArr2[i7] = objArr[i6];
                    i6++;
                } else {
                    objArr2[i7] = Scriptable.NOT_FOUND;
                    i5++;
                }
            }
            objArr = objArr2;
        }
        return context.newArray(scriptable, objArr);
    }

    public static Scriptable newBuiltinObject(Context context, Scriptable scriptable, TopLevel.Builtins builtins, Object[] objArr) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        Function builtinCtor = TopLevel.getBuiltinCtor(context, topLevelScope, builtins);
        Object[] objArr2 = objArr;
        if (objArr == null) {
            objArr2 = emptyArgs;
        }
        return builtinCtor.construct(context, topLevelScope, objArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0192  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.mozilla.javascript.Scriptable newCatchScope(java.lang.Throwable r8, org.mozilla.javascript.Scriptable r9, java.lang.String r10, org.mozilla.javascript.Context r11, org.mozilla.javascript.Scriptable r12) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.newCatchScope(java.lang.Throwable, org.mozilla.javascript.Scriptable, java.lang.String, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable):org.mozilla.javascript.Scriptable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Scriptable newNativeError(Context context, Scriptable scriptable, TopLevel.NativeErrors nativeErrors, Object[] objArr) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        Function nativeErrorCtor = TopLevel.getNativeErrorCtor(context, topLevelScope, nativeErrors);
        Object[] objArr2 = objArr;
        if (objArr == null) {
            objArr2 = emptyArgs;
        }
        return nativeErrorCtor.construct(context, topLevelScope, objArr2);
    }

    public static Scriptable newObject(Object obj, Context context, Scriptable scriptable, Object[] objArr) {
        if (obj instanceof Function) {
            return ((Function) obj).construct(context, scriptable, objArr);
        }
        throw notFunctionError(obj);
    }

    public static Scriptable newObject(Context context, Scriptable scriptable, String str, Object[] objArr) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        Function existingCtor = getExistingCtor(context, topLevelScope, str);
        Object[] objArr2 = objArr;
        if (objArr == null) {
            objArr2 = emptyArgs;
        }
        return existingCtor.construct(context, topLevelScope, objArr2);
    }

    @Deprecated
    public static Scriptable newObjectLiteral(Object[] objArr, Object[] objArr2, Context context, Scriptable scriptable) {
        return newObjectLiteral(objArr, objArr2, null, context, scriptable);
    }

    public static Scriptable newObjectLiteral(Object[] objArr, Object[] objArr2, int[] iArr, Context context, Scriptable scriptable) {
        Scriptable newObject = context.newObject(scriptable);
        int length = objArr.length;
        for (int i = 0; i != length; i++) {
            Object obj = objArr[i];
            int i2 = iArr == null ? 0 : iArr[i];
            Object obj2 = objArr2[i];
            if (!(obj instanceof String)) {
                newObject.put(((Integer) obj).intValue(), newObject, obj2);
            } else if (i2 == 0) {
                String str = (String) obj;
                if (isSpecialProperty(str)) {
                    specialRef(newObject, str, context, scriptable).set(context, scriptable, obj2);
                } else {
                    newObject.put(str, newObject, obj2);
                }
            } else {
                ScriptableObject scriptableObject = (ScriptableObject) newObject;
                Callable callable = (Callable) obj2;
                boolean z = true;
                if (i2 != 1) {
                    z = false;
                }
                scriptableObject.setGetterOrSetter((String) obj, 0, callable, z);
            }
        }
        return newObject;
    }

    public static Object newSpecial(Context context, Object obj, Object[] objArr, Scriptable scriptable, int i) {
        if (i == 1) {
            if (NativeGlobal.isEvalFunction(obj)) {
                throw typeError1("msg.not.ctor", "eval");
            }
        } else if (i != 2) {
            throw Kit.codeBug();
        } else if (NativeWith.isWithFunction(obj)) {
            return NativeWith.newWithSpecial(context, scriptable, objArr);
        }
        return newObject(obj, context, scriptable, objArr);
    }

    public static RuntimeException notFoundError(Scriptable scriptable, String str) {
        throw constructError("ReferenceError", getMessage1("msg.is.not.defined", str));
    }

    public static RuntimeException notFunctionError(Object obj) {
        return notFunctionError(obj, obj);
    }

    public static RuntimeException notFunctionError(Object obj, Object obj2) {
        String obj3 = obj2 == null ? "null" : obj2.toString();
        return obj == Scriptable.NOT_FOUND ? typeError1("msg.function.not.found", obj3) : typeError2("msg.isnt.function", obj3, typeof(obj));
    }

    public static RuntimeException notFunctionError(Object obj, Object obj2, String str) {
        int indexOf;
        String scriptRuntime = toString(obj);
        String str2 = scriptRuntime;
        if (obj instanceof NativeFunction) {
            str2 = scriptRuntime;
            if (scriptRuntime.indexOf(123, scriptRuntime.indexOf(41)) > -1) {
                str2 = scriptRuntime.substring(0, indexOf + 1) + "...}";
            }
        }
        return obj2 == Scriptable.NOT_FOUND ? typeError2("msg.function.not.found.in", str, str2) : typeError3("msg.isnt.function.in", str, str2, typeof(obj2));
    }

    private static RuntimeException notXmlError(Object obj) {
        throw typeError1("msg.isnt.xml.object", toString(obj));
    }

    public static String numberToString(double d, int i) {
        if (i < 2 || i > 36) {
            throw Context.reportRuntimeError1("msg.bad.radix", Integer.toString(i));
        } else if (d != d) {
            return "NaN";
        } else {
            if (d == Double.POSITIVE_INFINITY) {
                return "Infinity";
            }
            if (d == Double.NEGATIVE_INFINITY) {
                return "-Infinity";
            }
            if (d == 0.0d) {
                return "0";
            }
            if (i != 10) {
                return DToA.JS_dtobasestr(i, d);
            }
            String numberToString = FastDtoa.numberToString(d);
            if (numberToString != null) {
                return numberToString;
            }
            StringBuilder sb = new StringBuilder();
            DToA.JS_dtostr(sb, 0, 0, d);
            return sb.toString();
        }
    }

    public static Object[] padArguments(Object[] objArr, int i) {
        int i2;
        if (i < objArr.length) {
            return objArr;
        }
        Object[] objArr2 = new Object[i];
        int i3 = 0;
        while (true) {
            if (i3 < objArr.length) {
                objArr2[i3] = objArr[i3];
                i3++;
            }
        }
        for (i2 = i3; i2 < i; i2++) {
            objArr2[i2] = Undefined.instance;
        }
        return objArr2;
    }

    @Deprecated
    public static Object propIncrDecr(Object obj, String str, Context context, int i) {
        return propIncrDecr(obj, str, context, getTopCallScope(context), i);
    }

    public static Object propIncrDecr(Object obj, String str, Context context, Scriptable scriptable, int i) {
        Scriptable prototype;
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw undefReadError(obj, str);
        }
        Scriptable scriptable2 = objectOrNull;
        do {
            Object obj2 = scriptable2.get(str, objectOrNull);
            if (obj2 != Scriptable.NOT_FOUND) {
                return doScriptableIncrDecr(scriptable2, str, objectOrNull, obj2, i);
            }
            prototype = scriptable2.getPrototype();
            scriptable2 = prototype;
        } while (prototype != null);
        objectOrNull.put(str, objectOrNull, NaNobj);
        return NaNobj;
    }

    public static Object refDel(Ref ref, Context context) {
        return wrapBoolean(ref.delete(context));
    }

    public static Object refGet(Ref ref, Context context) {
        return ref.get(context);
    }

    @Deprecated
    public static Object refIncrDecr(Ref ref, Context context, int i) {
        return refIncrDecr(ref, context, getTopCallScope(context), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0, types: [double] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object refIncrDecr(org.mozilla.javascript.Ref r5, org.mozilla.javascript.Context r6, org.mozilla.javascript.Scriptable r7, int r8) {
        /*
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            r9 = r0
            r0 = r8
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0013
            r0 = 1
            r10 = r0
            goto L_0x0016
        L_0x0013:
            r0 = 0
            r10 = r0
        L_0x0016:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Number
            if (r0 == 0) goto L_0x002b
            r0 = r9
            java.lang.Number r0 = (java.lang.Number) r0
            double r0 = r0.doubleValue()
            r11 = r0
            goto L_0x0046
        L_0x002b:
            r0 = r9
            double r0 = toNumber(r0)
            r13 = r0
            r0 = r13
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0046
            r0 = r13
            java.lang.Number r0 = wrapNumber(r0)
            r9 = r0
            r0 = r13
            r11 = r0
        L_0x0046:
            r0 = r8
            r1 = 1
            r0 = r0 & r1
            if (r0 != 0) goto L_0x0055
            r0 = r11
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 + r1
            r11 = r0
            goto L_0x005b
        L_0x0055:
            r0 = r11
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 - r1
            r11 = r0
        L_0x005b:
            r0 = r11
            java.lang.Number r0 = wrapNumber(r0)
            r15 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r15
            java.lang.Object r0 = r0.set(r1, r2, r3)
            r0 = r10
            if (r0 == 0) goto L_0x0073
            r0 = r9
            return r0
        L_0x0073:
            r0 = r15
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.refIncrDecr(org.mozilla.javascript.Ref, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, int):java.lang.Object");
    }

    @Deprecated
    public static Object refSet(Ref ref, Object obj, Context context) {
        return refSet(ref, obj, context, getTopCallScope(context));
    }

    public static Object refSet(Ref ref, Object obj, Context context, Scriptable scriptable) {
        return ref.set(context, scriptable, obj);
    }

    public static Object searchDefaultNamespace(Context context) {
        Object obj;
        NativeCall nativeCall = context.currentActivationCall;
        Scriptable scriptable = nativeCall;
        if (nativeCall == null) {
            scriptable = getTopCallScope(context);
        }
        while (true) {
            Scriptable parentScope = scriptable.getParentScope();
            if (parentScope == null) {
                Object property = ScriptableObject.getProperty(scriptable, DEFAULT_NS_TAG);
                obj = property;
                if (property == Scriptable.NOT_FOUND) {
                    return null;
                }
            } else {
                Object obj2 = scriptable.get(DEFAULT_NS_TAG, scriptable);
                if (obj2 != Scriptable.NOT_FOUND) {
                    obj = obj2;
                    break;
                }
                scriptable = parentScope;
            }
        }
        return obj;
    }

    public static void setBuiltinProtoAndParent(ScriptableObject scriptableObject, Scriptable scriptable, TopLevel.Builtins builtins) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        scriptableObject.setParentScope(topLevelScope);
        scriptableObject.setPrototype(TopLevel.getBuiltinPrototype(topLevelScope, builtins));
    }

    public static Object setConst(Scriptable scriptable, Object obj, Context context, String str) {
        if (scriptable instanceof XMLObject) {
            scriptable.put(str, scriptable, obj);
        } else {
            ScriptableObject.putConstProperty(scriptable, str, obj);
        }
        return obj;
    }

    public static Object setDefaultNamespace(Object obj, Context context) {
        NativeCall nativeCall = context.currentActivationCall;
        Scriptable scriptable = nativeCall;
        if (nativeCall == null) {
            scriptable = getTopCallScope(context);
        }
        Object defaultXmlNamespace = currentXMLLib(context).toDefaultXmlNamespace(context, obj);
        if (!scriptable.has(DEFAULT_NS_TAG, scriptable)) {
            ScriptableObject.defineProperty(scriptable, DEFAULT_NS_TAG, defaultXmlNamespace, 6);
        } else {
            scriptable.put(DEFAULT_NS_TAG, scriptable, defaultXmlNamespace);
        }
        return Undefined.instance;
    }

    public static void setEnumNumbers(Object obj, boolean z) {
        ((IdEnumeration) obj).enumNumbers = z;
    }

    public static void setFunctionProtoAndParent(BaseFunction baseFunction, Scriptable scriptable) {
        baseFunction.setParentScope(scriptable);
        baseFunction.setPrototype(ScriptableObject.getFunctionPrototype(scriptable));
    }

    public static Object setName(Scriptable scriptable, Object obj, Context context, Scriptable scriptable2, String str) {
        if (scriptable != null) {
            ScriptableObject.putProperty(scriptable, str, obj);
        } else {
            if (context.hasFeature(11) || context.hasFeature(8)) {
                Context.reportWarning(getMessage1("msg.assn.create.strict", str));
            }
            Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable2);
            Scriptable scriptable3 = topLevelScope;
            if (context.useDynamicScope) {
                scriptable3 = checkDynamicScope(context.topCallScope, topLevelScope);
            }
            scriptable3.put(str, scriptable3, obj);
        }
        return obj;
    }

    @Deprecated
    public static Object setObjectElem(Object obj, Object obj2, Object obj3, Context context) {
        return setObjectElem(obj, obj2, obj3, context, getTopCallScope(context));
    }

    public static Object setObjectElem(Object obj, Object obj2, Object obj3, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            return setObjectElem(objectOrNull, obj2, obj3, context);
        }
        throw undefWriteError(obj, obj2, obj3);
    }

    public static Object setObjectElem(Scriptable scriptable, Object obj, Object obj2, Context context) {
        if (scriptable instanceof XMLObject) {
            ((XMLObject) scriptable).put(context, obj, obj2);
        } else {
            String stringIdOrIndex = toStringIdOrIndex(context, obj);
            if (stringIdOrIndex == null) {
                ScriptableObject.putProperty(scriptable, lastIndexResult(context), obj2);
            } else {
                ScriptableObject.putProperty(scriptable, stringIdOrIndex, obj2);
            }
        }
        return obj2;
    }

    @Deprecated
    public static Object setObjectIndex(Object obj, double d, Object obj2, Context context) {
        return setObjectIndex(obj, d, obj2, context, getTopCallScope(context));
    }

    public static Object setObjectIndex(Object obj, double d, Object obj2, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull == null) {
            throw undefWriteError(obj, String.valueOf(d), obj2);
        }
        int i = (int) d;
        return ((double) i) == d ? setObjectIndex(objectOrNull, i, obj2, context) : setObjectProp(objectOrNull, toString(d), obj2, context);
    }

    public static Object setObjectIndex(Scriptable scriptable, int i, Object obj, Context context) {
        ScriptableObject.putProperty(scriptable, i, obj);
        return obj;
    }

    @Deprecated
    public static Object setObjectProp(Object obj, String str, Object obj2, Context context) {
        return setObjectProp(obj, str, obj2, context, getTopCallScope(context));
    }

    public static Object setObjectProp(Object obj, String str, Object obj2, Context context, Scriptable scriptable) {
        Scriptable objectOrNull = toObjectOrNull(context, obj, scriptable);
        if (objectOrNull != null) {
            return setObjectProp(objectOrNull, str, obj2, context);
        }
        throw undefWriteError(obj, str, obj2);
    }

    public static Object setObjectProp(Scriptable scriptable, String str, Object obj, Context context) {
        ScriptableObject.putProperty(scriptable, str, obj);
        return obj;
    }

    public static void setObjectProtoAndParent(ScriptableObject scriptableObject, Scriptable scriptable) {
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        scriptableObject.setParentScope(topLevelScope);
        scriptableObject.setPrototype(ScriptableObject.getClassPrototype(topLevelScope, scriptableObject.getClassName()));
    }

    public static void setRegExpProxy(Context context, RegExpProxy regExpProxy) {
        if (regExpProxy == null) {
            throw new IllegalArgumentException();
        }
        context.regExpProxy = regExpProxy;
    }

    public static boolean shallowEq(Object obj, Object obj2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        boolean z4 = true;
        if (obj == obj2) {
            if (!(obj instanceof Number)) {
                return true;
            }
            double doubleValue = ((Number) obj).doubleValue();
            if (doubleValue != doubleValue) {
                z4 = false;
            }
            return z4;
        } else if (obj == null || obj == Undefined.instance) {
            return false;
        } else {
            if (obj instanceof Number) {
                if (!(obj2 instanceof Number)) {
                    return false;
                }
                if (((Number) obj).doubleValue() != ((Number) obj2).doubleValue()) {
                    z = false;
                }
                return z;
            } else if (obj instanceof CharSequence) {
                if (obj2 instanceof CharSequence) {
                    return obj.toString().equals(obj2.toString());
                }
                return false;
            } else if (obj instanceof Boolean) {
                if (obj2 instanceof Boolean) {
                    return obj.equals(obj2);
                }
                return false;
            } else if (!(obj instanceof Scriptable)) {
                warnAboutNonJSObject(obj);
                if (obj != obj2) {
                    z3 = false;
                }
                return z3;
            } else if (!(obj instanceof Wrapper) || !(obj2 instanceof Wrapper)) {
                return false;
            } else {
                if (((Wrapper) obj).unwrap() != ((Wrapper) obj2).unwrap()) {
                    z2 = false;
                }
                return z2;
            }
        }
    }

    @Deprecated
    public static Ref specialRef(Object obj, String str, Context context) {
        return specialRef(obj, str, context, getTopCallScope(context));
    }

    public static Ref specialRef(Object obj, String str, Context context, Scriptable scriptable) {
        return SpecialRef.createSpecial(context, scriptable, obj, str);
    }

    private static void storeIndexResult(Context context, int i) {
        context.scratchIndex = i;
    }

    private static void storeScriptable(Context context, Scriptable scriptable) {
        if (context.scratchScriptable != null) {
            throw new IllegalStateException();
        }
        context.scratchScriptable = scriptable;
    }

    public static void storeUint32Result(Context context, long j) {
        if ((j >>> 32) != 0) {
            throw new IllegalArgumentException();
        }
        context.scratchUint32 = j;
    }

    public static Object strictSetName(Scriptable scriptable, Object obj, Context context, Scriptable scriptable2, String str) {
        if (scriptable != null) {
            ScriptableObject.putProperty(scriptable, str, obj);
            return obj;
        }
        throw constructError("ReferenceError", "Assignment to undefined \"" + str + "\" in strict mode");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00fa, code lost:
        if (r7 == 32) goto L_0x00fd;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [double] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v5, types: [double] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12, types: [double] */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v15, types: [double] */
    /* JADX WARN: Type inference failed for: r16v19 */
    /* JADX WARN: Type inference failed for: r16v20 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8, types: [double] */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1, types: [double] */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Unknown variable types count: 8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double stringToNumber(java.lang.String r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 747
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.stringToNumber(java.lang.String, int, int):double");
    }

    public static long testUint32String(String str) {
        int length = str.length();
        long j = -1;
        if (1 > length || length > 10) {
            return -1L;
        }
        int charAt = str.charAt(0) - '0';
        if (charAt == 0) {
            if (length == 1) {
                j = 0;
            }
            return j;
        } else if (1 > charAt || charAt > 9) {
            return -1L;
        } else {
            long j2 = charAt;
            for (int i = 1; i != length; i++) {
                int charAt2 = str.charAt(i) - '0';
                if (charAt2 < 0 || charAt2 > 9) {
                    return -1L;
                }
                j2 = (j2 * 10) + charAt2;
            }
            if ((j2 >>> 32) == 0) {
                return j2;
            }
            return -1L;
        }
    }

    public static JavaScriptException throwError(Context context, Scriptable scriptable, String str) {
        int[] iArr = {0};
        String sourcePositionFromStack = Context.getSourcePositionFromStack(iArr);
        return new JavaScriptException(newBuiltinObject(context, scriptable, TopLevel.Builtins.Error, new Object[]{str, sourcePositionFromStack, Integer.valueOf(iArr[0])}), sourcePositionFromStack, iArr[0]);
    }

    public static boolean toBoolean(Object obj) {
        while (!(obj instanceof Boolean)) {
            boolean z = false;
            if (obj == null || obj == Undefined.instance) {
                return false;
            }
            if (obj instanceof CharSequence) {
                if (((CharSequence) obj).length() != 0) {
                    z = true;
                }
                return z;
            } else if (obj instanceof Number) {
                double doubleValue = ((Number) obj).doubleValue();
                boolean z2 = false;
                if (doubleValue == doubleValue) {
                    z2 = false;
                    if (doubleValue != 0.0d) {
                        z2 = true;
                    }
                }
                return z2;
            } else if (!(obj instanceof Scriptable)) {
                warnAboutNonJSObject(obj);
                return true;
            } else if ((obj instanceof ScriptableObject) && ((ScriptableObject) obj).avoidObjectDetection()) {
                return false;
            } else {
                if (Context.getContext().isVersionECMA1()) {
                    return true;
                }
                Object defaultValue = ((Scriptable) obj).getDefaultValue(BooleanClass);
                obj = defaultValue;
                if (defaultValue instanceof Scriptable) {
                    throw errorWithClassName("msg.primitive.expected", defaultValue);
                }
            }
        }
        return ((Boolean) obj).booleanValue();
    }

    public static CharSequence toCharSequence(Object obj) {
        if (obj instanceof NativeString) {
            return ((NativeString) obj).toCharSequence();
        }
        return obj instanceof CharSequence ? (CharSequence) obj : toString(obj);
    }

    public static int toInt32(double d) {
        return DoubleConversion.doubleToInt32(d);
    }

    public static int toInt32(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : toInt32(toNumber(obj));
    }

    public static int toInt32(Object[] objArr, int i) {
        return i < objArr.length ? toInt32(objArr[i]) : 0;
    }

    public static double toInteger(double d) {
        if (d != d) {
            return 0.0d;
        }
        int i = (d > 0.0d ? 1 : (d == 0.0d ? 0 : -1));
        return (i == 0 || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY) ? d : i > 0 ? Math.floor(d) : Math.ceil(d);
    }

    public static double toInteger(Object obj) {
        return toInteger(toNumber(obj));
    }

    public static double toInteger(Object[] objArr, int i) {
        return i < objArr.length ? toInteger(objArr[i]) : 0.0d;
    }

    public static Scriptable toIterator(Context context, Scriptable scriptable, Scriptable scriptable2, boolean z) {
        if (!ScriptableObject.hasProperty(scriptable2, NativeIterator.ITERATOR_PROPERTY_NAME)) {
            return null;
        }
        Object property = ScriptableObject.getProperty(scriptable2, NativeIterator.ITERATOR_PROPERTY_NAME);
        if (!(property instanceof Callable)) {
            throw typeError0("msg.invalid.iterator");
        }
        Object call = ((Callable) property).call(context, scriptable, scriptable2, new Object[]{z ? Boolean.TRUE : Boolean.FALSE});
        if (call instanceof Scriptable) {
            return (Scriptable) call;
        }
        throw typeError0("msg.iterator.primitive");
    }

    public static double toNumber(Object obj) {
        while (!(obj instanceof Number)) {
            double d = 0.0d;
            if (obj == null) {
                return 0.0d;
            }
            if (obj == Undefined.instance) {
                return NaN;
            }
            if (obj instanceof String) {
                return toNumber((String) obj);
            }
            if (obj instanceof CharSequence) {
                return toNumber(obj.toString());
            }
            if (obj instanceof Boolean) {
                if (((Boolean) obj).booleanValue()) {
                    d = 1.0d;
                }
                return d;
            } else if (obj instanceof Scriptable) {
                Object defaultValue = ((Scriptable) obj).getDefaultValue(NumberClass);
                obj = defaultValue;
                if (defaultValue instanceof Scriptable) {
                    throw errorWithClassName("msg.primitive.expected", defaultValue);
                }
            } else {
                warnAboutNonJSObject(obj);
                return NaN;
            }
        }
        return ((Number) obj).doubleValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cd, code lost:
        if (r0 == '-') goto L_0x00d0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v59, types: [double] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5, types: [double] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double toNumber(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.toNumber(java.lang.String):double");
    }

    public static double toNumber(Object[] objArr, int i) {
        return i < objArr.length ? toNumber(objArr[i]) : NaN;
    }

    public static Scriptable toObject(Context context, Scriptable scriptable, Object obj) {
        if (obj instanceof Scriptable) {
            return (Scriptable) obj;
        }
        if (obj instanceof CharSequence) {
            NativeString nativeString = new NativeString((CharSequence) obj);
            setBuiltinProtoAndParent(nativeString, scriptable, TopLevel.Builtins.String);
            return nativeString;
        } else if (obj instanceof Number) {
            NativeNumber nativeNumber = new NativeNumber(((Number) obj).doubleValue());
            setBuiltinProtoAndParent(nativeNumber, scriptable, TopLevel.Builtins.Number);
            return nativeNumber;
        } else if (obj instanceof Boolean) {
            NativeBoolean nativeBoolean = new NativeBoolean(((Boolean) obj).booleanValue());
            setBuiltinProtoAndParent(nativeBoolean, scriptable, TopLevel.Builtins.Boolean);
            return nativeBoolean;
        } else if (obj == null) {
            throw typeError0("msg.null.to.object");
        } else if (obj == Undefined.instance) {
            throw typeError0("msg.undef.to.object");
        } else {
            Object wrap = context.getWrapFactory().wrap(context, scriptable, obj, null);
            if (wrap instanceof Scriptable) {
                return (Scriptable) wrap;
            }
            throw errorWithClassName("msg.invalid.type", obj);
        }
    }

    @Deprecated
    public static Scriptable toObject(Context context, Scriptable scriptable, Object obj, Class<?> cls) {
        return toObject(context, scriptable, obj);
    }

    public static Scriptable toObject(Scriptable scriptable, Object obj) {
        return obj instanceof Scriptable ? (Scriptable) obj : toObject(Context.getContext(), scriptable, obj);
    }

    @Deprecated
    public static Scriptable toObject(Scriptable scriptable, Object obj, Class<?> cls) {
        return obj instanceof Scriptable ? (Scriptable) obj : toObject(Context.getContext(), scriptable, obj);
    }

    @Deprecated
    public static Scriptable toObjectOrNull(Context context, Object obj) {
        if (obj instanceof Scriptable) {
            return (Scriptable) obj;
        }
        if (obj == null || obj == Undefined.instance) {
            return null;
        }
        return toObject(context, getTopCallScope(context), obj);
    }

    public static Scriptable toObjectOrNull(Context context, Object obj, Scriptable scriptable) {
        if (obj instanceof Scriptable) {
            return (Scriptable) obj;
        }
        if (obj == null || obj == Undefined.instance) {
            return null;
        }
        return toObject(context, scriptable, obj);
    }

    public static Object toPrimitive(Object obj) {
        return toPrimitive(obj, null);
    }

    public static Object toPrimitive(Object obj, Class<?> cls) {
        if (!(obj instanceof Scriptable)) {
            return obj;
        }
        Object defaultValue = ((Scriptable) obj).getDefaultValue(cls);
        if (!(defaultValue instanceof Scriptable)) {
            return defaultValue;
        }
        throw typeError0("msg.bad.default.value");
    }

    public static String toString(double d) {
        return numberToString(d, 10);
    }

    public static String toString(Object obj) {
        while (obj != null) {
            if (obj == Undefined.instance) {
                return "undefined";
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof CharSequence) {
                return obj.toString();
            }
            if (obj instanceof Number) {
                return numberToString(((Number) obj).doubleValue(), 10);
            }
            if (!(obj instanceof Scriptable)) {
                return obj.toString();
            }
            Object defaultValue = ((Scriptable) obj).getDefaultValue(StringClass);
            obj = defaultValue;
            if (defaultValue instanceof Scriptable) {
                throw errorWithClassName("msg.primitive.expected", defaultValue);
            }
        }
        return "null";
    }

    public static String toString(Object[] objArr, int i) {
        return i < objArr.length ? toString(objArr[i]) : "undefined";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toStringIdOrIndex(Context context, Object obj) {
        if (obj instanceof Number) {
            double doubleValue = ((Number) obj).doubleValue();
            int i = (int) doubleValue;
            if (i != doubleValue) {
                return toString(obj);
            }
            storeIndexResult(context, i);
            return null;
        }
        String scriptRuntime = obj instanceof String ? (String) obj : toString(obj);
        long indexFromString = indexFromString(scriptRuntime);
        if (indexFromString < 0) {
            return scriptRuntime;
        }
        storeIndexResult(context, (int) indexFromString);
        return null;
    }

    public static char toUint16(Object obj) {
        return (char) DoubleConversion.doubleToInt32(toNumber(obj));
    }

    public static long toUint32(double d) {
        return DoubleConversion.doubleToInt32(d) & BodyPartID.bodyIdMax;
    }

    public static long toUint32(Object obj) {
        return toUint32(toNumber(obj));
    }

    private static Object topScopeName(Context context, Scriptable scriptable, String str) {
        Scriptable scriptable2 = scriptable;
        if (context.useDynamicScope) {
            scriptable2 = checkDynamicScope(context.topCallScope, scriptable);
        }
        return ScriptableObject.getProperty(scriptable2, str);
    }

    public static EcmaError typeError(String str) {
        return constructError("TypeError", str);
    }

    public static EcmaError typeError0(String str) {
        return typeError(getMessage0(str));
    }

    public static EcmaError typeError1(String str, String str2) {
        return typeError(getMessage1(str, str2));
    }

    public static EcmaError typeError2(String str, String str2, String str3) {
        return typeError(getMessage2(str, str2, str3));
    }

    public static EcmaError typeError3(String str, String str2, String str3, String str4) {
        return typeError(getMessage3(str, str2, str3, str4));
    }

    @Deprecated
    public static BaseFunction typeErrorThrower() {
        return typeErrorThrower(Context.getCurrentContext());
    }

    public static BaseFunction typeErrorThrower(Context context) {
        if (context.typeErrorThrower == null) {
            BaseFunction baseFunction = new BaseFunction() { // from class: org.mozilla.javascript.ScriptRuntime.1
                static final long serialVersionUID = -5891740962154902286L;

                @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.Function, org.mozilla.javascript.Callable
                public Object call(Context context2, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
                    throw ScriptRuntime.typeError0("msg.op.not.allowed");
                }

                @Override // org.mozilla.javascript.BaseFunction
                public int getLength() {
                    return 0;
                }
            };
            setFunctionProtoAndParent(baseFunction, context.topCallScope);
            baseFunction.preventExtensions();
            context.typeErrorThrower = baseFunction;
        }
        return context.typeErrorThrower;
    }

    public static String typeof(Object obj) {
        if (obj == null) {
            return "object";
        }
        if (obj == Undefined.instance) {
            return "undefined";
        }
        if (obj instanceof ScriptableObject) {
            return ((ScriptableObject) obj).getTypeOf();
        }
        if (obj instanceof Scriptable) {
            return obj instanceof Callable ? "function" : "object";
        } else if (obj instanceof CharSequence) {
            return "string";
        } else {
            if (obj instanceof Number) {
                return "number";
            }
            if (obj instanceof Boolean) {
                return "boolean";
            }
            throw errorWithClassName("msg.invalid.type", obj);
        }
    }

    public static String typeofName(Scriptable scriptable, String str) {
        Context context = Context.getContext();
        Scriptable bind = bind(context, scriptable, str);
        return bind == null ? "undefined" : typeof(getObjectProp(bind, str, context));
    }

    public static RuntimeException undefCallError(Object obj, Object obj2) {
        return typeError2("msg.undef.method.call", toString(obj), toString(obj2));
    }

    private static RuntimeException undefDeleteError(Object obj, Object obj2) {
        throw typeError2("msg.undef.prop.delete", toString(obj), toString(obj2));
    }

    public static RuntimeException undefReadError(Object obj, Object obj2) {
        return typeError2("msg.undef.prop.read", toString(obj), toString(obj2));
    }

    public static RuntimeException undefWriteError(Object obj, Object obj2, Object obj3) {
        return typeError3("msg.undef.prop.write", toString(obj), toString(obj2), toString(obj3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String uneval(Context context, Scriptable scriptable, Object obj) {
        if (obj == null) {
            return "null";
        }
        if (obj == Undefined.instance) {
            return "undefined";
        }
        if (obj instanceof CharSequence) {
            String escapeString = escapeString(obj.toString());
            StringBuilder sb = new StringBuilder(escapeString.length() + 2);
            sb.append('\"');
            sb.append(escapeString);
            sb.append('\"');
            return sb.toString();
        } else if (obj instanceof Number) {
            double doubleValue = ((Number) obj).doubleValue();
            return (doubleValue != 0.0d || 1.0d / doubleValue >= 0.0d) ? toString(doubleValue) : "-0";
        } else if (obj instanceof Boolean) {
            return toString(obj);
        } else {
            if (obj instanceof Scriptable) {
                Scriptable scriptable2 = (Scriptable) obj;
                if (ScriptableObject.hasProperty(scriptable2, "toSource")) {
                    Object property = ScriptableObject.getProperty(scriptable2, "toSource");
                    if (property instanceof Function) {
                        return toString(((Function) property).call(context, scriptable, scriptable2, emptyArgs));
                    }
                }
                return toString(obj);
            }
            warnAboutNonJSObject(obj);
            return obj.toString();
        }
    }

    public static Object updateDotQuery(boolean z, Scriptable scriptable) {
        return ((NativeWith) scriptable).updateDotQuery(z);
    }

    private static void warnAboutNonJSObject(Object obj) {
        String str = "RHINO USAGE WARNING: Missed Context.javaToJS() conversion:\nRhino runtime detected object " + obj + " of class " + obj.getClass().getName() + " where it expected String, Number, Boolean or Scriptable instance. Please check your code for missing Context.javaToJS() call.";
        Context.reportWarning(str);
        System.err.println(str);
    }

    public static Boolean wrapBoolean(boolean z) {
        return z ? Boolean.TRUE : Boolean.FALSE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.mozilla.javascript.Scriptable wrapException(java.lang.Throwable r8, org.mozilla.javascript.Scriptable r9, org.mozilla.javascript.Context r10) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.ScriptRuntime.wrapException(java.lang.Throwable, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Context):org.mozilla.javascript.Scriptable");
    }

    public static Integer wrapInt(int i) {
        return Integer.valueOf(i);
    }

    public static Number wrapNumber(double d) {
        return d != d ? NaNobj : new Double(d);
    }

    public static Scriptable wrapRegExp(Context context, Scriptable scriptable, Object obj) {
        return context.getRegExpProxy().wrapRegExp(context, scriptable, obj);
    }
}
