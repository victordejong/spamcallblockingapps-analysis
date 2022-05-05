package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.Map;
import org.mozilla.javascript.TopLevel;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJavaObject.class */
public class NativeJavaObject implements Scriptable, Wrapper, Serializable {
    private static final Object COERCED_INTERFACE_KEY = "Coerced Interface";
    static final byte CONVERSION_NONE = 99;
    static final byte CONVERSION_NONTRIVIAL = 0;
    static final byte CONVERSION_TRIVIAL = 1;
    private static final int JSTYPE_BOOLEAN = 2;
    private static final int JSTYPE_JAVA_ARRAY = 7;
    private static final int JSTYPE_JAVA_CLASS = 5;
    private static final int JSTYPE_JAVA_OBJECT = 6;
    private static final int JSTYPE_NULL = 1;
    private static final int JSTYPE_NUMBER = 3;
    private static final int JSTYPE_OBJECT = 8;
    private static final int JSTYPE_STRING = 4;
    private static final int JSTYPE_UNDEFINED = 0;
    private static Method adapter_readAdapterObject;
    private static Method adapter_writeAdapterObject;
    static final long serialVersionUID = -6948590651130498591L;
    private transient Map<String, FieldAndMethods> fieldAndMethods;
    protected transient boolean isAdapter;
    protected transient Object javaObject;
    protected transient JavaMembers members;
    protected Scriptable parent;
    protected Scriptable prototype;
    protected transient Class<?> staticType;

    static {
        Class<?>[] clsArr = new Class[2];
        Class<?> classOrNull = Kit.classOrNull("org.mozilla.javascript.JavaAdapter");
        if (classOrNull != null) {
            try {
                clsArr[0] = ScriptRuntime.ObjectClass;
                clsArr[1] = Kit.classOrNull("java.io.ObjectOutputStream");
                adapter_writeAdapterObject = classOrNull.getMethod("writeAdapterObject", clsArr);
                clsArr[0] = ScriptRuntime.ScriptableClass;
                clsArr[1] = Kit.classOrNull("java.io.ObjectInputStream");
                adapter_readAdapterObject = classOrNull.getMethod("readAdapterObject", clsArr);
            } catch (NoSuchMethodException e) {
                adapter_writeAdapterObject = null;
                adapter_readAdapterObject = null;
            }
        }
    }

    public NativeJavaObject() {
    }

    public NativeJavaObject(Scriptable scriptable, Object obj, Class<?> cls) {
        this(scriptable, obj, cls, false);
    }

    public NativeJavaObject(Scriptable scriptable, Object obj, Class<?> cls, boolean z) {
        this.parent = scriptable;
        this.javaObject = obj;
        this.staticType = cls;
        this.isAdapter = z;
        initMembers();
    }

    public static boolean canConvert(Object obj, Class<?> cls) {
        return getConversionWeight(obj, cls) < 99;
    }

    private static Object coerceToNumber(Class<?> cls, Object obj) {
        Class<?> cls2 = obj.getClass();
        if (cls == Character.TYPE || cls == ScriptRuntime.CharacterClass) {
            return cls2 == ScriptRuntime.CharacterClass ? obj : Character.valueOf((char) toInteger(obj, ScriptRuntime.CharacterClass, 0.0d, 65535.0d));
        }
        if (cls == ScriptRuntime.ObjectClass || cls == ScriptRuntime.DoubleClass || cls == Double.TYPE) {
            if (cls2 != ScriptRuntime.DoubleClass) {
                obj = new Double(toDouble(obj));
            }
            return obj;
        } else if (cls == ScriptRuntime.FloatClass || cls == Float.TYPE) {
            if (cls2 == ScriptRuntime.FloatClass) {
                return obj;
            }
            double d = toDouble(obj);
            if (!Double.isInfinite(d) && !Double.isNaN(d)) {
                double d2 = 0.0d;
                int i = (d > 0.0d ? 1 : (d == 0.0d ? 0 : -1));
                if (i != 0) {
                    double abs = Math.abs(d);
                    if (abs < 1.401298464324817E-45d) {
                        if (i <= 0) {
                            d2 = 0.0d;
                        }
                        return new Float(d2);
                    } else if (abs <= 3.4028234663852886E38d) {
                        return new Float((float) d);
                    } else {
                        return new Float(i > 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY);
                    }
                }
            }
            return new Float((float) d);
        } else if (cls == ScriptRuntime.IntegerClass || cls == Integer.TYPE) {
            return cls2 == ScriptRuntime.IntegerClass ? obj : Integer.valueOf((int) toInteger(obj, ScriptRuntime.IntegerClass, -2.147483648E9d, 2.147483647E9d));
        } else {
            if (cls != ScriptRuntime.LongClass && cls != Long.TYPE) {
                return (cls == ScriptRuntime.ShortClass || cls == Short.TYPE) ? cls2 == ScriptRuntime.ShortClass ? obj : Short.valueOf((short) toInteger(obj, ScriptRuntime.ShortClass, -32768.0d, 32767.0d)) : (cls == ScriptRuntime.ByteClass || cls == Byte.TYPE) ? cls2 == ScriptRuntime.ByteClass ? obj : Byte.valueOf((byte) toInteger(obj, ScriptRuntime.ByteClass, -128.0d, 127.0d)) : new Double(toDouble(obj));
            }
            if (cls2 == ScriptRuntime.LongClass) {
                return obj;
            }
            return Long.valueOf(toInteger(obj, ScriptRuntime.LongClass, Double.longBitsToDouble(-4332462841530417152L), Double.longBitsToDouble(4890909195324358655L)));
        }
    }

    @Deprecated
    public static Object coerceType(Class<?> cls, Object obj) {
        return coerceTypeImpl(cls, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object coerceTypeImpl(Class<?> cls, Object obj) {
        if (obj != null && obj.getClass() == cls) {
            return obj;
        }
        switch (getJSTypeCode(obj)) {
            case 0:
                if (cls != ScriptRuntime.StringClass && cls != ScriptRuntime.ObjectClass) {
                    reportConversionError("undefined", cls);
                    break;
                } else {
                    return "undefined";
                }
            case 1:
                if (!cls.isPrimitive()) {
                    return null;
                }
                reportConversionError(obj, cls);
                return null;
            case 2:
                if (cls == Boolean.TYPE || cls == ScriptRuntime.BooleanClass || cls == ScriptRuntime.ObjectClass) {
                    return obj;
                }
                if (cls != ScriptRuntime.StringClass) {
                    reportConversionError(obj, cls);
                    break;
                } else {
                    return obj.toString();
                }
                break;
            case 3:
                if (cls == ScriptRuntime.StringClass) {
                    return ScriptRuntime.toString(obj);
                }
                if (cls == ScriptRuntime.ObjectClass) {
                    return coerceToNumber(Double.TYPE, obj);
                }
                if ((!cls.isPrimitive() || cls == Boolean.TYPE) && !ScriptRuntime.NumberClass.isAssignableFrom(cls)) {
                    reportConversionError(obj, cls);
                    break;
                } else {
                    return coerceToNumber(cls, obj);
                }
                break;
            case 4:
                if (cls == ScriptRuntime.StringClass || cls.isInstance(obj)) {
                    return obj.toString();
                }
                if (cls == Character.TYPE || cls == ScriptRuntime.CharacterClass) {
                    CharSequence charSequence = (CharSequence) obj;
                    return charSequence.length() == 1 ? Character.valueOf(charSequence.charAt(0)) : coerceToNumber(cls, obj);
                } else if ((!cls.isPrimitive() || cls == Boolean.TYPE) && !ScriptRuntime.NumberClass.isAssignableFrom(cls)) {
                    reportConversionError(obj, cls);
                    break;
                } else {
                    return coerceToNumber(cls, obj);
                }
                break;
            case 5:
                Object obj2 = obj;
                if (obj instanceof Wrapper) {
                    obj2 = ((Wrapper) obj).unwrap();
                }
                if (cls == ScriptRuntime.ClassClass || cls == ScriptRuntime.ObjectClass) {
                    return obj2;
                }
                if (cls != ScriptRuntime.StringClass) {
                    reportConversionError(obj2, cls);
                    obj = obj2;
                    break;
                } else {
                    return obj2.toString();
                }
            case 6:
            case 7:
                Object obj3 = obj;
                if (obj instanceof Wrapper) {
                    obj3 = ((Wrapper) obj).unwrap();
                }
                if (cls.isPrimitive()) {
                    if (cls == Boolean.TYPE) {
                        reportConversionError(obj3, cls);
                    }
                    return coerceToNumber(cls, obj3);
                } else if (cls == ScriptRuntime.StringClass) {
                    return obj3.toString();
                } else {
                    if (!cls.isInstance(obj3)) {
                        reportConversionError(obj3, cls);
                        obj = obj3;
                        break;
                    } else {
                        return obj3;
                    }
                }
            case 8:
                if (cls == ScriptRuntime.StringClass) {
                    return ScriptRuntime.toString(obj);
                }
                if (cls.isPrimitive()) {
                    if (cls == Boolean.TYPE) {
                        reportConversionError(obj, cls);
                    }
                    return coerceToNumber(cls, obj);
                } else if (cls.isInstance(obj)) {
                    return obj;
                } else {
                    if (cls == ScriptRuntime.DateClass && (obj instanceof NativeDate)) {
                        return new Date((long) ((NativeDate) obj).getJSTimeValue());
                    }
                    if (cls.isArray() && (obj instanceof NativeArray)) {
                        NativeArray nativeArray = (NativeArray) obj;
                        long length = nativeArray.getLength();
                        Class<?> componentType = cls.getComponentType();
                        Object newInstance = Array.newInstance(componentType, (int) length);
                        for (int i = 0; i < length; i++) {
                            try {
                                Array.set(newInstance, i, coerceTypeImpl(componentType, nativeArray.get(i, nativeArray)));
                            } catch (EvaluatorException e) {
                                reportConversionError(obj, cls);
                            }
                        }
                        return newInstance;
                    } else if (obj instanceof Wrapper) {
                        obj = ((Wrapper) obj).unwrap();
                        if (!cls.isInstance(obj)) {
                            reportConversionError(obj, cls);
                            break;
                        } else {
                            return obj;
                        }
                    } else if (!cls.isInterface() || (!(obj instanceof NativeObject) && !(obj instanceof NativeFunction))) {
                        reportConversionError(obj, cls);
                        break;
                    } else {
                        return createInterfaceAdapter(cls, (ScriptableObject) obj);
                    }
                }
                break;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object createInterfaceAdapter(Class<?> cls, ScriptableObject scriptableObject) {
        Object makeHashKeyFromPair = Kit.makeHashKeyFromPair(COERCED_INTERFACE_KEY, cls);
        Object associatedValue = scriptableObject.getAssociatedValue(makeHashKeyFromPair);
        return associatedValue != null ? associatedValue : scriptableObject.associateValue(makeHashKeyFromPair, InterfaceAdapter.create(Context.getContext(), cls, scriptableObject));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getConversionWeight(Object obj, Class<?> cls) {
        int jSTypeCode = getJSTypeCode(obj);
        int i = 99;
        switch (jSTypeCode) {
            case 0:
                return (cls == ScriptRuntime.StringClass || cls == ScriptRuntime.ObjectClass) ? 1 : 99;
            case 1:
                return !cls.isPrimitive() ? 1 : 99;
            case 2:
                if (cls == Boolean.TYPE) {
                    return 1;
                }
                if (cls == ScriptRuntime.BooleanClass) {
                    return 2;
                }
                if (cls == ScriptRuntime.ObjectClass) {
                    return 3;
                }
                return cls == ScriptRuntime.StringClass ? 4 : 99;
            case 3:
                if (cls.isPrimitive()) {
                    if (cls == Double.TYPE) {
                        return 1;
                    }
                    if (cls != Boolean.TYPE) {
                        return getSizeRank(cls) + 1;
                    }
                    return 99;
                } else if (cls == ScriptRuntime.StringClass) {
                    return 9;
                } else {
                    if (cls == ScriptRuntime.ObjectClass) {
                        return 10;
                    }
                    return ScriptRuntime.NumberClass.isAssignableFrom(cls) ? 2 : 99;
                }
            case 4:
                if (cls == ScriptRuntime.StringClass) {
                    return 1;
                }
                if (cls.isInstance(obj)) {
                    return 2;
                }
                if (!cls.isPrimitive()) {
                    return 99;
                }
                if (cls == Character.TYPE) {
                    return 3;
                }
                return cls != Boolean.TYPE ? 4 : 99;
            case 5:
                if (cls == ScriptRuntime.ClassClass) {
                    return 1;
                }
                if (cls == ScriptRuntime.ObjectClass) {
                    return 3;
                }
                return cls == ScriptRuntime.StringClass ? 4 : 99;
            case 6:
            case 7:
                Object obj2 = obj;
                if (obj instanceof Wrapper) {
                    obj2 = ((Wrapper) obj).unwrap();
                }
                if (cls.isInstance(obj2)) {
                    return 0;
                }
                if (cls == ScriptRuntime.StringClass) {
                    return 2;
                }
                if (!cls.isPrimitive() || cls == Boolean.TYPE) {
                    return 99;
                }
                if (jSTypeCode != 7) {
                    i = getSizeRank(cls) + 2;
                }
                return i;
            case 8:
                if (cls != ScriptRuntime.ObjectClass && cls.isInstance(obj)) {
                    return 1;
                }
                if (cls.isArray()) {
                    return obj instanceof NativeArray ? 2 : 99;
                }
                if (cls == ScriptRuntime.ObjectClass) {
                    return 3;
                }
                if (cls == ScriptRuntime.StringClass) {
                    return 4;
                }
                if (cls == ScriptRuntime.DateClass) {
                    return obj instanceof NativeDate ? 1 : 99;
                }
                if (cls.isInterface()) {
                    return ((obj instanceof NativeObject) || (obj instanceof NativeFunction)) ? 1 : 12;
                }
                if (!cls.isPrimitive() || cls == Boolean.TYPE) {
                    return 99;
                }
                return getSizeRank(cls) + 4;
            default:
                return 99;
        }
    }

    private static int getJSTypeCode(Object obj) {
        if (obj == null) {
            return 1;
        }
        if (obj == Undefined.instance) {
            return 0;
        }
        if (obj instanceof CharSequence) {
            return 4;
        }
        if (obj instanceof Number) {
            return 3;
        }
        if (obj instanceof Boolean) {
            return 2;
        }
        if (obj instanceof Scriptable) {
            if (obj instanceof NativeJavaClass) {
                return 5;
            }
            if (obj instanceof NativeJavaArray) {
                return 7;
            }
            return obj instanceof Wrapper ? 6 : 8;
        } else if (obj instanceof Class) {
            return 5;
        } else {
            return obj.getClass().isArray() ? 7 : 6;
        }
    }

    static int getSizeRank(Class<?> cls) {
        if (cls == Double.TYPE) {
            return 1;
        }
        if (cls == Float.TYPE) {
            return 2;
        }
        if (cls == Long.TYPE) {
            return 3;
        }
        if (cls == Integer.TYPE) {
            return 4;
        }
        if (cls == Short.TYPE) {
            return 5;
        }
        if (cls == Character.TYPE) {
            return 6;
        }
        if (cls == Byte.TYPE) {
            return 7;
        }
        return cls == Boolean.TYPE ? 99 : 8;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.isAdapter = objectInputStream.readBoolean();
        if (!this.isAdapter) {
            this.javaObject = objectInputStream.readObject();
        } else if (adapter_readAdapterObject == null) {
            throw new ClassNotFoundException();
        } else {
            try {
                this.javaObject = adapter_readAdapterObject.invoke(null, this, objectInputStream);
            } catch (Exception e) {
                throw new IOException();
            }
        }
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.staticType = Class.forName(str);
        } else {
            this.staticType = null;
        }
        initMembers();
    }

    static void reportConversionError(Object obj, Class<?> cls) {
        throw Context.reportRuntimeError2("msg.conversion.not.allowed", String.valueOf(obj), JavaMembers.javaSignature(cls));
    }

    private static double toDouble(Object obj) {
        Method method;
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        if (obj instanceof String) {
            return ScriptRuntime.toNumber((String) obj);
        }
        if (obj instanceof Scriptable) {
            return obj instanceof Wrapper ? toDouble(((Wrapper) obj).unwrap()) : ScriptRuntime.toNumber(obj);
        }
        try {
            method = obj.getClass().getMethod("doubleValue", null);
        } catch (NoSuchMethodException | SecurityException e) {
            method = null;
        }
        if (method != null) {
            try {
                return ((Number) method.invoke(obj, null)).doubleValue();
            } catch (IllegalAccessException e2) {
                reportConversionError(obj, Double.TYPE);
            } catch (InvocationTargetException e3) {
                reportConversionError(obj, Double.TYPE);
            }
        }
        return ScriptRuntime.toNumber(obj.toString());
    }

    private static long toInteger(Object obj, Class<?> cls, double d, double d2) {
        double d3 = toDouble(obj);
        if (Double.isInfinite(d3) || Double.isNaN(d3)) {
            reportConversionError(ScriptRuntime.toString(obj), cls);
        }
        double floor = d3 > 0.0d ? Math.floor(d3) : Math.ceil(d3);
        if (floor < d || floor > d2) {
            reportConversionError(ScriptRuntime.toString(obj), cls);
        }
        return (long) floor;
    }

    @Deprecated
    public static Object wrap(Scriptable scriptable, Object obj, Class<?> cls) {
        Context context = Context.getContext();
        return context.getWrapFactory().wrap(context, scriptable, obj, cls);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeBoolean(this.isAdapter);
        if (!this.isAdapter) {
            objectOutputStream.writeObject(this.javaObject);
        } else if (adapter_writeAdapterObject == null) {
            throw new IOException();
        } else {
            try {
                adapter_writeAdapterObject.invoke(null, this.javaObject, objectOutputStream);
            } catch (Exception e) {
                throw new IOException();
            }
        }
        if (this.staticType != null) {
            objectOutputStream.writeObject(this.staticType.getClass().getName());
        } else {
            objectOutputStream.writeObject(null);
        }
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(int i) {
    }

    @Override // org.mozilla.javascript.Scriptable
    public void delete(String str) {
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(int i, Scriptable scriptable) {
        throw this.members.reportMemberNotFound(Integer.toString(i));
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object get(String str, Scriptable scriptable) {
        FieldAndMethods fieldAndMethods;
        return (this.fieldAndMethods == null || (fieldAndMethods = this.fieldAndMethods.get(str)) == null) ? this.members.get(this, str, this.javaObject, false) : fieldAndMethods;
    }

    @Override // org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "JavaObject";
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        Object obj;
        String str;
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = cls;
            if (this.javaObject instanceof Boolean) {
                cls2 = ScriptRuntime.BooleanClass;
            }
        }
        if (cls2 == null || cls2 == ScriptRuntime.StringClass) {
            obj = this.javaObject.toString();
        } else {
            if (cls2 == ScriptRuntime.BooleanClass) {
                str = "booleanValue";
            } else if (cls2 == ScriptRuntime.NumberClass) {
                str = "doubleValue";
            } else {
                throw Context.reportRuntimeError0("msg.default.value");
            }
            Object obj2 = get(str, this);
            if (obj2 instanceof Function) {
                Function function = (Function) obj2;
                obj = function.call(Context.getContext(), function.getParentScope(), this, ScriptRuntime.emptyArgs);
            } else if (cls2 != ScriptRuntime.NumberClass || !(this.javaObject instanceof Boolean)) {
                obj = this.javaObject.toString();
            } else {
                obj = ScriptRuntime.wrapNumber(((Boolean) this.javaObject).booleanValue() ? 1.0d : 0.0d);
            }
        }
        return obj;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Object[] getIds() {
        return this.members.getIds(false);
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getParentScope() {
        return this.parent;
    }

    @Override // org.mozilla.javascript.Scriptable
    public Scriptable getPrototype() {
        return (this.prototype != null || !(this.javaObject instanceof String)) ? this.prototype : TopLevel.getBuiltinPrototype(ScriptableObject.getTopLevelScope(this.parent), TopLevel.Builtins.String);
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(int i, Scriptable scriptable) {
        return false;
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean has(String str, Scriptable scriptable) {
        return this.members.has(str, false);
    }

    @Override // org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        return false;
    }

    protected void initMembers() {
        this.members = JavaMembers.lookupClass(this.parent, this.javaObject != null ? this.javaObject.getClass() : this.staticType, this.staticType, this.isAdapter);
        this.fieldAndMethods = this.members.getFieldAndMethodsObjects(this, this.javaObject, false);
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(int i, Scriptable scriptable, Object obj) {
        throw this.members.reportMemberNotFound(Integer.toString(i));
    }

    @Override // org.mozilla.javascript.Scriptable
    public void put(String str, Scriptable scriptable, Object obj) {
        if (this.prototype == null || this.members.has(str, false)) {
            this.members.put(this, str, this.javaObject, obj, false);
        } else {
            this.prototype.put(str, this.prototype, obj);
        }
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setParentScope(Scriptable scriptable) {
        this.parent = scriptable;
    }

    @Override // org.mozilla.javascript.Scriptable
    public void setPrototype(Scriptable scriptable) {
        this.prototype = scriptable;
    }

    public Object unwrap() {
        return this.javaObject;
    }
}
