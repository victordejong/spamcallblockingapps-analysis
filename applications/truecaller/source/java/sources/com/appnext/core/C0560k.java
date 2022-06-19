package com.appnext.core;

import android.text.TextUtils;
import com.appnext.base.C0472a;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appnext.core.k */
/* loaded from: classes-dex2jar.jar:com/appnext/core/k.class */
public final class C0560k {

    /* renamed from: dU */
    private static int f1834dU = 2;

    /* renamed from: a */
    public static Object m42355a(Class<?> cls, JSONObject jSONObject) {
        Field[] fields;
        try {
            Object newInstance = cls.newInstance();
            for (Field field : f1834dU == 0 ? cls.getFields() : cls.getDeclaredFields()) {
                if (f1834dU == 2 && Modifier.isPrivate(field.getModifiers())) {
                    field.setAccessible(true);
                }
                try {
                } catch (IllegalAccessException e) {
                    C0472a.m42577a("JSONParser$populateObjectFromJSON", e);
                } catch (IllegalArgumentException e2) {
                    C0472a.m42577a("JSONParser$populateObjectFromJSON", e2);
                } catch (Throwable th) {
                    C0472a.m42577a("JSONParser$populateObjectFromJSON", th);
                }
                if (jSONObject.has(field.getName())) {
                    String simpleName = field.getType().getSimpleName();
                    if (!TextUtils.isEmpty(simpleName)) {
                        if (simpleName.equalsIgnoreCase("boolean")) {
                            field.setBoolean(newInstance, jSONObject.getBoolean(field.getName()));
                        } else if (simpleName.equalsIgnoreCase("int")) {
                            field.setInt(newInstance, jSONObject.getInt(field.getName()));
                        } else if (simpleName.equalsIgnoreCase("double")) {
                            field.setDouble(newInstance, jSONObject.getDouble(field.getName()));
                        } else if (simpleName.equalsIgnoreCase("float")) {
                            field.setFloat(newInstance, (float) jSONObject.getDouble(field.getName()));
                        } else if (simpleName.equalsIgnoreCase("string")) {
                            field.set(newInstance, jSONObject.getString(field.getName()));
                        } else if (field.getType().isArray()) {
                            field.set(newInstance, Array.newInstance(field.getType().getComponentType(), jSONObject.getJSONArray(field.getName()).length()));
                            m42354a(field.get(newInstance), jSONObject.getJSONArray(field.getName()));
                        } else {
                            field.set(newInstance, m42355a(field.getType(), jSONObject.getJSONObject(field.getName())));
                        }
                    }
                }
                if (f1834dU == 2 && Modifier.isPrivate(field.getModifiers())) {
                    field.setAccessible(false);
                }
            }
            return newInstance;
        } catch (IllegalAccessException e3) {
            C0472a.m42577a("JSONParser$populateObjectFromJSON", e3);
            return null;
        } catch (InstantiationException e4) {
            C0472a.m42577a("JSONParser$populateObjectFromJSON", e4);
            return null;
        }
    }

    /* renamed from: a */
    public static void m42354a(Object obj, JSONArray jSONArray) throws IllegalArgumentException, NegativeArraySizeException, IllegalAccessException, JSONException {
        Class<?> cls = obj.getClass();
        String simpleName = cls.getComponentType().getSimpleName();
        for (int i = 0; i < jSONArray.length(); i++) {
            if (cls.getComponentType().isArray()) {
                Array.set(obj, i, Array.newInstance(cls.getComponentType().getComponentType(), jSONArray.getJSONArray(i).length()));
                m42354a(Array.get(obj, i), jSONArray.getJSONArray(i));
            } else if (cls.getComponentType().isPrimitive() || simpleName.equalsIgnoreCase("string")) {
                Array.set(obj, i, jSONArray.get(i));
            } else {
                Array.set(obj, i, m42355a(cls.getComponentType(), jSONArray.getJSONObject(i)));
            }
        }
    }
}
