package com.verizon.ads;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ComponentRegistry.class */
public class ComponentRegistry {

    /* renamed from: a */
    private static final Logger f61158a = Logger.getInstance(ComponentRegistry.class);

    /* renamed from: b */
    private static Map<String, ComponentFactory> f61159b = new ConcurrentHashMap();

    public static Component getComponent(String str, Context context, JSONObject jSONObject, Object... objArr) {
        if (str == null) {
            f61158a.m5565e("type cannot be null.");
            return null;
        }
        String lowerCase = str.toLowerCase();
        ComponentFactory componentFactory = f61159b.get(lowerCase);
        if (componentFactory != null) {
            return componentFactory.newInstance(context, jSONObject, objArr);
        }
        f61158a.m5565e(String.format("No ComponentFactory class registered for type <%s>", lowerCase));
        return null;
    }

    public static void registerComponent(String str, ComponentFactory componentFactory) {
        if (str == null) {
            f61158a.m5565e("type cannot be null.");
        } else if (componentFactory == null) {
            f61158a.m5565e("componentFactory cannot be null");
        } else {
            String lowerCase = str.toLowerCase();
            if (f61159b.containsKey(lowerCase)) {
                return;
            }
            f61159b.put(lowerCase, componentFactory);
        }
    }
}
