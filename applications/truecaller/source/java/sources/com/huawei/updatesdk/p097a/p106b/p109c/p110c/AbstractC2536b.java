package com.huawei.updatesdk.p097a.p106b.p109c.p110c;

import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2522g;
import com.huawei.updatesdk.service.appmgr.bean.SDKNetTransmission;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.b.c.c.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/c/c/b.class */
public abstract class AbstractC2536b {
    private static final char COMMA = ',';
    private static final String END_FLAG = "_";
    private static final String TAG = "b";

    /* renamed from: com.huawei.updatesdk.a.b.c.c.b$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/c/c/b$a.class */
    public static class C2537a implements PrivilegedAction {

        /* renamed from: a */
        private Field f8222a;

        public C2537a(Field field) {
            this.f8222a = field;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            this.f8222a.setAccessible(true);
            return null;
        }
    }

    private String arrayToJson(Object obj) {
        int length = Array.getLength(obj);
        if (length <= 0) {
            return "[]";
        }
        StringBuilder m8728C = C22128a.m8728C("[");
        for (int i = 0; i < length; i++) {
            String valueToJson = valueToJson(Array.get(obj, i));
            if (valueToJson != null) {
                m8728C.append(valueToJson);
                m8728C.append(',');
            }
        }
        formatJsonStr(m8728C);
        m8728C.append("]");
        return m8728C.toString();
    }

    private void formatJsonStr(StringBuilder sb) {
        int length = sb.length();
        if (length > 0) {
            int i = length - 1;
            if (sb.charAt(i) != ',') {
                return;
            }
            sb.delete(i, length);
        }
    }

    private boolean isPrimitiveObj(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Byte) || (obj instanceof Character) || (obj instanceof Double) || (obj instanceof Short);
    }

    private Object jsonBeanFromJson(Class cls, Object obj) {
        AbstractC2536b abstractC2536b = (AbstractC2536b) cls.newInstance();
        abstractC2536b.fromJson((JSONObject) obj);
        return abstractC2536b;
    }

    private Object listFromJson(Class cls, Object obj) {
        if (cls != null) {
            if (!(obj instanceof JSONArray)) {
                throw new IllegalArgumentException(C22128a.m8551x2("jsonobject is not JSONArray, jsonValue:", obj));
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                Object valueFromJson = valueFromJson(cls, null, jSONArray.get(i));
                if (valueFromJson != null) {
                    if (cls.equals(valueFromJson.getClass())) {
                        arrayList.add(valueFromJson);
                    } else {
                        C2515a.m36847b(TAG, "listFromJson error, memberClass:" + cls + ", valueClass:" + valueFromJson.getClass());
                    }
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("generic type is null");
    }

    private Object mapFromJson(Class cls, Object obj) {
        if (cls != null) {
            if (!(obj instanceof JSONObject)) {
                throw new IllegalArgumentException(C22128a.m8551x2("jsonobject is not JSONObject, jsonValue:", obj));
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object valueFromJson = valueFromJson(cls, null, jSONObject.get(next));
                if (valueFromJson != null) {
                    if (cls.equals(valueFromJson.getClass())) {
                        linkedHashMap.put(next, valueFromJson);
                    } else {
                        String str = TAG;
                        C2515a.m36847b(str, "mapFromJson error, memberClass:" + cls + ", valueClass:" + valueFromJson.getClass());
                    }
                }
            }
            return linkedHashMap;
        }
        throw new IllegalArgumentException("generic type is null");
    }

    private String mapToJson(Map map) {
        if (map.size() <= 0) {
            return "{}";
        }
        StringBuilder m8728C = C22128a.m8728C("{");
        Iterator it = map.entrySet().iterator();
        while (true) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            String valueToJson = valueToJson(entry.getValue());
            if (valueToJson != null) {
                C22128a.m8666T0(m8728C, "\"", str, "\":", valueToJson);
            }
            if (!it.hasNext()) {
                m8728C.append("}");
                return m8728C.toString();
            } else if (valueToJson != null) {
                m8728C.append(',');
            }
        }
    }

    private void processValueError(Field field, Object obj) {
        Integer num;
        if (obj == null || !(obj instanceof String)) {
            return;
        }
        try {
            Class<?> type = field.getType();
            if (!type.isPrimitive()) {
                return;
            }
            String name = type.getName();
            if ("int".equals(name)) {
                num = Integer.valueOf(Integer.parseInt((String) obj));
            } else if ("float".equals(name)) {
                num = Float.valueOf(Float.parseFloat((String) obj));
            } else if ("long".equals(name)) {
                num = Long.valueOf(Long.parseLong((String) obj));
            } else if ("boolean".equals(name)) {
                num = Boolean.valueOf(Boolean.parseBoolean((String) obj));
            } else if ("double".equals(name)) {
                num = Double.valueOf(Double.parseDouble((String) obj));
            } else if ("short".equals(name)) {
                num = Short.valueOf(Short.parseShort((String) obj));
            } else if ("byte".equals(name)) {
                num = Byte.valueOf(Byte.parseByte((String) obj));
            } else if (!"char".equals(name)) {
                return;
            } else {
                num = Character.valueOf(((String) obj).charAt(0));
            }
            field.set(this, num);
        } catch (IllegalAccessException e) {
            String str = TAG;
            StringBuilder m8728C = C22128a.m8728C("processValueError Throwable:");
            m8728C.append(e.getMessage());
            C2515a.m36847b(str, m8728C.toString());
        }
    }

    private Object valueFromJson(Class cls, Class cls2, Object obj) {
        Float f;
        if (cls.isPrimitive() || cls.equals(String.class)) {
            f = obj;
            if ("float".equals(cls.getName())) {
                f = obj;
                if (obj instanceof Double) {
                    f = Float.valueOf(((Double) obj).floatValue());
                }
            }
        } else if (List.class.isAssignableFrom(cls)) {
            f = listFromJson(cls2, obj);
        } else if (AbstractC2536b.class.isAssignableFrom(cls)) {
            if (cls.equals(AbstractC2536b.class)) {
                throw new IllegalArgumentException(C22128a.m8555w2("error type, type:", cls));
            }
            f = jsonBeanFromJson(cls, obj);
        } else if (!Map.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException(C22128a.m8555w2("unsupport type, Type:", cls));
        } else {
            f = mapFromJson(cls2, obj);
        }
        return f;
    }

    private String valueToJson(Object obj) {
        String str = null;
        if (obj != null) {
            if (obj instanceof String) {
                str = JSONObject.quote(obj.toString());
            } else if (isPrimitiveObj(obj)) {
                str = String.valueOf(obj);
            } else if (obj instanceof AbstractC2536b) {
                str = ((AbstractC2536b) obj).toJson();
            } else if (obj instanceof List) {
                str = listToJson((List) obj);
            } else if (obj instanceof Map) {
                str = mapToJson((Map) obj);
            } else if (obj.getClass().isArray()) {
                str = arrayToJson(obj);
            }
        }
        return str;
    }

    public void fromJson(JSONObject jSONObject) {
        Field[] m36821a = AbstractC2522g.m36821a(getClass());
        Object obj = null;
        for (int i = 0; i < m36821a.length; i++) {
            AccessController.doPrivileged(new C2537a(m36821a[i]));
            String name = m36821a[i].getName();
            if (m36821a[i].isAnnotationPresent(SDKNetTransmission.class) || name.endsWith("_")) {
                String str = name;
                if (name.endsWith("_")) {
                    str = name.substring(0, name.length() - 1);
                }
                if (jSONObject.has(str)) {
                    Object obj2 = jSONObject.get(str);
                    if (!JSONObject.NULL.equals(obj2)) {
                        try {
                            Object valueFromJson = valueFromJson(m36821a[i].getType(), AbstractC2522g.m36820a(m36821a[i]), obj2);
                            m36821a[i].set(this, valueFromJson);
                            obj = valueFromJson;
                        } catch (Exception e) {
                            C2511a.m36863a(TAG, getClass().getName() + ".fromJson error, fieldName:" + str + e.toString());
                            processValueError(m36821a[i], obj);
                        }
                    }
                }
            }
        }
    }

    public String listToJson(List list) {
        if (list.size() <= 0) {
            return "[]";
        }
        StringBuilder m8728C = C22128a.m8728C("[");
        for (int i = 0; i < list.size(); i++) {
            String valueToJson = valueToJson(list.get(i));
            if (valueToJson != null) {
                m8728C.append(valueToJson);
                m8728C.append(',');
            }
        }
        formatJsonStr(m8728C);
        m8728C.append("]");
        return m8728C.toString();
    }

    public String toJson() {
        Field[] m36821a = AbstractC2522g.m36821a(getClass());
        if (m36821a.length <= 0) {
            return "";
        }
        StringBuilder m8728C = C22128a.m8728C("{");
        for (int i = 0; i < m36821a.length; i++) {
            AccessController.doPrivileged(new C2537a(m36821a[i]));
            String name = m36821a[i].getName();
            if (m36821a[i].isAnnotationPresent(SDKNetTransmission.class) || (name != null && name.endsWith("_"))) {
                String str = name;
                if (name.endsWith("_")) {
                    str = name.substring(0, name.length() - 1);
                }
                String valueToJson = valueToJson(m36821a[i].get(this));
                if (valueToJson != null) {
                    C22128a.m8666T0(m8728C, "\"", str, "\":", valueToJson);
                    m8728C.append(',');
                }
            }
        }
        formatJsonStr(m8728C);
        m8728C.append("}");
        return m8728C.toString();
    }
}
