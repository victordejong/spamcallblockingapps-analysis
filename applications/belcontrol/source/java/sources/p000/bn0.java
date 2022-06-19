package p000;

import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* renamed from: bn0 */
/* loaded from: classes-dex2jar.jar:bn0.class */
public class bn0 {

    /* renamed from: a */
    public static final ConcurrentHashMap<String, JSONObject> f1998a = new ConcurrentHashMap<>();

    /* renamed from: a */
    public static JSONObject m5597a(String str) {
        return f1998a.get(str);
    }

    /* renamed from: b */
    public static void m5596b(String str, JSONObject jSONObject) {
        f1998a.put(str, jSONObject);
    }
}
