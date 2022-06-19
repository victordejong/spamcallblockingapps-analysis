package p193e.p194a.p1340w2;

import android.content.Context;
import com.appsflyer.AppsFlyerLib;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import s1.z.c.l;
/* renamed from: e.a.w2.a */
/* loaded from: classes5-dex2jar.jar:e/a/w2/a.class */
public final class C21188a {

    /* renamed from: a */
    public final Context f59370a;

    @Inject
    public C21188a(Context context) {
        l.e(context, "appContext");
        this.f59370a = context;
    }

    /* renamed from: a */
    public final void m10153a(String str, Map<String, ? extends Object> map) {
        C21189b c21189b = C21189b.f59373c;
        Context context = this.f59370a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, ? extends Object>> it = map.entrySet().iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ? extends Object> next = it.next();
            if (next.getValue() == null) {
                z = false;
            }
            if (z) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "eventName");
        l.e(linkedHashMap, "params");
        AppsFlyerLib m10152a = C21189b.m10152a(context);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (entry.getValue() != null) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        m10152a.logEvent(context, str, linkedHashMap2);
    }
}
