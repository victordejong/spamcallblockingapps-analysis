package org.mozilla.javascript;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.mozilla.javascript.TopLevel;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeArray.class */
public class NativeArray extends IdScriptableObject implements List {
    private static final int ConstructorId_concat = -13;
    private static final int ConstructorId_every = -17;
    private static final int ConstructorId_filter = -18;
    private static final int ConstructorId_find = -22;
    private static final int ConstructorId_findIndex = -23;
    private static final int ConstructorId_forEach = -19;
    private static final int ConstructorId_indexOf = -15;
    private static final int ConstructorId_isArray = -26;
    private static final int ConstructorId_join = -5;
    private static final int ConstructorId_lastIndexOf = -16;
    private static final int ConstructorId_map = -20;
    private static final int ConstructorId_pop = -9;
    private static final int ConstructorId_push = -8;
    private static final int ConstructorId_reduce = -24;
    private static final int ConstructorId_reduceRight = -25;
    private static final int ConstructorId_reverse = -6;
    private static final int ConstructorId_shift = -10;
    private static final int ConstructorId_slice = -14;
    private static final int ConstructorId_some = -21;
    private static final int ConstructorId_sort = -7;
    private static final int ConstructorId_splice = -12;
    private static final int ConstructorId_unshift = -11;
    private static final int DEFAULT_INITIAL_CAPACITY = 10;
    private static final double GROW_FACTOR = 1.5d;
    private static final int Id_concat = 13;
    private static final int Id_constructor = 1;
    private static final int Id_every = 17;
    private static final int Id_filter = 18;
    private static final int Id_find = 22;
    private static final int Id_findIndex = 23;
    private static final int Id_forEach = 19;
    private static final int Id_indexOf = 15;
    private static final int Id_join = 5;
    private static final int Id_lastIndexOf = 16;
    private static final int Id_length = 1;
    private static final int Id_map = 20;
    private static final int Id_pop = 9;
    private static final int Id_push = 8;
    private static final int Id_reduce = 24;
    private static final int Id_reduceRight = 25;
    private static final int Id_reverse = 6;
    private static final int Id_shift = 10;
    private static final int Id_slice = 14;
    private static final int Id_some = 21;
    private static final int Id_sort = 7;
    private static final int Id_splice = 12;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toSource = 4;
    private static final int Id_toString = 2;
    private static final int Id_unshift = 11;
    private static final int MAX_INSTANCE_ID = 1;
    private static final int MAX_PRE_GROW_SIZE = 1431655764;
    private static final int MAX_PROTOTYPE_ID = 25;
    private static int maximumInitialCapacity = 10000;
    static final long serialVersionUID = 7331366857676127338L;
    private Object[] dense;
    private boolean denseOnly;
    private long length;
    private int lengthAttr;
    private static final Object ARRAY_TAG = "Array";
    private static final Integer NEGATIVE_ONE = -1;

    public NativeArray(long j) {
        this.lengthAttr = 6;
        this.denseOnly = j <= ((long) maximumInitialCapacity);
        if (this.denseOnly) {
            int i = (int) j;
            this.dense = new Object[i < 10 ? 10 : i];
            Arrays.fill(this.dense, Scriptable.NOT_FOUND);
        }
        this.length = j;
    }

    public NativeArray(Object[] objArr) {
        this.lengthAttr = 6;
        this.denseOnly = true;
        this.dense = objArr;
        this.length = objArr.length;
    }

    private ScriptableObject defaultIndexPropertyDescriptor(Object obj) {
        Scriptable parentScope = getParentScope();
        Scriptable scriptable = parentScope;
        if (parentScope == null) {
            scriptable = this;
        }
        NativeObject nativeObject = new NativeObject();
        ScriptRuntime.setBuiltinProtoAndParent(nativeObject, scriptable, TopLevel.Builtins.Object);
        nativeObject.defineProperty(FirebaseAnalytics.Param.VALUE, obj, 0);
        nativeObject.defineProperty("writable", (Object) true, 0);
        nativeObject.defineProperty("enumerable", (Object) true, 0);
        nativeObject.defineProperty("configurable", (Object) true, 0);
        return nativeObject;
    }

    private static void defineElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 2147483647L) {
            scriptable.put(Long.toString(j), scriptable, obj);
        } else {
            scriptable.put((int) j, scriptable, obj);
        }
    }

    private static void deleteElem(Scriptable scriptable, long j) {
        int i = (int) j;
        if (i == j) {
            scriptable.delete(i);
        } else {
            scriptable.delete(Long.toString(j));
        }
    }

    private boolean ensureCapacity(int i) {
        if (i <= this.dense.length) {
            return true;
        }
        if (i > MAX_PRE_GROW_SIZE) {
            this.denseOnly = false;
            return false;
        }
        Object[] objArr = new Object[Math.max(i, (int) (this.dense.length * GROW_FACTOR))];
        System.arraycopy(this.dense, 0, objArr, 0, this.dense.length);
        Arrays.fill(objArr, this.dense.length, objArr.length, Scriptable.NOT_FOUND);
        this.dense = objArr;
        return true;
    }

    private static Object getElem(Context context, Scriptable scriptable, long j) {
        Object rawElem = getRawElem(scriptable, j);
        if (rawElem == Scriptable.NOT_FOUND) {
            rawElem = Undefined.instance;
        }
        return rawElem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLengthProperty(Context context, Scriptable scriptable) {
        if (scriptable instanceof NativeString) {
            return ((NativeString) scriptable).getLength();
        }
        if (scriptable instanceof NativeArray) {
            return ((NativeArray) scriptable).getLength();
        }
        Object property = ScriptableObject.getProperty(scriptable, "length");
        if (property == Scriptable.NOT_FOUND) {
            return 0L;
        }
        return ScriptRuntime.toUint32(property);
    }

    static int getMaximumInitialCapacity() {
        return maximumInitialCapacity;
    }

    private static Object getRawElem(Scriptable scriptable, long j) {
        return j > 2147483647L ? ScriptableObject.getProperty(scriptable, Long.toString(j)) : ScriptableObject.getProperty(scriptable, (int) j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        new NativeArray(0L).exportAsJSClass(25, scriptable, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x019d, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object iterativeMethod(org.mozilla.javascript.Context r7, int r8, org.mozilla.javascript.Scriptable r9, org.mozilla.javascript.Scriptable r10, java.lang.Object[] r11) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.iterativeMethod(org.mozilla.javascript.Context, int, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    private static Object jsConstructor(Context context, Scriptable scriptable, Object[] objArr) {
        if (objArr.length == 0) {
            return new NativeArray(0L);
        }
        if (context.getLanguageVersion() == 120) {
            return new NativeArray(objArr);
        }
        Object obj = objArr[0];
        if (objArr.length > 1 || !(obj instanceof Number)) {
            return new NativeArray(objArr);
        }
        long uint32 = ScriptRuntime.toUint32(obj);
        if (uint32 == ((Number) obj).doubleValue()) {
            return new NativeArray(uint32);
        }
        throw ScriptRuntime.constructError("RangeError", ScriptRuntime.getMessage0("msg.arraylength.bad"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v110 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v4, types: [long] */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.mozilla.javascript.Scriptable js_concat(org.mozilla.javascript.Context r7, org.mozilla.javascript.Scriptable r8, org.mozilla.javascript.Scriptable r9, java.lang.Object[] r10) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_concat(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):org.mozilla.javascript.Scriptable");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004e, code lost:
        if (r0 < 0) goto L_0x0058;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [long] */
    /* JADX WARN: Type inference failed for: r14v4, types: [long] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6, types: [long] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_indexOf(org.mozilla.javascript.Context r7, org.mozilla.javascript.Scriptable r8, java.lang.Object[] r9) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_indexOf(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    private static boolean js_isArray(Object obj) {
        if (!(obj instanceof Scriptable)) {
            return false;
        }
        return "Array".equals(((Scriptable) obj).getClassName());
    }

    private static String js_join(Context context, Scriptable scriptable, Object[] objArr) {
        Object obj;
        long lengthProperty = getLengthProperty(context, scriptable);
        int i = (int) lengthProperty;
        if (lengthProperty != i) {
            throw Context.reportRuntimeError1("msg.arraylength.too.big", String.valueOf(lengthProperty));
        }
        String scriptRuntime = (objArr.length < 1 || objArr[0] == Undefined.instance) ? "," : ScriptRuntime.toString(objArr[0]);
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly) {
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < i; i2++) {
                    if (i2 != 0) {
                        sb.append(scriptRuntime);
                    }
                    if (!(i2 >= nativeArray.dense.length || (obj = nativeArray.dense[i2]) == null || obj == Undefined.instance || obj == Scriptable.NOT_FOUND)) {
                        sb.append(ScriptRuntime.toString(obj));
                    }
                }
                return sb.toString();
            }
        }
        if (i == 0) {
            return "";
        }
        String[] strArr = new String[i];
        int i3 = 0;
        for (int i4 = 0; i4 != i; i4++) {
            Object elem = getElem(context, scriptable, i4);
            i3 = i3;
            if (elem != null) {
                i3 = i3;
                if (elem != Undefined.instance) {
                    String scriptRuntime2 = ScriptRuntime.toString(elem);
                    i3 += scriptRuntime2.length();
                    strArr[i4] = scriptRuntime2;
                }
            }
        }
        StringBuilder sb2 = new StringBuilder(i3 + ((i - 1) * scriptRuntime.length()));
        for (int i5 = 0; i5 != i; i5++) {
            if (i5 != 0) {
                sb2.append(scriptRuntime);
            }
            String str = strArr[i5];
            if (str != null) {
                sb2.append(str);
            }
        }
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6, types: [long] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_lastIndexOf(org.mozilla.javascript.Context r5, org.mozilla.javascript.Scriptable r6, java.lang.Object[] r7) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_lastIndexOf(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    private static Object js_pop(Context context, Scriptable scriptable, Object[] objArr) {
        Object obj;
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly && nativeArray.length > 0) {
                nativeArray.length--;
                Object obj2 = nativeArray.dense[(int) nativeArray.length];
                nativeArray.dense[(int) nativeArray.length] = NOT_FOUND;
                return obj2;
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable);
        if (lengthProperty > 0) {
            lengthProperty--;
            obj = getElem(context, scriptable, lengthProperty);
            deleteElem(scriptable, lengthProperty);
        } else {
            obj = Undefined.instance;
        }
        setLengthProperty(context, scriptable, lengthProperty);
        return obj;
    }

    private static Object js_push(Context context, Scriptable scriptable, Object[] objArr) {
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly && nativeArray.ensureCapacity(((int) nativeArray.length) + objArr.length)) {
                for (Object obj : objArr) {
                    Object[] objArr2 = nativeArray.dense;
                    long j = nativeArray.length;
                    nativeArray.length = 1 + j;
                    objArr2[(int) j] = obj;
                }
                return ScriptRuntime.wrapNumber(nativeArray.length);
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable);
        for (int i = 0; i < objArr.length; i++) {
            setElem(context, scriptable, i + lengthProperty, objArr[i]);
        }
        Object lengthProperty2 = setLengthProperty(context, scriptable, lengthProperty + objArr.length);
        if (context.getLanguageVersion() != 120) {
            return lengthProperty2;
        }
        return objArr.length == 0 ? Undefined.instance : objArr[objArr.length - 1];
    }

    private static Scriptable js_reverse(Context context, Scriptable scriptable, Object[] objArr) {
        if (scriptable instanceof NativeArray) {
            NativeArray nativeArray = (NativeArray) scriptable;
            if (nativeArray.denseOnly) {
                int i = 0;
                for (int i2 = ((int) nativeArray.length) - 1; i < i2; i2--) {
                    Object obj = nativeArray.dense[i];
                    nativeArray.dense[i] = nativeArray.dense[i2];
                    nativeArray.dense[i2] = obj;
                    i++;
                }
                return scriptable;
            }
        }
        long lengthProperty = getLengthProperty(context, scriptable);
        long j = lengthProperty / 2;
        for (long j2 = 0; j2 < j; j2++) {
            long j3 = (lengthProperty - j2) - 1;
            Object rawElem = getRawElem(scriptable, j2);
            setRawElem(context, scriptable, j2, getRawElem(scriptable, j3));
            setRawElem(context, scriptable, j3, rawElem);
        }
        return scriptable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_shift(org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, java.lang.Object[] r10) {
        /*
            Method dump skipped, instructions count: 176
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_shift(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r18v0, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.Scriptable js_slice(org.mozilla.javascript.Context r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            r9 = this;
            r0 = r10
            r1 = r9
            org.mozilla.javascript.Scriptable r1 = getTopLevelScope(r1)
            r2 = 0
            org.mozilla.javascript.Scriptable r0 = r0.newArray(r1, r2)
            r13 = r0
            r0 = r10
            r1 = r11
            long r0 = getLengthProperty(r0, r1)
            r14 = r0
            r0 = r12
            int r0 = r0.length
            if (r0 != 0) goto L_0x0021
            r0 = 0
            r16 = r0
            r0 = r14
            r18 = r0
            goto L_0x0061
        L_0x0021:
            r0 = r12
            r1 = 0
            r0 = r0[r1]
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0)
            r1 = r14
            long r0 = toSliceIndex(r0, r1)
            r20 = r0
            r0 = r14
            r18 = r0
            r0 = r20
            r16 = r0
            r0 = r12
            int r0 = r0.length
            r1 = 1
            if (r0 == r1) goto L_0x0061
            r0 = r12
            r1 = 1
            r0 = r0[r1]
            java.lang.Object r1 = org.mozilla.javascript.Undefined.instance
            if (r0 != r1) goto L_0x0050
            r0 = r14
            r18 = r0
            r0 = r20
            r16 = r0
            goto L_0x0061
        L_0x0050:
            r0 = r12
            r1 = 1
            r0 = r0[r1]
            double r0 = org.mozilla.javascript.ScriptRuntime.toInteger(r0)
            r1 = r14
            long r0 = toSliceIndex(r0, r1)
            r18 = r0
            r0 = r20
            r16 = r0
        L_0x0061:
            r0 = r16
            r14 = r0
        L_0x0065:
            r0 = r14
            r1 = r18
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0090
            r0 = r11
            r1 = r14
            java.lang.Object r0 = getRawElem(r0, r1)
            r12 = r0
            r0 = r12
            java.lang.Object r1 = org.mozilla.javascript.NativeArray.NOT_FOUND
            if (r0 == r1) goto L_0x0087
            r0 = r10
            r1 = r13
            r2 = r14
            r3 = r16
            long r2 = r2 - r3
            r3 = r12
            defineElem(r0, r1, r2, r3)
        L_0x0087:
            r0 = r14
            r1 = 1
            long r0 = r0 + r1
            r14 = r0
            goto L_0x0065
        L_0x0090:
            r0 = r10
            r1 = r13
            r2 = 0
            r3 = r18
            r4 = r16
            long r3 = r3 - r4
            long r2 = java.lang.Math.max(r2, r3)
            java.lang.Object r0 = setLengthProperty(r0, r1, r2)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_slice(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):org.mozilla.javascript.Scriptable");
    }

    private static Scriptable js_sort(final Context context, final Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Comparator<Object> comparator;
        if (objArr.length <= 0 || Undefined.instance == objArr[0]) {
            comparator = new Comparator<Object>() { // from class: org.mozilla.javascript.NativeArray.2
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    int i = 1;
                    int i2 = 1;
                    if (obj == Scriptable.NOT_FOUND) {
                        if (obj2 == Scriptable.NOT_FOUND) {
                            i2 = 0;
                        }
                        return i2;
                    } else if (obj2 == Scriptable.NOT_FOUND) {
                        return -1;
                    } else {
                        if (obj == Undefined.instance) {
                            if (obj2 == Undefined.instance) {
                                i = 0;
                            }
                            return i;
                        } else if (obj2 == Undefined.instance) {
                            return -1;
                        } else {
                            return ScriptRuntime.toString(obj).compareTo(ScriptRuntime.toString(obj2));
                        }
                    }
                }
            };
        } else {
            final Callable valueFunctionAndThis = ScriptRuntime.getValueFunctionAndThis(objArr[0], context);
            final Scriptable lastStoredScriptable = ScriptRuntime.lastStoredScriptable(context);
            final Object[] objArr2 = new Object[2];
            comparator = new Comparator<Object>() { // from class: org.mozilla.javascript.NativeArray.1
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    int i = 1;
                    int i2 = 1;
                    if (obj == Scriptable.NOT_FOUND) {
                        if (obj2 == Scriptable.NOT_FOUND) {
                            i2 = 0;
                        }
                        return i2;
                    } else if (obj2 == Scriptable.NOT_FOUND) {
                        return -1;
                    } else {
                        if (obj == Undefined.instance) {
                            if (obj2 == Undefined.instance) {
                                i = 0;
                            }
                            return i;
                        } else if (obj2 == Undefined.instance) {
                            return -1;
                        } else {
                            objArr2[0] = obj;
                            objArr2[1] = obj2;
                            double number = ScriptRuntime.toNumber(valueFunctionAndThis.call(context, scriptable, lastStoredScriptable, objArr2));
                            if (number < 0.0d) {
                                return -1;
                            }
                            return number > 0.0d ? 1 : 0;
                        }
                    }
                }
            };
        }
        long lengthProperty = getLengthProperty(context, scriptable2);
        int i = (int) lengthProperty;
        if (lengthProperty != i) {
            throw Context.reportRuntimeError1("msg.arraylength.too.big", String.valueOf(lengthProperty));
        }
        Object[] objArr3 = new Object[i];
        for (int i2 = 0; i2 != i; i2++) {
            objArr3[i2] = getRawElem(scriptable2, i2);
        }
        Arrays.sort(objArr3, comparator);
        for (int i3 = 0; i3 < i; i3++) {
            setRawElem(context, scriptable2, i3, objArr3[i3]);
        }
        return scriptable2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [long] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Unknown variable types count: 7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_splice(org.mozilla.javascript.Context r9, org.mozilla.javascript.Scriptable r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_splice(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object js_unshift(org.mozilla.javascript.Context r7, org.mozilla.javascript.Scriptable r8, java.lang.Object[] r9) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.js_unshift(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r21v0, types: [long] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object reduceMethod(org.mozilla.javascript.Context r10, int r11, org.mozilla.javascript.Scriptable r12, org.mozilla.javascript.Scriptable r13, java.lang.Object[] r14) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.reduceMethod(org.mozilla.javascript.Context, int, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    private static void setElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (j > 2147483647L) {
            ScriptableObject.putProperty(scriptable, Long.toString(j), obj);
        } else {
            ScriptableObject.putProperty(scriptable, (int) j, obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setLength(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.setLength(java.lang.Object):void");
    }

    private static Object setLengthProperty(Context context, Scriptable scriptable, long j) {
        Number wrapNumber = ScriptRuntime.wrapNumber(j);
        ScriptableObject.putProperty(scriptable, "length", wrapNumber);
        return wrapNumber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMaximumInitialCapacity(int i) {
        maximumInitialCapacity = i;
    }

    private static void setRawElem(Context context, Scriptable scriptable, long j, Object obj) {
        if (obj == NOT_FOUND) {
            deleteElem(scriptable, j);
        } else {
            setElem(context, scriptable, j, obj);
        }
    }

    private static long toArrayIndex(double d) {
        if (d != d) {
            return -1L;
        }
        long uint32 = ScriptRuntime.toUint32(d);
        if (uint32 != d || uint32 == BodyPartID.bodyIdMax) {
            return -1L;
        }
        return uint32;
    }

    private static long toArrayIndex(Object obj) {
        if (obj instanceof String) {
            return toArrayIndex((String) obj);
        }
        if (obj instanceof Number) {
            return toArrayIndex(((Number) obj).doubleValue());
        }
        return -1L;
    }

    private static long toArrayIndex(String str) {
        long arrayIndex = toArrayIndex(ScriptRuntime.toNumber(str));
        if (Long.toString(arrayIndex).equals(str)) {
            return arrayIndex;
        }
        return -1L;
    }

    private static int toDenseIndex(Object obj) {
        long arrayIndex = toArrayIndex(obj);
        return (0 > arrayIndex || arrayIndex >= 2147483647L) ? -1 : (int) arrayIndex;
    }

    private static long toSliceIndex(double d, long j) {
        if (d < 0.0d) {
            double d2 = d + j;
            j = d2 < 0.0d ? 0L : (long) d2;
        } else if (d <= j) {
            j = (long) d;
        }
        return j;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String toStringHelper(org.mozilla.javascript.Context r6, org.mozilla.javascript.Scriptable r7, org.mozilla.javascript.Scriptable r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.toStringHelper(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, boolean, boolean):java.lang.String");
    }

    @Override // java.util.List
    public void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) > -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.mozilla.javascript.ScriptableObject
    protected void defineOwnProperty(Context context, Object obj, ScriptableObject scriptableObject, boolean z) {
        if (this.dense != null) {
            Object[] objArr = this.dense;
            this.dense = null;
            this.denseOnly = false;
            for (int i = 0; i < objArr.length; i++) {
                if (objArr[i] != NOT_FOUND) {
                    put(i, this, objArr[i]);
                }
            }
        }
        long arrayIndex = toArrayIndex(obj);
        if (arrayIndex >= this.length) {
            this.length = arrayIndex + 1;
        }
        super.defineOwnProperty(context, obj, scriptableObject, z);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void delete(int i) {
        if (this.dense == null || i < 0 || i >= this.dense.length || isSealed() || (!this.denseOnly && isGetterOrSetter(null, i, true))) {
            super.delete(i);
        } else {
            this.dense[i] = NOT_FOUND;
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        if (!idFunctionObject.hasTag(ARRAY_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        Scriptable scriptable3 = scriptable2;
        while (true) {
            boolean z = true;
            boolean z2 = true;
            int i = 0;
            switch (methodId) {
                case ConstructorId_isArray /* -26 */:
                    if (objArr.length <= 0 || !js_isArray(objArr[0])) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                case ConstructorId_reduceRight /* -25 */:
                case ConstructorId_reduce /* -24 */:
                case ConstructorId_findIndex /* -23 */:
                case ConstructorId_find /* -22 */:
                case ConstructorId_some /* -21 */:
                case ConstructorId_map /* -20 */:
                case ConstructorId_forEach /* -19 */:
                case ConstructorId_filter /* -18 */:
                case ConstructorId_every /* -17 */:
                case ConstructorId_lastIndexOf /* -16 */:
                case ConstructorId_indexOf /* -15 */:
                case ConstructorId_slice /* -14 */:
                case ConstructorId_concat /* -13 */:
                case ConstructorId_splice /* -12 */:
                case ConstructorId_unshift /* -11 */:
                case ConstructorId_shift /* -10 */:
                case ConstructorId_pop /* -9 */:
                case ConstructorId_push /* -8 */:
                case ConstructorId_sort /* -7 */:
                case ConstructorId_reverse /* -6 */:
                case ConstructorId_join /* -5 */:
                    objArr = objArr;
                    if (objArr.length > 0) {
                        scriptable3 = ScriptRuntime.toObject(context, scriptable, objArr[0]);
                        objArr = new Object[objArr.length - 1];
                        while (i < objArr.length) {
                            int i2 = i + 1;
                            objArr[i] = objArr[i2];
                            i = i2;
                        }
                    }
                    methodId = -methodId;
                default:
                    switch (methodId) {
                        case 1:
                            if (scriptable3 != null) {
                                z2 = false;
                            }
                            return !z2 ? idFunctionObject.construct(context, scriptable, objArr) : jsConstructor(context, scriptable, objArr);
                        case 2:
                            return toStringHelper(context, scriptable, scriptable3, context.hasFeature(4), false);
                        case 3:
                            return toStringHelper(context, scriptable, scriptable3, false, true);
                        case 4:
                            return toStringHelper(context, scriptable, scriptable3, true, false);
                        case 5:
                            return js_join(context, scriptable3, objArr);
                        case 6:
                            return js_reverse(context, scriptable3, objArr);
                        case 7:
                            return js_sort(context, scriptable, scriptable3, objArr);
                        case 8:
                            return js_push(context, scriptable3, objArr);
                        case 9:
                            return js_pop(context, scriptable3, objArr);
                        case 10:
                            return js_shift(context, scriptable3, objArr);
                        case 11:
                            return js_unshift(context, scriptable3, objArr);
                        case 12:
                            return js_splice(context, scriptable, scriptable3, objArr);
                        case 13:
                            return js_concat(context, scriptable, scriptable3, objArr);
                        case 14:
                            return js_slice(context, scriptable3, objArr);
                        case 15:
                            return js_indexOf(context, scriptable3, objArr);
                        case 16:
                            return js_lastIndexOf(context, scriptable3, objArr);
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                            return iterativeMethod(context, methodId, scriptable, scriptable3, objArr);
                        case 24:
                        case 25:
                            return reduceMethod(context, methodId, scriptable, scriptable3, objArr);
                        default:
                            throw new IllegalArgumentException(String.valueOf(methodId));
                    }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_join, "join", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_reverse, "reverse", 0);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_sort, "sort", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_push, "push", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_pop, "pop", 0);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_shift, "shift", 0);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_unshift, "unshift", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_splice, "splice", 2);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_concat, "concat", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_slice, "slice", 2);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_indexOf, "indexOf", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_lastIndexOf, "lastIndexOf", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_every, "every", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_filter, "filter", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_forEach, "forEach", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_map, "map", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_some, "some", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_find, "find", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_findIndex, "findIndex", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_reduce, "reduce", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_reduceRight, "reduceRight", 1);
        addIdFunctionProperty(idFunctionObject, ARRAY_TAG, ConstructorId_isArray, "isArray", 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int findInstanceIdInfo(String str) {
        return str.equals("length") ? instanceIdInfo(this.lengthAttr, 1) : super.findInstanceIdInfo(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:77:0x024b  */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findPrototypeId(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeArray.findPrototypeId(java.lang.String):int");
    }

    @Override // java.util.List
    public Object get(int i) {
        return get(i);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        return (this.denseOnly || !isGetterOrSetter(null, i, false)) ? (this.dense == null || i < 0 || i >= this.dense.length) ? super.get(i, scriptable) : this.dense[i] : super.get(i, scriptable);
    }

    public Object get(long j) {
        if (j < 0 || j >= this.length) {
            throw new IndexOutOfBoundsException();
        }
        Object rawElem = getRawElem(this, j);
        if (rawElem == Scriptable.NOT_FOUND || rawElem == Undefined.instance) {
            return null;
        }
        return rawElem instanceof Wrapper ? ((Wrapper) rawElem).unwrap() : rawElem;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.debug.DebuggableObject
    public Object[] getAllIds() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(getIds()));
        linkedHashSet.addAll(Arrays.asList(super.getAllIds()));
        return linkedHashSet.toArray();
    }

    @Override // org.mozilla.javascript.ScriptableObject
    public int getAttributes(int i) {
        if (this.dense == null || i < 0 || i >= this.dense.length || this.dense[i] == NOT_FOUND) {
            return super.getAttributes(i);
        }
        return 0;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Array";
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        return (cls == ScriptRuntime.NumberClass && Context.getContext().getLanguageVersion() == 120) ? Long.valueOf(this.length) : super.getDefaultValue(cls);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        Object[] ids = super.getIds();
        if (this.dense == null) {
            return ids;
        }
        int length = this.dense.length;
        long j = this.length;
        int i = length;
        if (length > j) {
            i = (int) j;
        }
        if (i == 0) {
            return ids;
        }
        int length2 = ids.length;
        Object[] objArr = new Object[i + length2];
        int i2 = 0;
        for (int i3 = 0; i3 != i; i3++) {
            i2 = i2;
            if (this.dense[i3] != NOT_FOUND) {
                objArr[i2] = Integer.valueOf(i3);
                i2++;
            }
        }
        if (i2 != i) {
            Object[] objArr2 = new Object[i2 + length2];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            objArr = objArr2;
        }
        System.arraycopy(ids, 0, objArr, i2, length2);
        return objArr;
    }

    public Integer[] getIndexIds() {
        Object[] ids = getIds();
        ArrayList arrayList = new ArrayList(ids.length);
        for (Object obj : ids) {
            int int32 = ScriptRuntime.toInt32(obj);
            if (int32 >= 0 && ScriptRuntime.toString(int32).equals(ScriptRuntime.toString(obj))) {
                arrayList.add(Integer.valueOf(int32));
            }
        }
        return (Integer[]) arrayList.toArray(new Integer[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        return i == 1 ? "length" : super.getInstanceIdName(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        return i == 1 ? ScriptRuntime.wrapNumber(this.length) : super.getInstanceIdValue(i);
    }

    public long getLength() {
        return this.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject
    public ScriptableObject getOwnPropertyDescriptor(Context context, Object obj) {
        int denseIndex;
        return (this.dense == null || (denseIndex = toDenseIndex(obj)) < 0 || denseIndex >= this.dense.length || this.dense[denseIndex] == NOT_FOUND) ? super.getOwnPropertyDescriptor(context, obj) : defaultIndexPropertyDescriptor(this.dense[denseIndex]);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        boolean z = false;
        if (!this.denseOnly && isGetterOrSetter(null, i, false)) {
            return super.has(i, scriptable);
        }
        if (this.dense == null || i < 0 || i >= this.dense.length) {
            return super.has(i, scriptable);
        }
        if (this.dense[i] != NOT_FOUND) {
            z = true;
        }
        return z;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i = (int) j;
        if (obj == null) {
            for (int i2 = 0; i2 < i; i2++) {
                if (get(i2) == null) {
                    return i2;
                }
            }
            return -1;
        }
        for (int i3 = 0; i3 < i; i3++) {
            if (obj.equals(get(i3))) {
                return i3;
            }
        }
        return -1;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                break;
            case 2:
                str = "toString";
                i2 = 0;
                break;
            case 3:
                str = "toLocaleString";
                i2 = 0;
                break;
            case 4:
                str = "toSource";
                i2 = 0;
                break;
            case 5:
                str = "join";
                break;
            case 6:
                str = "reverse";
                i2 = 0;
                break;
            case 7:
                str = "sort";
                break;
            case 8:
                str = "push";
                break;
            case 9:
                str = "pop";
                i2 = 0;
                break;
            case 10:
                str = "shift";
                i2 = 0;
                break;
            case 11:
                str = "unshift";
                break;
            case 12:
                str = "splice";
                i2 = 2;
                break;
            case 13:
                str = "concat";
                break;
            case 14:
                str = "slice";
                i2 = 2;
                break;
            case 15:
                str = "indexOf";
                break;
            case 16:
                str = "lastIndexOf";
                break;
            case 17:
                str = "every";
                break;
            case 18:
                str = "filter";
                break;
            case 19:
                str = "forEach";
                break;
            case 20:
                str = "map";
                break;
            case 21:
                str = "some";
                break;
            case 22:
                str = "find";
                break;
            case 23:
                str = "findIndex";
                break;
            case 24:
                str = "reduce";
                break;
            case 25:
                str = "reduceRight";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(ARRAY_TAG, i, str, i2);
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Deprecated
    public long jsGet_length() {
        return getLength();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i = (int) j;
        if (obj == null) {
            while (true) {
                i--;
                if (i < 0) {
                    return -1;
                }
                if (get(i) == null) {
                    return i;
                }
            }
        } else {
            while (true) {
                i--;
                if (i < 0) {
                    return -1;
                }
                if (obj.equals(get(i))) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public ListIterator listIterator(final int i) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        final int i2 = (int) j;
        if (i >= 0 && i <= i2) {
            return new ListIterator() { // from class: org.mozilla.javascript.NativeArray.3
                int cursor;

                {
                    this.cursor = i;
                }

                @Override // java.util.ListIterator
                public void add(Object obj) {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public boolean hasNext() {
                    return this.cursor < i2;
                }

                @Override // java.util.ListIterator
                public boolean hasPrevious() {
                    return this.cursor > 0;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public Object next() {
                    if (this.cursor == i2) {
                        throw new NoSuchElementException();
                    }
                    NativeArray nativeArray = NativeArray.this;
                    int i3 = this.cursor;
                    this.cursor = i3 + 1;
                    return nativeArray.get(i3);
                }

                @Override // java.util.ListIterator
                public int nextIndex() {
                    return this.cursor;
                }

                @Override // java.util.ListIterator
                public Object previous() {
                    if (this.cursor == 0) {
                        throw new NoSuchElementException();
                    }
                    NativeArray nativeArray = NativeArray.this;
                    int i3 = this.cursor - 1;
                    this.cursor = i3;
                    return nativeArray.get(i3);
                }

                @Override // java.util.ListIterator
                public int previousIndex() {
                    return this.cursor - 1;
                }

                @Override // java.util.ListIterator, java.util.Iterator
                public void remove() {
                    throw new UnsupportedOperationException();
                }

                @Override // java.util.ListIterator
                public void set(Object obj) {
                    throw new UnsupportedOperationException();
                }
            };
        }
        throw new IndexOutOfBoundsException("Index: " + i);
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        if (scriptable == this && !isSealed() && this.dense != null && i >= 0 && (this.denseOnly || !isGetterOrSetter(null, i, true))) {
            if (!isExtensible() && this.length <= i) {
                return;
            }
            if (i < this.dense.length) {
                this.dense[i] = obj;
                long j = i;
                if (this.length <= j) {
                    this.length = j + 1;
                    return;
                }
                return;
            } else if (!this.denseOnly || i >= this.dense.length * GROW_FACTOR || !ensureCapacity(i + 1)) {
                this.denseOnly = false;
            } else {
                this.dense[i] = obj;
                this.length = i + 1;
                return;
            }
        }
        super.put(i, scriptable, obj);
        if (scriptable == this && (this.lengthAttr & 1) == 0) {
            long j2 = i;
            if (this.length <= j2) {
                this.length = j2 + 1;
            }
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        super.put(str, scriptable, obj);
        if (scriptable == this) {
            long arrayIndex = toArrayIndex(str);
            if (arrayIndex >= this.length) {
                this.length = arrayIndex + 1;
                this.denseOnly = false;
            }
        }
    }

    @Override // java.util.List
    public Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDenseOnly(boolean z) {
        if (!z || this.denseOnly) {
            this.denseOnly = z;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdAttributes(int i, int i2) {
        if (i == 1) {
            this.lengthAttr = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1) {
            setLength(obj);
        } else {
            super.setInstanceIdValue(i, obj);
        }
    }

    @Override // org.mozilla.javascript.ScriptableObject, java.util.List, java.util.Collection
    public int size() {
        long j = this.length;
        if (j <= 2147483647L) {
            return (int) j;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.List
    public List subList(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return toArray(ScriptRuntime.emptyArgs);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        long j = this.length;
        if (j > 2147483647L) {
            throw new IllegalStateException();
        }
        int i = (int) j;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = get(i2);
        }
        return objArr;
    }
}
