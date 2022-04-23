package org.mozilla.javascript;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import org.mozilla.javascript.json.JsonParser;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJSON.class */
public final class NativeJSON extends IdScriptableObject {
    private static final int Id_parse = 2;
    private static final int Id_stringify = 3;
    private static final int Id_toSource = 1;
    private static final Object JSON_TAG = "JSON";
    private static final int LAST_METHOD_ID = 3;
    private static final int MAX_ID = 3;
    private static final int MAX_STRINGIFY_GAP_LENGTH = 10;
    static final long serialVersionUID = -4567599697595654984L;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeJSON$StringifyState.class */
    public static class StringifyState {

        /* renamed from: cx */
        Context f775cx;
        String gap;
        String indent;
        List<Object> propertyList;
        Callable replacer;
        Scriptable scope;
        Object space;
        Stack<Scriptable> stack = new Stack<>();

        StringifyState(Context context, Scriptable scriptable, String str, String str2, Callable callable, List<Object> list, Object obj) {
            this.f775cx = context;
            this.scope = scriptable;
            this.indent = str;
            this.gap = str2;
            this.replacer = callable;
            this.propertyList = list;
            this.space = obj;
        }
    }

    private NativeJSON() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        NativeJSON nativeJSON = new NativeJSON();
        nativeJSON.activatePrototypeMap(3);
        nativeJSON.setPrototype(getObjectPrototype(scriptable));
        nativeJSON.setParentScope(scriptable);
        if (z) {
            nativeJSON.sealObject();
        }
        ScriptableObject.defineProperty(scriptable, "JSON", nativeJSON, 2);
    }

    /* renamed from: ja */
    private static String m219ja(NativeArray nativeArray, StringifyState stringifyState) {
        String str;
        if (stringifyState.stack.search(nativeArray) != -1) {
            throw ScriptRuntime.typeError0("msg.cyclic.value");
        }
        stringifyState.stack.push(nativeArray);
        String str2 = stringifyState.indent;
        stringifyState.indent += stringifyState.gap;
        LinkedList linkedList = new LinkedList();
        long length = nativeArray.getLength();
        long j = 0;
        while (j < length) {
            Object str3 = j > 2147483647L ? str(Long.toString(j), nativeArray, stringifyState) : str(Integer.valueOf((int) j), nativeArray, stringifyState);
            if (str3 == Undefined.instance) {
                linkedList.add("null");
            } else {
                linkedList.add(str3);
            }
            j++;
        }
        if (linkedList.isEmpty()) {
            str = "[]";
        } else if (stringifyState.gap.length() == 0) {
            str = '[' + join(linkedList, ",") + ']';
        } else {
            str = "[\n" + stringifyState.indent + join(linkedList, ",\n" + stringifyState.indent) + '\n' + str2 + ']';
        }
        stringifyState.stack.pop();
        stringifyState.indent = str2;
        return str;
    }

    /* renamed from: jo */
    private static String m218jo(Scriptable scriptable, StringifyState stringifyState) {
        String str;
        if (stringifyState.stack.search(scriptable) != -1) {
            throw ScriptRuntime.typeError0("msg.cyclic.value");
        }
        stringifyState.stack.push(scriptable);
        String str2 = stringifyState.indent;
        stringifyState.indent += stringifyState.gap;
        Object[] array = stringifyState.propertyList != null ? stringifyState.propertyList.toArray() : scriptable.getIds();
        LinkedList linkedList = new LinkedList();
        for (Object obj : array) {
            Object str3 = str(obj, scriptable, stringifyState);
            if (str3 != Undefined.instance) {
                String str4 = quote(obj.toString()) + ":";
                String str5 = str4;
                if (stringifyState.gap.length() > 0) {
                    str5 = str4 + " ";
                }
                linkedList.add(str5 + str3);
            }
        }
        if (linkedList.isEmpty()) {
            str = "{}";
        } else if (stringifyState.gap.length() == 0) {
            str = '{' + join(linkedList, ",") + '}';
        } else {
            str = "{\n" + stringifyState.indent + join(linkedList, ",\n" + stringifyState.indent) + '\n' + str2 + '}';
        }
        stringifyState.stack.pop();
        stringifyState.indent = str2;
        return str;
    }

    private static String join(Collection<Object> collection, String str) {
        if (collection == null || collection.isEmpty()) {
            return "";
        }
        Iterator<Object> it = collection.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder(it.next().toString());
        while (it.hasNext()) {
            sb.append(str);
            sb.append(it.next().toString());
        }
        return sb.toString();
    }

    private static Object parse(Context context, Scriptable scriptable, String str) {
        try {
            return new JsonParser(context, scriptable).parseValue(str);
        } catch (JsonParser.ParseException e) {
            throw ScriptRuntime.constructError("SyntaxError", e.getMessage());
        }
    }

    public static Object parse(Context context, Scriptable scriptable, String str, Callable callable) {
        Object parse = parse(context, scriptable, str);
        Scriptable newObject = context.newObject(scriptable);
        newObject.put("", newObject, parse);
        return walk(context, scriptable, callable, newObject, "");
    }

    private static String quote(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                sb.append("\\\"");
            } else if (charAt != '\\') {
                switch (charAt) {
                    case '\b':
                        sb.append("\\b");
                        continue;
                    case '\t':
                        sb.append("\\t");
                        continue;
                    case '\n':
                        sb.append("\\n");
                        continue;
                    default:
                        switch (charAt) {
                            case '\f':
                                sb.append("\\f");
                                continue;
                            case '\r':
                                sb.append("\\r");
                                continue;
                            default:
                                if (charAt >= ' ') {
                                    sb.append(charAt);
                                    break;
                                } else {
                                    sb.append("\\u");
                                    sb.append(String.format("%04x", Integer.valueOf(charAt)));
                                    continue;
                                    continue;
                                }
                        }
                }
            } else {
                sb.append("\\\\");
            }
        }
        sb.append('\"');
        return sb.toString();
    }

    private static String repeat(char c, int i) {
        char[] cArr = new char[i];
        Arrays.fill(cArr, c);
        return new String(cArr);
    }

    private static Object str(Object obj, Scriptable scriptable, StringifyState stringifyState) {
        Object obj2;
        Object property = obj instanceof String ? getProperty(scriptable, (String) obj) : getProperty(scriptable, ((Number) obj).intValue());
        Object obj3 = property;
        if (property instanceof Scriptable) {
            Scriptable scriptable2 = (Scriptable) property;
            obj3 = property;
            if (getProperty(scriptable2, "toJSON") instanceof Callable) {
                obj3 = callMethod(stringifyState.f775cx, scriptable2, "toJSON", new Object[]{obj});
            }
        }
        Object obj4 = obj3;
        if (stringifyState.replacer != null) {
            obj4 = stringifyState.replacer.call(stringifyState.f775cx, stringifyState.scope, scriptable, new Object[]{obj, obj3});
        }
        if (obj4 instanceof NativeNumber) {
            obj2 = Double.valueOf(ScriptRuntime.toNumber(obj4));
        } else if (obj4 instanceof NativeString) {
            obj2 = ScriptRuntime.toString(obj4);
        } else {
            obj2 = obj4;
            if (obj4 instanceof NativeBoolean) {
                obj2 = ((NativeBoolean) obj4).getDefaultValue(ScriptRuntime.BooleanClass);
            }
        }
        if (obj2 == null) {
            return "null";
        }
        if (obj2.equals(Boolean.TRUE)) {
            return "true";
        }
        if (obj2.equals(Boolean.FALSE)) {
            return "false";
        }
        if (obj2 instanceof CharSequence) {
            return quote(obj2.toString());
        }
        if (!(obj2 instanceof Number)) {
            return (!(obj2 instanceof Scriptable) || (obj2 instanceof Callable)) ? Undefined.instance : obj2 instanceof NativeArray ? m219ja((NativeArray) obj2, stringifyState) : m218jo((Scriptable) obj2, stringifyState);
        }
        double doubleValue = ((Number) obj2).doubleValue();
        return (doubleValue != doubleValue || doubleValue == Double.POSITIVE_INFINITY || doubleValue == Double.NEGATIVE_INFINITY) ? "null" : ScriptRuntime.toString(obj2);
    }

    public static Object stringify(Context context, Scriptable scriptable, Object obj, Object obj2, Object obj3) {
        LinkedList linkedList;
        Callable callable;
        Object obj4;
        Object obj5;
        String str;
        if (obj2 instanceof Callable) {
            callable = (Callable) obj2;
            linkedList = null;
        } else if (obj2 instanceof NativeArray) {
            linkedList = new LinkedList();
            NativeArray nativeArray = (NativeArray) obj2;
            for (Integer num : nativeArray.getIndexIds()) {
                Object obj6 = nativeArray.get(num.intValue(), nativeArray);
                if ((obj6 instanceof String) || (obj6 instanceof Number)) {
                    linkedList.add(obj6);
                } else if ((obj6 instanceof NativeString) || (obj6 instanceof NativeNumber)) {
                    linkedList.add(ScriptRuntime.toString(obj6));
                }
            }
            callable = null;
        } else {
            callable = null;
            linkedList = null;
        }
        if (obj3 instanceof NativeNumber) {
            obj4 = Double.valueOf(ScriptRuntime.toNumber(obj3));
        } else {
            obj4 = obj3;
            if (obj3 instanceof NativeString) {
                obj4 = ScriptRuntime.toString(obj3);
            }
        }
        if (obj4 instanceof Number) {
            int min = Math.min(10, (int) ScriptRuntime.toInteger(obj4));
            str = min > 0 ? repeat(' ', min) : "";
            obj5 = Integer.valueOf(min);
        } else if (obj4 instanceof String) {
            String str2 = (String) obj4;
            str = str2;
            if (str2.length() > 10) {
                str = str2.substring(0, 10);
            }
            obj5 = obj4;
        } else {
            str = "";
            obj5 = obj4;
        }
        StringifyState stringifyState = new StringifyState(context, scriptable, "", str, callable, linkedList, obj5);
        NativeObject nativeObject = new NativeObject();
        nativeObject.setParentScope(scriptable);
        nativeObject.setPrototype(ScriptableObject.getObjectPrototype(scriptable));
        nativeObject.defineProperty("", obj, 0);
        return str("", nativeObject, stringifyState);
    }

    private static Object walk(Context context, Scriptable scriptable, Callable callable, Scriptable scriptable2, Object obj) {
        Object[] ids;
        Object obj2 = obj instanceof Number ? scriptable2.get(((Number) obj).intValue(), scriptable2) : scriptable2.get((String) obj, scriptable2);
        if (obj2 instanceof Scriptable) {
            Scriptable scriptable3 = (Scriptable) obj2;
            if (scriptable3 instanceof NativeArray) {
                long length = ((NativeArray) scriptable3).getLength();
                for (long j = 0; j < length; j++) {
                    if (j > 2147483647L) {
                        String l = Long.toString(j);
                        Object walk = walk(context, scriptable, callable, scriptable3, l);
                        if (walk == Undefined.instance) {
                            scriptable3.delete(l);
                        } else {
                            scriptable3.put(l, scriptable3, walk);
                        }
                    } else {
                        int i = (int) j;
                        Object walk2 = walk(context, scriptable, callable, scriptable3, Integer.valueOf(i));
                        if (walk2 == Undefined.instance) {
                            scriptable3.delete(i);
                        } else {
                            scriptable3.put(i, scriptable3, walk2);
                        }
                    }
                }
            } else {
                for (Object obj3 : scriptable3.getIds()) {
                    Object walk3 = walk(context, scriptable, callable, scriptable3, obj3);
                    if (walk3 == Undefined.instance) {
                        if (obj3 instanceof Number) {
                            scriptable3.delete(((Number) obj3).intValue());
                        } else {
                            scriptable3.delete((String) obj3);
                        }
                    } else if (obj3 instanceof Number) {
                        scriptable3.put(((Number) obj3).intValue(), scriptable3, walk3);
                    } else {
                        scriptable3.put((String) obj3, scriptable3, walk3);
                    }
                }
            }
        }
        return callable.call(context, scriptable, scriptable2, new Object[]{obj, obj2});
    }

    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) {
        Object obj;
        if (!idFunctionObject.hasTag(JSON_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int methodId = idFunctionObject.methodId();
        r8 = null;
        Object obj2 = null;
        Callable callable = null;
        Object obj3 = null;
        switch (methodId) {
            case 1:
                return "JSON";
            case 2:
                String scriptRuntime = ScriptRuntime.toString(objArr, 0);
                if (objArr.length > 1) {
                    callable = objArr[1];
                }
                return callable instanceof Callable ? parse(context, scriptable, scriptRuntime, callable) : parse(context, scriptable, scriptRuntime);
            case 3:
                switch (objArr.length) {
                    case 0:
                        obj3 = null;
                        obj = null;
                        break;
                    case 1:
                        obj3 = null;
                        obj = objArr[0];
                        break;
                    default:
                        obj3 = objArr[2];
                    case 2:
                        obj2 = objArr[1];
                        obj = objArr[0];
                        break;
                }
                return stringify(context, scriptable, obj, obj2, obj3);
            default:
                throw new IllegalStateException(String.valueOf(methodId));
        }
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length != 5) {
            switch (length) {
                case 8:
                    str2 = "toSource";
                    i = 1;
                    break;
                case 9:
                    str2 = "stringify";
                    i = 3;
                    break;
                default:
                    str2 = null;
                    i = 0;
                    break;
            }
        } else {
            str2 = "parse";
            i = 2;
        }
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (str2 != str) {
                i2 = i;
                if (!str2.equals(str)) {
                    i2 = 0;
                }
            }
        }
        return i2;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "JSON";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 3;
        if (i <= 3) {
            switch (i) {
                case 1:
                    i2 = 0;
                    str = "toSource";
                    break;
                case 2:
                    i2 = 2;
                    str = "parse";
                    break;
                case 3:
                    str = "stringify";
                    break;
                default:
                    throw new IllegalStateException(String.valueOf(i));
            }
            initPrototypeMethod(JSON_TAG, i, str, i2);
            return;
        }
        throw new IllegalStateException(String.valueOf(i));
    }
}
