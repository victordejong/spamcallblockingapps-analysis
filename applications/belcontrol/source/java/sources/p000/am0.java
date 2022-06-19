package p000;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: am0 */
/* loaded from: classes-dex2jar.jar:am0.class */
public class am0 {

    /* renamed from: a */
    public static final Map<Class<?>, AbstractC0045h> f357a;

    /* renamed from: am0$h */
    /* loaded from: classes-dex2jar.jar:am0$h.class */
    public interface AbstractC0045h {
        /* renamed from: a */
        void m7061a(JSONObject jSONObject, String str, Object obj);

        /* renamed from: b */
        void m7060b(Bundle bundle, String str, Object obj);
    }

    static {
        HashMap hashMap = new HashMap();
        f357a = hashMap;
        hashMap.put(Boolean.class, new a());
        hashMap.put(Integer.class, new b());
        hashMap.put(Long.class, new c());
        hashMap.put(Double.class, new d());
        hashMap.put(String.class, new e());
        hashMap.put(String[].class, new f());
        hashMap.put(JSONArray.class, new g());
    }

    /* renamed from: a */
    public static Bundle m7063a(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != null && obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m7063a((JSONObject) obj));
                } else {
                    AbstractC0045h abstractC0045h = f357a.get(obj.getClass());
                    if (abstractC0045h == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    abstractC0045h.m7060b(bundle, next, obj);
                }
            }
        }
        return bundle;
    }

    /* renamed from: b */
    public static JSONObject m7062b(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                if (obj instanceof List) {
                    JSONArray jSONArray = new JSONArray();
                    for (String str2 : (List) obj) {
                        jSONArray.put(str2);
                    }
                    jSONObject.put(str, jSONArray);
                } else if (obj instanceof Bundle) {
                    jSONObject.put(str, m7062b((Bundle) obj));
                } else {
                    AbstractC0045h abstractC0045h = f357a.get(obj.getClass());
                    if (abstractC0045h == null) {
                        throw new IllegalArgumentException("Unsupported type: " + obj.getClass());
                    }
                    abstractC0045h.m7061a(jSONObject, str, obj);
                }
            }
        }
        return jSONObject;
    }
}
