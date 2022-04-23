package p131c.p161d.p162a.p163b.p166h;

import com.google.ads.mediation.inmobi.InMobiAdapter;
import com.inmobi.sdk.InMobiSdk;
import org.json.JSONObject;
/* renamed from: c.d.a.b.h.d */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/d.class */
public class C2473d {

    /* renamed from: a */
    public static JSONObject f9435a = new JSONObject();

    /* renamed from: a */
    public static JSONObject m29701a() {
        return f9435a;
    }

    /* renamed from: a */
    public static void m29700a(JSONObject jSONObject) {
        if (InMobiAdapter.isAppInitialized().booleanValue()) {
            InMobiSdk.updateGDPRConsent(jSONObject);
        }
        f9435a = jSONObject;
    }
}
