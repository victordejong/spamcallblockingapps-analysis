package com.amazon.device.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdResponse.class */
public final class DTBAdResponse {

    /* renamed from: a */
    String f11765a;

    /* renamed from: b */
    boolean f11766b;

    /* renamed from: c */
    String f11767c;

    /* renamed from: e */
    String f11769e;

    /* renamed from: f */
    String f11770f;

    /* renamed from: g */
    private Map<String, List<String>> f11771g = new HashMap();

    /* renamed from: d */
    Map<DTBAdSize, List<DtbPricePoint>> f11768d = new HashMap();

    /* renamed from: e */
    private Map<String, List<String>> m38963e() {
        HashMap hashMap = new HashMap();
        if (this.f11766b) {
            hashMap.put("amzn_vid", Collections.singletonList(this.f11765a));
            DtbSharedPreferences.m38797c();
            hashMap.put("amzn_h", Collections.singletonList(DtbDebugProperties.m38872b(DtbSharedPreferences.m38776m())));
            for (DtbPricePoint dtbPricePoint : this.f11768d.get(m38965c().get(0))) {
                hashMap.put("amznslots", Collections.singletonList(dtbPricePoint.f11906a));
            }
            hashMap.putAll(this.f11771g);
        }
        return hashMap;
    }

    /* renamed from: a */
    public final String m38968a(DTBAdSize dTBAdSize) {
        List<DtbPricePoint> list = this.f11768d.get(dTBAdSize);
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).f11906a);
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final Map<String, List<String>> m38969a() {
        HashMap hashMap = new HashMap();
        if (!this.f11766b) {
            if (this.f11768d.size() > 0) {
                boolean z = "amzn_b";
                hashMap.put("amzn_b", Collections.singletonList(this.f11765a));
                if (this.f11766b) {
                    z = "amzn_vid";
                }
                hashMap.put(z, Collections.singletonList(this.f11765a));
                DtbSharedPreferences.m38797c();
                hashMap.put("amzn_h", Collections.singletonList(DtbSharedPreferences.m38777l()));
                for (DtbPricePoint dtbPricePoint : this.f11768d.get(m38965c().get(0))) {
                    hashMap.put("amznslots", Collections.singletonList(dtbPricePoint.f11906a));
                }
            }
            hashMap.putAll(this.f11771g);
        }
        return hashMap;
    }

    /* renamed from: a */
    public final void m38967a(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (this.f11771g.get(next) == null) {
                        this.f11771g.put(next, new ArrayList());
                    }
                    this.f11771g.get(next).add(jSONArray.getString(i));
                }
            }
        }
    }

    /* renamed from: b */
    public final int m38966b() {
        return this.f11768d.size();
    }

    /* renamed from: c */
    public final List<DTBAdSize> m38965c() {
        return new ArrayList(this.f11768d.keySet());
    }

    /* renamed from: d */
    public final String m38964d() {
        DtbLog.m38825b();
        StringBuilder sb = new StringBuilder();
        Map<String, List<String>> m38969a = !this.f11766b ? m38969a() : m38963e();
        if (this.f11768d.size() > 0) {
            boolean z = true;
            for (Map.Entry<String, List<String>> entry : m38969a.entrySet()) {
                Iterator<String> it2 = entry.getValue().iterator();
                boolean z2 = z;
                while (true) {
                    z = z2;
                    if (it2.hasNext()) {
                        String next = it2.next();
                        if (z2) {
                            z2 = false;
                        } else {
                            sb.append(",");
                        }
                        sb.append(entry.getKey());
                        sb.append(":");
                        sb.append(next);
                    }
                }
            }
        }
        return sb.toString();
    }
}
