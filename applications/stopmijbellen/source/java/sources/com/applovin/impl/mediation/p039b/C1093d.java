package com.applovin.impl.mediation.p039b;

import android.net.Uri;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.network.C1464h;
import com.applovin.impl.sdk.network.C1467i;
import com.applovin.impl.sdk.p055c.C1313a;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinPostbackListener;
import com.google.android.gms.internal.ads.C1676a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.b.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/b/d.class */
public class C1093d extends AbstractRunnableC1331a {

    /* renamed from: a */
    private final String f3941a;

    /* renamed from: c */
    private final String f3942c;

    /* renamed from: d */
    private final C1049f f3943d;

    /* renamed from: e */
    private final Map<String, String> f3944e;

    /* renamed from: f */
    private final Map<String, String> f3945f;

    /* renamed from: g */
    private final MaxError f3946g;

    public C1093d(String str, Map<String, String> map, MaxError maxError, C1049f c1049f, C1408l c1408l) {
        super("TaskFireMediationPostbacks", c1408l);
        this.f3941a = str;
        this.f3942c = C1676a.m4789h(str, "_urls");
        this.f3944e = Utils.toUrlSafeMap(map);
        this.f3946g = maxError != null ? maxError : new MaxErrorImpl(-1);
        this.f3943d = c1049f;
        HashMap hashMap = new HashMap(7);
        hashMap.put("AppLovin-Event-Type", str);
        hashMap.put("AppLovin-Ad-Network-Name", c1049f.m6653O());
        if (c1049f instanceof AbstractC1044a) {
            AbstractC1044a abstractC1044a = (AbstractC1044a) c1049f;
            hashMap.put("AppLovin-Ad-Unit-Id", abstractC1044a.getAdUnitId());
            hashMap.put("AppLovin-Ad-Format", abstractC1044a.getFormat().getLabel());
            hashMap.put("AppLovin-Third-Party-Ad-Placement-ID", abstractC1044a.m6705l());
        }
        if (maxError != null) {
            hashMap.put("AppLovin-Error-Code", String.valueOf(maxError.getCode()));
            hashMap.put("AppLovin-Error-Message", maxError.getMessage());
        }
        this.f3945f = hashMap;
    }

    /* renamed from: a */
    private String m6497a(String str, MaxError maxError) {
        int i;
        String str2;
        if (maxError instanceof MaxAdapterError) {
            MaxAdapterError maxAdapterError = (MaxAdapterError) maxError;
            i = maxAdapterError.getThirdPartySdkErrorCode();
            str2 = maxAdapterError.getThirdPartySdkErrorMessage();
        } else {
            i = 0;
            str2 = "";
        }
        return str.replace("{ERROR_CODE}", String.valueOf(maxError.getCode())).replace("{ERROR_MESSAGE}", StringUtils.encodeUrlString(maxError.getMessage())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(i)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", StringUtils.encodeUrlString(str2));
    }

    /* renamed from: a */
    private List<String> m6494a(List<String> list, Map<String, String> map, Map<String, String> map2, MaxError maxError) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            for (String str : map.keySet()) {
                next = next.replace(str, this.f3943d.m6618g(map.get(str)));
            }
            arrayList.add(m6497a(m6493b(next, map2), maxError));
        }
        return arrayList;
    }

    /* renamed from: a */
    private Map<String, String> m6499a() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) this.f5113b.m5511a(C1313a.f4696i)));
        } catch (JSONException e) {
            return Collections.EMPTY_MAP;
        }
    }

    /* renamed from: a */
    private void m6496a(String str, Map<String, Object> map) {
        m5729d().m5523T().m5257a(C1464h.m5222o().m5211c(str).m5215b("POST").m5214b(this.f3945f).m5217a(false).m5210c(map).m5213b(((Boolean) this.f5113b.m5511a(C1313a.f4687V)).booleanValue()).m5221a());
    }

    /* renamed from: a */
    private void m6495a(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                m5729d().m5523T().m5257a(C1464h.m5222o().m5211c(str).m5217a(false).m5214b(this.f3945f).m5221a());
            }
        }
    }

    /* renamed from: b */
    private String m6493b(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            str = str.replace(str2, StringUtils.emptyIfNull(map.get(str2)));
        }
        return str;
    }

    /* renamed from: b */
    private void m6492b(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                m5729d().m5520W().dispatchPostbackRequest(C1467i.m5200b(m5729d()).mo5192a(str).mo5179c(false).mo5184b(this.f3945f).mo5196a(), C1362o.EnumC1364a.MEDIATION_POSTBACKS, new AppLovinPostbackListener() { // from class: com.applovin.impl.mediation.b.d.1
                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackFailure(String str2, int i) {
                        C1093d c1093d = C1093d.this;
                        c1093d.m5728d("Failed to fire postback with code: " + i + " and url: " + str2);
                    }

                    @Override // com.applovin.sdk.AppLovinPostbackListener
                    public void onPostbackSuccess(String str2) {
                    }
                });
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> m6619f = this.f3943d.m6619f(this.f3942c);
        Map<String, String> m6499a = m6499a();
        if (!((Boolean) m5729d().m5511a(C1313a.f4681P)).booleanValue()) {
            List<String> m6494a = m6494a(m6619f, m6499a, this.f3944e, this.f3946g);
            if (((Boolean) m5729d().m5511a(C1313a.f4697j)).booleanValue()) {
                m6495a(m6494a);
                return;
            } else {
                m6492b(m6494a);
                return;
            }
        }
        for (String str : m6619f) {
            Uri parse = Uri.parse(m6497a(m6493b(str, this.f3944e), this.f3946g));
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            HashMap hashMap = new HashMap(m6499a.size());
            for (String str2 : parse.getQueryParameterNames()) {
                String queryParameter = parse.getQueryParameter(str2);
                if (m6499a.containsKey(queryParameter)) {
                    hashMap.put(str2, this.f3943d.m6618g(m6499a.get(queryParameter)));
                } else {
                    clearQuery.appendQueryParameter(str2, queryParameter);
                }
            }
            m6496a(clearQuery.build().toString(), hashMap);
        }
    }
}
