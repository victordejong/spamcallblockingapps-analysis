package com.moat.analytics.mobile.mpub;

import android.graphics.Rect;
import android.view.View;
import com.moat.analytics.mobile.mpub.NativeDisplayTracker;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.mpub.t */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/t.class */
public class C8659t extends AbstractC8618b implements NativeDisplayTracker {

    /* renamed from: g */
    public final Map<String, String> f33568g;

    /* renamed from: h */
    public final Set<NativeDisplayTracker.MoatUserInteractionType> f33569h = new HashSet();

    public C8659t(View view, Map<String, String> map) {
        super(view, true, false);
        C8643m e;
        C8643m mVar;
        C8652p.m4848a(3, "NativeDisplayTracker", this, "Initializing.");
        this.f33568g = map;
        if (view == null) {
            C8652p.m4845a("[ERROR] ", 3, "NativeDisplayTracker", this, "NativeDisplayTracker initialization not successful, Target view is null");
            mVar = new C8643m("Target view is null");
        } else {
            if (map == null || map.isEmpty()) {
                C8652p.m4845a("[ERROR] ", 3, "NativeDisplayTracker", this, "NativeDisplayTracker initialization not successful, AdIds is null or empty");
                e = new C8643m("AdIds is null or empty");
            } else {
                C8624g gVar = ((C8641k) MoatAnalytics.getInstance()).f33521d;
                if (gVar == null) {
                    C8652p.m4845a("[ERROR] ", 3, "NativeDisplayTracker", this, "NativeDisplayTracker initialization not successful, prepareNativeDisplayTracking was not called successfully");
                    mVar = new C8643m("prepareNativeDisplayTracking was not called successfully");
                } else {
                    super.m4978a(gVar.f33459b);
                    try {
                        super.m4979a(gVar.f33458a);
                        m4821i();
                        C8652p.m4843a("[SUCCESS] ", mo4781a() + " created for " + m4972g() + ", with adIds:" + map.toString());
                        return;
                    } catch (C8643m e2) {
                        e = e2;
                    }
                }
            }
            this.f33433a = e;
            return;
        }
        this.f33433a = mVar;
    }

    /* renamed from: a */
    public static String m4822a(Map<String, String> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i = 0; i < 8; i++) {
            String str = "moatClientLevel" + i;
            if (map.containsKey(str)) {
                linkedHashMap.put(str, map.get(str));
            }
        }
        for (int i2 = 0; i2 < 8; i2++) {
            String str2 = "moatClientSlicer" + i2;
            if (map.containsKey(str2)) {
                linkedHashMap.put(str2, map.get(str2));
            }
        }
        for (String str3 : map.keySet()) {
            if (!linkedHashMap.containsKey(str3)) {
                linkedHashMap.put(str3, map.get(str3));
            }
        }
        return new JSONObject(linkedHashMap).toString();
    }

    /* renamed from: i */
    private void m4821i() {
        C8636j jVar = this.f33435c;
        if (jVar != null) {
            jVar.m4921a(m4820j());
        }
    }

    /* renamed from: j */
    private String m4820j() {
        String str;
        try {
            String a = m4822a(this.f33568g);
            C8652p.m4848a(3, "NativeDisplayTracker", this, "Parsed ad ids = " + a);
            str = "{\"adIds\":" + a + ", \"adKey\":\"" + this.f33437e + "\", \"adSize\":" + m4819k() + "}";
        } catch (Exception e) {
            C8643m.m4879a(e);
            str = "";
        }
        return str;
    }

    /* renamed from: k */
    private String m4819k() {
        try {
            Rect a = C8682z.m4771a(super.m4973f());
            int width = a.width();
            int height = a.height();
            HashMap hashMap = new HashMap();
            hashMap.put("width", Integer.toString(width));
            hashMap.put("height", Integer.toString(height));
            return new JSONObject(hashMap).toString();
        } catch (Exception e) {
            C8643m.m4879a(e);
            return null;
        }
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public String mo4781a() {
        return "NativeDisplayTracker";
    }

    @Override // com.moat.analytics.mobile.mpub.NativeDisplayTracker
    public void reportUserInteractionEvent(NativeDisplayTracker.MoatUserInteractionType moatUserInteractionType) {
        Exception e;
        try {
            C8652p.m4848a(3, "NativeDisplayTracker", this, "reportUserInteractionEvent:" + moatUserInteractionType.name());
            if (!this.f33569h.contains(moatUserInteractionType)) {
                this.f33569h.add(moatUserInteractionType);
                JSONObject jSONObject = new JSONObject();
                jSONObject.accumulate("adKey", this.f33437e);
                jSONObject.accumulate("event", moatUserInteractionType.name().toLowerCase());
                if (this.f33435c != null) {
                    this.f33435c.m4915b(jSONObject.toString());
                }
            }
        } catch (JSONException e2) {
            e = e2;
            C8652p.m4842b(2, "NativeDisplayTracker", this, "Got JSON exception");
            C8643m.m4879a(e);
        } catch (Exception e3) {
            e = e3;
            C8643m.m4879a(e);
        }
    }
}
