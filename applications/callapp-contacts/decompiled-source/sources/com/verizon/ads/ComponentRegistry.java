package com.verizon.ads;

import android.content.Context;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/ComponentRegistry.class */
public class ComponentRegistry {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35270a = Logger.getInstance(ComponentRegistry.class);

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, ComponentFactory> f35271b = new ConcurrentHashMap();

    public static Component getComponent(String str, Context context, JSONObject jSONObject, Object... objArr) {
        if (str == null) {
            f35270a.e("type cannot be null.");
            return null;
        }
        String lowerCase = str.toLowerCase();
        ComponentFactory componentFactory = f35271b.get(lowerCase);
        if (componentFactory != null) {
            return componentFactory.newInstance(context, jSONObject, objArr);
        }
        f35270a.e(String.format("No ComponentFactory class registered for type <%s>", lowerCase));
        return null;
    }

    public static void registerComponent(String str, ComponentFactory componentFactory) {
        if (str == null) {
            f35270a.e("type cannot be null.");
        } else if (componentFactory == null) {
            f35270a.e("componentFactory cannot be null");
        } else {
            String lowerCase = str.toLowerCase();
            if (!f35271b.containsKey(lowerCase)) {
                f35271b.put(lowerCase, componentFactory);
            }
        }
    }
}
