package net.pubnative.lite.sdk.utils.json;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/json/JsonModel.class */
public abstract class JsonModel {
    private static final String TAG = "JsonModel";
    protected HashMap<String, JsonModelMetadata> fields;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/json/JsonModel$JsonModelMetadata.class */
    public static class JsonModelMetadata {
        Class<?> collectionType;
        Class entityType;
        boolean isArray;
        boolean isDescendantFromModel;
        boolean isMap;
        String key;
        Class<?> keyType;

        JsonModelMetadata(String str, Class cls) {
            this(str, Void.TYPE, cls, Void.TYPE, false, false);
        }

        JsonModelMetadata(String str, Class cls, Class cls2) {
            this(str, Void.TYPE, cls, cls2, true, false);
        }

        JsonModelMetadata(String str, Class cls, Class cls2, Class cls3) {
            this(str, cls, cls2, cls3, false, true);
        }

        JsonModelMetadata(String str, Class cls, Class cls2, Class cls3, boolean z, boolean z2) {
            this.isArray = false;
            this.isMap = false;
            this.key = str;
            this.keyType = cls;
            this.entityType = cls2;
            this.collectionType = cls3;
            this.isArray = z;
            this.isMap = z2;
            this.isDescendantFromModel = JsonModel.class.isAssignableFrom(cls2);
        }
    }

    public JsonModel() {
        bind(this);
    }

    private Object castNumber(Object obj, Class cls) {
        Byte b = obj;
        if (obj instanceof Number) {
            Number number = (Number) Number.class.cast(obj);
            if (cls == Integer.class) {
                return Integer.valueOf(number.intValue());
            }
            if (cls == Long.class) {
                return Long.valueOf(number.longValue());
            }
            if (cls == Float.class) {
                return Float.valueOf(number.floatValue());
            }
            if (cls == Double.class) {
                return Double.valueOf(number.doubleValue());
            }
            if (cls == Short.class) {
                return Short.valueOf(number.shortValue());
            }
            b = obj;
            if (cls == Byte.class) {
                b = Byte.valueOf(number.byteValue());
            }
        }
        return b;
    }

    void bind(JsonModel jsonModel) {
        Field[] declaredFields;
        if (JsonModelFieldCache.checkIfModelCached(jsonModel.getClass())) {
            this.fields = JsonModelFieldCache.getFields(jsonModel.getClass());
            return;
        }
        try {
            this.fields = new HashMap<>();
            for (Field field : jsonModel.getClass().getDeclaredFields()) {
                if (((BindField) field.getAnnotation(BindField.class)) != null) {
                    Class<?> type = field.getType();
                    if (Iterable.class.isAssignableFrom(type)) {
                        this.fields.put(field.getName(), parseArray(field, type));
                    } else if (Map.class.isAssignableFrom(type)) {
                        this.fields.put(field.getName(), parseMap(field, type));
                    } else {
                        this.fields.put(field.getName(), parseLiteral(field, type));
                    }
                }
            }
            JsonModelFieldCache.setFields(jsonModel.getClass(), this.fields);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected <T extends JsonModel> T castObject(JSONObject jSONObject, Class<T> cls) throws Exception {
        if (jSONObject == null) {
            return null;
        }
        return cls.getConstructor(JSONObject.class).newInstance(jSONObject);
    }

    public void fromJson(JSONObject jSONObject) throws Exception {
        Field[] declaredFields;
        JSONObject jSONObject2;
        if (jSONObject == null) {
            Log.e(TAG, "Couldn't parse JSON object because of null input");
            return;
        }
        for (Field field : getClass().getDeclaredFields()) {
            String name = field.getName();
            if (this.fields.containsKey(name)) {
                field.setAccessible(true);
                JsonModelMetadata jsonModelMetadata = this.fields.get(name);
                if (jSONObject.has(jsonModelMetadata.key)) {
                    JSONArray jSONArray = null;
                    if (jsonModelMetadata.isArray) {
                        try {
                            jSONArray = jSONObject.getJSONArray(jsonModelMetadata.key);
                        } catch (Exception e) {
                        }
                        if (jSONArray != null) {
                            field.set(this, fromJsonArray(jsonModelMetadata, jSONArray));
                        }
                    } else if (jsonModelMetadata.isMap) {
                        try {
                            jSONObject2 = jSONObject.getJSONObject(jsonModelMetadata.key);
                        } catch (Exception e2) {
                            jSONObject2 = null;
                        }
                        if (jSONObject2 != null) {
                            field.set(this, fromJsonMap(jsonModelMetadata, jSONObject2));
                        }
                    } else {
                        field.set(this, castNumber(fromJsonLiteral(jsonModelMetadata, jSONObject), field.getType()));
                    }
                }
            }
        }
    }

    protected List fromJsonArray(JsonModelMetadata jsonModelMetadata, JSONArray jSONArray) throws Exception {
        ArrayList arrayList = new ArrayList();
        if (jsonModelMetadata.isDescendantFromModel) {
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(castObject(jSONArray.getJSONObject(i), jsonModelMetadata.entityType));
            }
        } else {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(jSONArray.get(i2));
            }
        }
        return arrayList;
    }

    protected Object fromJsonLiteral(JsonModelMetadata jsonModelMetadata, JSONObject jSONObject) throws Exception {
        return jsonModelMetadata.isDescendantFromModel ? castObject(jSONObject.getJSONObject(jsonModelMetadata.key), jsonModelMetadata.entityType) : jSONObject.get(jsonModelMetadata.key);
    }

    protected Map fromJsonMap(JsonModelMetadata jsonModelMetadata, JSONObject jSONObject) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> keys = jSONObject.keys();
        if (jsonModelMetadata.isDescendantFromModel) {
            while (keys.hasNext()) {
                String next = keys.next();
                linkedHashMap.put(next, castObject(jSONObject.getJSONObject(next), jsonModelMetadata.entityType));
            }
        } else {
            while (keys.hasNext()) {
                String next2 = keys.next();
                linkedHashMap.put(next2, jSONObject.get(next2));
            }
        }
        return linkedHashMap;
    }

    protected JsonModelMetadata parseArray(Field field, Class cls) {
        return new JsonModelMetadata(field.getName(), (Class) ((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0], cls);
    }

    protected JsonModelMetadata parseLiteral(Field field, Class cls) {
        return new JsonModelMetadata(field.getName(), cls);
    }

    protected JsonModelMetadata parseMap(Field field, Class cls) {
        ParameterizedType parameterizedType = (ParameterizedType) field.getGenericType();
        return new JsonModelMetadata(field.getName(), (Class) parameterizedType.getActualTypeArguments()[0], (Class) parameterizedType.getActualTypeArguments()[1], cls);
    }

    public JSONObject toJson() throws Exception {
        Field[] declaredFields;
        JSONObject jSONObject = new JSONObject();
        for (Field field : getClass().getDeclaredFields()) {
            String name = field.getName();
            if (this.fields.containsKey(name)) {
                field.setAccessible(true);
                JsonModelMetadata jsonModelMetadata = this.fields.get(name);
                Object obj = field.get(this);
                if (obj != null) {
                    if (jsonModelMetadata.isArray) {
                        jSONObject.put(jsonModelMetadata.key, toJsonArray(jsonModelMetadata, obj));
                    } else if (jsonModelMetadata.isMap) {
                        jSONObject.put(jsonModelMetadata.key, toJsonMap(jsonModelMetadata, obj));
                    } else {
                        jSONObject.put(jsonModelMetadata.key, toJsonLiteral(jsonModelMetadata, obj));
                        if (jsonModelMetadata.isDescendantFromModel) {
                            jSONObject.put(jsonModelMetadata.key, ((JsonModel) obj).toJson());
                        } else {
                            jSONObject.put(jsonModelMetadata.key, obj);
                        }
                    }
                }
            }
        }
        return jSONObject;
    }

    protected JSONArray toJsonArray(JsonModelMetadata jsonModelMetadata, Object obj) throws Exception {
        Iterable<JsonModel> iterable = (Iterable) obj;
        JSONArray jSONArray = new JSONArray();
        if (jsonModelMetadata.isDescendantFromModel) {
            for (JsonModel jsonModel : iterable) {
                jSONArray.put(jsonModel.toJson());
            }
        } else {
            for (Object obj2 : iterable) {
                jSONArray.put(obj2);
            }
        }
        return jSONArray;
    }

    protected Object toJsonLiteral(JsonModelMetadata jsonModelMetadata, Object obj) throws Exception {
        JSONObject jSONObject = obj;
        if (jsonModelMetadata.isDescendantFromModel) {
            jSONObject = ((JsonModel) obj).toJson();
        }
        return jSONObject;
    }

    protected JSONObject toJsonMap(JsonModelMetadata jsonModelMetadata, Object obj) throws Exception {
        Map map = (Map) obj;
        JSONObject jSONObject = new JSONObject();
        if (jsonModelMetadata.isDescendantFromModel) {
            for (String str : map.keySet()) {
                jSONObject.put(str, ((JsonModel) map.get(str)).toJson());
            }
        } else {
            for (String str2 : map.keySet()) {
                jSONObject.put(str2, map.get(str2));
            }
        }
        return jSONObject;
    }
}
