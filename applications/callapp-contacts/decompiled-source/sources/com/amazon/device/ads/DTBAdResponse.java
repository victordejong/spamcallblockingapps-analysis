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

    /* renamed from: a  reason: collision with root package name */
    String f6406a;

    /* renamed from: b  reason: collision with root package name */
    boolean f6407b;

    /* renamed from: c  reason: collision with root package name */
    String f6408c;
    String e;
    String f;
    private Map<String, List<String>> g = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    Map<DTBAdSize, List<DtbPricePoint>> f6409d = new HashMap();

    private Map<String, List<String>> e() {
        HashMap hashMap = new HashMap();
        if (this.f6407b) {
            hashMap.put("amzn_vid", Collections.singletonList(this.f6406a));
            DtbSharedPreferences.c();
            hashMap.put("amzn_h", Collections.singletonList(DtbDebugProperties.b(DtbSharedPreferences.m())));
            for (DtbPricePoint dtbPricePoint : this.f6409d.get(c().get(0))) {
                hashMap.put("amznslots", Collections.singletonList(dtbPricePoint.f6505a));
            }
            hashMap.putAll(this.g);
        }
        return hashMap;
    }

    public final String a(DTBAdSize dTBAdSize) {
        List<DtbPricePoint> list = this.f6409d.get(dTBAdSize);
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).f6505a);
            if (i != list.size() - 1) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public final Map<String, List<String>> a() {
        HashMap hashMap = new HashMap();
        if (!this.f6407b) {
            if (this.f6409d.size() > 0) {
                String str = "amzn_b";
                hashMap.put("amzn_b", Collections.singletonList(this.f6406a));
                if (this.f6407b) {
                    str = "amzn_vid";
                }
                hashMap.put(str, Collections.singletonList(this.f6406a));
                DtbSharedPreferences.c();
                hashMap.put("amzn_h", Collections.singletonList(DtbSharedPreferences.l()));
                for (DtbPricePoint dtbPricePoint : this.f6409d.get(c().get(0))) {
                    hashMap.put("amznslots", Collections.singletonList(dtbPricePoint.f6505a));
                }
            }
            hashMap.putAll(this.g);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(JSONObject jSONObject) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (this.g.get(next) == null) {
                        this.g.put(next, new ArrayList());
                    }
                    this.g.get(next).add(jSONArray.getString(i));
                }
            }
        }
    }

    public final int b() {
        return this.f6409d.size();
    }

    public final List<DTBAdSize> c() {
        return new ArrayList(this.f6409d.keySet());
    }

    public final String d() {
        DtbLog.b();
        StringBuilder sb = new StringBuilder();
        Map<String, List<String>> a2 = !this.f6407b ? a() : e();
        if (this.f6409d.size() > 0) {
            boolean z = true;
            for (Map.Entry<String, List<String>> entry : a2.entrySet()) {
                Iterator<String> it2 = entry.getValue().iterator();
                while (true) {
                    z = z;
                    if (it2.hasNext()) {
                        String next = it2.next();
                        if (z) {
                            z = false;
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
