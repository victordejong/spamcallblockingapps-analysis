package org.xutils.http;

import android.os.Parcelable;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xutils.common.util.LogUtil;
/* renamed from: org.xutils.http.a */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/a.class */
final class C9649a {

    /* renamed from: a */
    private static final ClassLoader f40727a = String.class.getClassLoader();

    /* renamed from: org.xutils.http.a$a */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/a$a.class */
    public static final class C9650a implements AbstractC9651b {

        /* renamed from: a */
        final /* synthetic */ JSONObject f40728a;

        C9650a(JSONObject jSONObject) {
            this.f40728a = jSONObject;
        }

        @Override // org.xutils.http.C9649a.AbstractC9651b
        public void onParseKV(String str, Object obj) {
            try {
                this.f40728a.put(str, C9649a.m198a(obj));
            } catch (JSONException e) {
                throw new IllegalArgumentException("parse RequestParams to json failed", e);
            }
        }
    }

    /* renamed from: org.xutils.http.a$b */
    /* loaded from: classes2-dex2jar.jar:org/xutils/http/a$b.class */
    public interface AbstractC9651b {
        void onParseKV(String str, Object obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* renamed from: a */
    public static Object m198a(Object obj) {
        JSONObject jSONObject;
        if (obj == null) {
            return null;
        }
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            JSONArray jSONArray = new JSONArray();
            int length = Array.getLength(obj);
            int i = 0;
            while (true) {
                jSONObject = jSONArray;
                if (i >= length) {
                    break;
                }
                jSONArray.put(m198a(Array.get(obj, i)));
                i++;
            }
        } else if (obj instanceof Iterable) {
            JSONArray jSONArray2 = new JSONArray();
            Iterator it = ((Iterable) obj).iterator();
            while (true) {
                jSONObject = jSONArray2;
                if (!it.hasNext()) {
                    break;
                }
                jSONArray2.put(m198a(it.next()));
            }
        } else if (obj instanceof Map) {
            JSONObject jSONObject2 = new JSONObject();
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (true) {
                jSONObject = jSONObject2;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it2.next();
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && value != null) {
                    jSONObject2.put(String.valueOf(key), m198a(value));
                }
            }
        } else {
            ClassLoader classLoader = cls.getClassLoader();
            jSONObject = obj;
            if (classLoader != null) {
                jSONObject = obj;
                if (classLoader != f40727a) {
                    jSONObject = new JSONObject();
                    m197b(obj, cls, new C9650a(jSONObject));
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static void m197b(Object obj, Class<?> cls, AbstractC9651b abstractC9651b) {
        ClassLoader classLoader;
        if (obj == null || cls == null || cls == RequestParams.class || cls == Object.class || (classLoader = cls.getClassLoader()) == null || classLoader == f40727a) {
            return;
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                String name = field.getName();
                if (!Modifier.isTransient(field.getModifiers()) && !"serialVersionUID".equals(name) && field.getType() != Parcelable.Creator.class) {
                    try {
                        field.setAccessible(true);
                        Object obj2 = field.get(obj);
                        if (obj2 != null) {
                            abstractC9651b.onParseKV(name, obj2);
                        }
                    } catch (Throwable th) {
                        LogUtil.m258e(th.getMessage(), th);
                    }
                }
            }
        }
        m197b(obj, cls.getSuperclass(), abstractC9651b);
    }
}
