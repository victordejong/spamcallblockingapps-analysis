package com.huawei.hms.utils;

import android.text.TextUtils;
import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.support.log.common.Base64;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/utils/JsonUtil.class */
public class JsonUtil {
    private static final String BYTE_BYTE = "_byte_";
    private static final String LIST_FIELD_VALUE = "_value_";
    private static final String LIST_ITEM_VALUE = "_list_item_";
    private static final String LIST_SIZE = "_list_size_";
    private static final String MAP_MAP = "_map_";
    private static final String NEXT_ITEM = "_next_item_";
    private static final String PRE_PKG = "com.huawei";
    private static final String TAG = "JsonUtil";
    public static final int VAL_BYTE = 2;
    public static final int VAL_ENTITY = 0;
    public static final int VAL_LIST = 1;
    public static final int VAL_MAP = 3;
    public static final int VAL_NULL = -1;
    public static final String VAL_TYPE = "_val_type_";

    private static String createInnerJsonString(IMessageEntity iMessageEntity) throws IllegalAccessException, JSONException {
        Field[] declaredFields;
        JSONObject jSONObject = new JSONObject();
        for (Class<? super Object> cls = iMessageEntity.getClass(); cls != null; cls = cls.getSuperclass()) {
            for (Field field : cls.getDeclaredFields()) {
                if (field.isAnnotationPresent(Packed.class)) {
                    boolean isAccessible = field.isAccessible();
                    setAccessible(field, true);
                    String name = field.getName();
                    Object obj = field.get(iMessageEntity);
                    setAccessible(field, isAccessible);
                    disposeType(name, obj, jSONObject);
                }
            }
        }
        return jSONObject.toString();
    }

    public static String createJsonString(IMessageEntity iMessageEntity) {
        if (iMessageEntity == null) {
            HMSLog.m37195e(TAG, "createJsonString error, the input IMessageEntity is null");
            return "";
        }
        try {
            return createInnerJsonString(iMessageEntity);
        } catch (IllegalAccessException e) {
            StringBuilder m8728C = C22128a.m8728C("catch IllegalAccessException ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
            return "";
        } catch (JSONException e2) {
            StringBuilder m8728C2 = C22128a.m8728C("catch JSONException ");
            m8728C2.append(e2.getMessage());
            HMSLog.m37195e(TAG, m8728C2.toString());
            return "";
        }
    }

    private static boolean disposeType(String str, Object obj, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        if (obj instanceof String) {
            jSONObject.put(str, (String) obj);
            return true;
        } else if (obj instanceof Integer) {
            jSONObject.put(str, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof Short) {
            jSONObject.put(str, (Short) obj);
            return true;
        } else if (obj instanceof Long) {
            jSONObject.put(str, (Long) obj);
            return true;
        } else if (obj instanceof Float) {
            jSONObject.put(str, (Float) obj);
            return true;
        } else if (obj instanceof Double) {
            jSONObject.put(str, (Double) obj);
            return true;
        } else if (obj instanceof Boolean) {
            jSONObject.put(str, (Boolean) obj);
            return true;
        } else if (obj instanceof JSONObject) {
            jSONObject.put(str, (JSONObject) obj);
            return true;
        } else if (obj instanceof byte[]) {
            writeByte(str, (byte[]) obj, jSONObject);
            return true;
        } else if (obj instanceof List) {
            writeList(str, (List) obj, jSONObject);
            return true;
        } else if (obj instanceof Map) {
            writeMap(str, (Map) obj, jSONObject);
            return true;
        } else if (!(obj instanceof IMessageEntity)) {
            return false;
        } else {
            try {
                jSONObject.put(str, createInnerJsonString((IMessageEntity) obj));
                return true;
            } catch (IllegalAccessException e) {
                HMSLog.m37195e(TAG, "IllegalAccessException , " + e);
                return false;
            }
        }
    }

    public static Object getInfoFromJsonobject(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has(str2)) {
                return null;
            }
            Object obj = jSONObject.get(str2);
            if (!(obj instanceof String)) {
                return null;
            }
            return obj;
        } catch (JSONException e) {
            HMSLog.m37195e(TAG, "getInfoFromJsonobject:parser json error :" + str2);
            return null;
        }
    }

    public static int getIntValue(JSONObject jSONObject, String str) throws JSONException {
        return (jSONObject == null || !jSONObject.has(str)) ? -1 : jSONObject.getInt(str);
    }

    private static Object getObjectValue(String str, JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(str)) {
            return jSONObject.get(str);
        }
        if (jSONObject.has("header") && jSONObject.getJSONObject("header").has(str)) {
            return jSONObject.getJSONObject("header").get(str);
        }
        if (jSONObject.has("body") && jSONObject.getJSONObject("body").has(str)) {
            return jSONObject.getJSONObject("body").get(str);
        }
        return null;
    }

    public static String getStringValue(JSONObject jSONObject, String str) throws JSONException {
        return (jSONObject == null || !jSONObject.has(str)) ? null : jSONObject.getString(str);
    }

    public static IMessageEntity jsonToEntity(String str, IMessageEntity iMessageEntity) {
        Field[] declaredFields;
        try {
            Class<?> cls = iMessageEntity.getClass();
            JSONObject jSONObject = new JSONObject(str);
            for (Class<? super Object> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                for (Field field : cls2.getDeclaredFields()) {
                    if (field.isAnnotationPresent(Packed.class)) {
                        try {
                            readFiled(iMessageEntity, field, jSONObject);
                        } catch (IllegalAccessException e) {
                            HMSLog.m37195e(TAG, "jsonToEntity, set value of the field exception, field name:" + field.getName());
                        }
                    }
                }
            }
        } catch (JSONException e2) {
            StringBuilder m8728C = C22128a.m8728C("catch JSONException when parse jsonString");
            m8728C.append(e2.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
        }
        return iMessageEntity;
    }

    private static byte[] readByte(JSONObject jSONObject) throws JSONException {
        try {
            return Base64.decode(jSONObject.getString(BYTE_BYTE));
        } catch (IllegalArgumentException e) {
            StringBuilder m8728C = C22128a.m8728C("readByte failed : ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
            return null;
        }
    }

    private static void readFiled(IMessageEntity iMessageEntity, Field field, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        Object readJson = readJson(iMessageEntity, field, jSONObject);
        if (readJson != null) {
            boolean isAccessible = field.isAccessible();
            setAccessible(field, true);
            field.set(iMessageEntity, readJson);
            setAccessible(field, isAccessible);
        }
    }

    private static Object readJson(IMessageEntity iMessageEntity, Field field, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        Object objectValue = getObjectValue(field.getName(), jSONObject);
        if (objectValue != null) {
            try {
                if (field.getType().getName().startsWith(PRE_PKG) && (field.getType().newInstance() instanceof IMessageEntity)) {
                    return jsonToEntity((String) objectValue, (IMessageEntity) field.getType().newInstance());
                }
                if (!(objectValue instanceof JSONObject) || !((JSONObject) objectValue).has(VAL_TYPE)) {
                    return objectValue;
                }
                int i = ((JSONObject) objectValue).getInt(VAL_TYPE);
                if (i == 1 || i == 0) {
                    return readList(field.getGenericType(), (JSONObject) objectValue);
                }
                if (i == 2) {
                    return readByte((JSONObject) objectValue);
                }
                if (i == 3) {
                    return readMap(field.getGenericType(), (JSONObject) objectValue);
                }
                HMSLog.m37195e(TAG, "cannot support type : " + i);
                return null;
            } catch (InstantiationException e) {
                HMSLog.m37195e(TAG, "InstantiationException  ");
                return null;
            }
        }
        return null;
    }

    private static List<Object> readList(Type type, JSONObject jSONObject) throws JSONException, IllegalAccessException, InstantiationException {
        int i = jSONObject.getInt(LIST_SIZE);
        int i2 = jSONObject.getInt(VAL_TYPE);
        ArrayList arrayList = new ArrayList(i);
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = jSONObject.get(LIST_ITEM_VALUE + i3);
            if (i2 == 0) {
                arrayList.add(jsonToEntity((String) obj, (IMessageEntity) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
            } else if (i2 == 1) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private static Map readMap(Type type, JSONObject jSONObject) throws JSONException, IllegalAccessException, InstantiationException {
        Class cls = (Class) ((ParameterizedType) type).getActualTypeArguments()[1];
        JSONArray jSONArray = new JSONArray(jSONObject.getString(MAP_MAP));
        HashMap hashMap = new HashMap();
        for (int i = 0; i < jSONArray.length(); i += 2) {
            if (cls.newInstance() instanceof IMessageEntity) {
                hashMap.put(jSONArray.get(i), jsonToEntity(jSONArray.getString(i + 1), (IMessageEntity) cls.newInstance()));
            } else {
                hashMap.put(jSONArray.get(i), jSONArray.get(i + 1));
            }
        }
        return hashMap;
    }

    private static void setAccessible(final Field field, final boolean z) {
        AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.utils.JsonUtil.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                field.setAccessible(z);
                return null;
            }
        });
    }

    private static void writeByte(String str, byte[] bArr, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(VAL_TYPE, 2);
        try {
            jSONObject2.put(BYTE_BYTE, Base64.encode(bArr));
        } catch (IllegalArgumentException e) {
            StringBuilder m8728C = C22128a.m8728C("writeByte failed : ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
        }
        jSONObject.put(str, jSONObject2);
    }

    private static void writeList(String str, List<?> list, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(VAL_TYPE, 1);
        jSONObject2.put(LIST_SIZE, list.size());
        for (int i = 0; i < list.size(); i++) {
            disposeType(C22128a.m8611i2(LIST_ITEM_VALUE, i), list.get(i), jSONObject2);
            if (list.get(i) instanceof IMessageEntity) {
                jSONObject2.put(VAL_TYPE, 0);
            }
        }
        jSONObject.put(str, jSONObject2);
    }

    private static void writeMap(String str, Map map, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key instanceof IMessageEntity) {
                jSONArray.put(createInnerJsonString((IMessageEntity) key));
            } else {
                jSONArray.put(key);
            }
            if (value instanceof IMessageEntity) {
                jSONArray.put(createInnerJsonString((IMessageEntity) value));
            } else {
                jSONArray.put(value);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(VAL_TYPE, 3);
        jSONObject2.put(MAP_MAP, jSONArray.toString());
        jSONObject.put(str, jSONObject2);
    }
}
