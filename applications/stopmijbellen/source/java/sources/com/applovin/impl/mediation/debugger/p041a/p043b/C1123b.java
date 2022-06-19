package com.applovin.impl.mediation.debugger.p041a.p043b;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.mediation.debugger.a.b.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/b/b.class */
public class C1123b implements AppLovinCommunicatorSubscriber, Comparable<C1123b> {

    /* renamed from: a */
    private final C1408l f4041a;

    /* renamed from: b */
    private final EnumC1124a f4042b;

    /* renamed from: c */
    private int f4043c;

    /* renamed from: d */
    private final boolean f4044d;

    /* renamed from: e */
    private final boolean f4045e;

    /* renamed from: f */
    private final boolean f4046f;

    /* renamed from: g */
    private final boolean f4047g;

    /* renamed from: h */
    private final boolean f4048h;

    /* renamed from: i */
    private final boolean f4049i;

    /* renamed from: j */
    private final boolean f4050j;

    /* renamed from: k */
    private final boolean f4051k;

    /* renamed from: l */
    private final String f4052l;

    /* renamed from: m */
    private final String f4053m;

    /* renamed from: n */
    private final String f4054n;

    /* renamed from: o */
    private String f4055o;

    /* renamed from: p */
    private final String f4056p;

    /* renamed from: q */
    private final String f4057q;

    /* renamed from: r */
    private final String f4058r;

    /* renamed from: s */
    private final int f4059s;

    /* renamed from: t */
    private final List<MaxAdFormat> f4060t;

    /* renamed from: u */
    private final List<C1127d> f4061u;

    /* renamed from: v */
    private final List<C1122a> f4062v;

    /* renamed from: w */
    private final List<String> f4063w;

    /* renamed from: x */
    private final C1126c f4064x;

    /* renamed from: com.applovin.impl.mediation.debugger.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/b/b$a.class */
    public enum EnumC1124a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");
        

        /* renamed from: e */
        private final String f4070e;

        EnumC1124a(String str) {
            this.f4070e = str;
        }

        /* renamed from: a */
        public String m6357a() {
            return this.f4070e;
        }
    }

    /* renamed from: com.applovin.impl.mediation.debugger.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/a/b/b$b.class */
    public enum EnumC1125b {
        NOT_SUPPORTED("Not Supported", -65536, "This network does not support test mode."),
        INVALID_INTEGRATION("Invalid Integration", -65536, "Please address all the integration issue(s) marked in red above."),
        NOT_INITIALIZED("Not Initialized", -65536, "Please configure this network in your MAX dashboard."),
        DISABLED("Enable", -16776961, "Please re-launch the app to enable test ads."),
        READY("", -16776961, "");
        

        /* renamed from: f */
        private final String f4077f;

        /* renamed from: g */
        private final int f4078g;

        /* renamed from: h */
        private final String f4079h;

        EnumC1125b(String str, int i, String str2) {
            this.f4077f = str;
            this.f4078g = i;
            this.f4079h = str2;
        }

        /* renamed from: a */
        public String m6355a() {
            return this.f4077f;
        }

        /* renamed from: b */
        public int m6354b() {
            return this.f4078g;
        }

        /* renamed from: c */
        public String m6353c() {
            return this.f4079h;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:8|(6:46|9|10|42|11|(1:13)(1:14))|(5:48|15|16|17|18)|44|25|28) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x01b8, code lost:
        r17 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x01ba, code lost:
        r9.m5542A().m5115b("MediatedNetwork", "Failed to check if adapter overrides MaxNativeAdAdapter", r17);
        r18 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0272  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1123b(org.json.JSONObject r8, com.applovin.impl.sdk.C1408l r9) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.debugger.p041a.p043b.C1123b.<init>(org.json.JSONObject, com.applovin.impl.sdk.l):void");
    }

    /* renamed from: a */
    private List<MaxAdFormat> m6384a(MaxAdapter maxAdapter) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxRewardedInterstitialAdapter) {
            arrayList.add(MaxAdFormat.REWARDED_INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            arrayList.add(MaxAdFormat.MREC);
        }
        if (maxAdapter instanceof MaxNativeAdAdapter) {
            arrayList.add(MaxAdFormat.NATIVE);
        }
        return arrayList;
    }

    /* renamed from: a */
    private List<String> m6383a(JSONObject jSONObject) {
        return JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "supported_regions", null), null);
    }

    /* renamed from: a */
    private List<C1127d> m6382a(JSONObject jSONObject, C1408l c1408l) {
        ArrayList arrayList = new ArrayList();
        if (this.f4054n.equals("com.applovin.mediation.adapters.AppLovinMediationAdapter")) {
            C1127d c1127d = new C1127d("com.google.android.gms.permission.AD_ID", "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml", c1408l.m5532K());
            if (c1127d.m6347c()) {
                arrayList.add(c1127d);
            }
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "permissions", new JSONObject());
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            try {
                String next = keys.next();
                arrayList.add(new C1127d(next, jSONObject2.getString(next), c1408l.m5532K()));
            } catch (JSONException e) {
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    private List<C1122a> m6381a(JSONObject jSONObject, String str, C1408l c1408l) {
        int i;
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "dependencies", new JSONArray());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "dependencies_v2", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray2.length() + jSONArray.length());
        int i2 = 0;
        while (true) {
            if (i2 < jSONArray.length()) {
                JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i2, (JSONObject) null);
                if (jSONObject2 != null) {
                    arrayList.add(new C1122a(jSONObject2, c1408l));
                }
                i2++;
            }
        }
        for (i = 0; i < jSONArray2.length(); i++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i, (JSONObject) null);
            if (jSONObject3 != null && C1122a.m6389a(str, JsonUtils.getString(jSONObject3, "min_adapter_version", null), JsonUtils.getString(jSONObject3, "max_adapter_version", null))) {
                arrayList.add(new C1122a(jSONObject3, c1408l));
            }
        }
        return arrayList;
    }

    /* renamed from: x */
    private EnumC1124a m6358x() {
        if (this.f4044d || this.f4045e) {
            for (C1127d c1127d : this.f4061u) {
                if (!c1127d.m6347c()) {
                    return EnumC1124a.INVALID_INTEGRATION;
                }
            }
            for (C1122a c1122a : this.f4062v) {
                if (!c1122a.m6387c()) {
                    return EnumC1124a.INVALID_INTEGRATION;
                }
            }
            if (this.f4064x.m6352a() && !this.f4064x.m6351b()) {
                return EnumC1124a.INVALID_INTEGRATION;
            }
            if (this.f4044d) {
                if (this.f4045e) {
                    return EnumC1124a.COMPLETE;
                }
                if (this.f4047g) {
                    return EnumC1124a.MISSING;
                }
            }
            return EnumC1124a.INCOMPLETE_INTEGRATION;
        }
        return EnumC1124a.MISSING;
    }

    /* renamed from: a */
    public int compareTo(C1123b c1123b) {
        return this.f4053m.compareToIgnoreCase(c1123b.f4053m);
    }

    /* renamed from: a */
    public EnumC1124a m6386a() {
        return this.f4042b;
    }

    /* renamed from: b */
    public int m6380b() {
        return this.f4043c;
    }

    /* renamed from: c */
    public EnumC1125b m6379c() {
        return !this.f4048h ? EnumC1125b.NOT_SUPPORTED : this.f4042b == EnumC1124a.INVALID_INTEGRATION ? EnumC1125b.INVALID_INTEGRATION : !this.f4041a.m5534I().m6192a() ? EnumC1125b.DISABLED : (!this.f4049i || !(this.f4043c == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || this.f4043c == MaxAdapter.InitializationStatus.INITIALIZING.getCode())) ? EnumC1125b.READY : EnumC1125b.NOT_INITIALIZED;
    }

    /* renamed from: d */
    public boolean m6378d() {
        return this.f4044d;
    }

    /* renamed from: e */
    public boolean m6377e() {
        return this.f4045e;
    }

    /* renamed from: f */
    public boolean m6376f() {
        return this.f4046f;
    }

    /* renamed from: g */
    public boolean m6375g() {
        return this.f4042b == EnumC1124a.MISSING && this.f4050j;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    /* renamed from: h */
    public String m6374h() {
        return this.f4052l;
    }

    /* renamed from: i */
    public String m6373i() {
        return this.f4053m;
    }

    /* renamed from: j */
    public String m6372j() {
        return this.f4055o;
    }

    /* renamed from: k */
    public String m6371k() {
        return this.f4056p;
    }

    /* renamed from: l */
    public String m6370l() {
        return this.f4057q;
    }

    /* renamed from: m */
    public String m6369m() {
        return this.f4054n;
    }

    /* renamed from: n */
    public List<String> m6368n() {
        return this.f4063w;
    }

    /* renamed from: o */
    public int m6367o() {
        return this.f4059s;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        String string = appLovinCommunicatorMessage.getMessageData().getString("adapter_class", "");
        if (this.f4054n.equals(string)) {
            this.f4043c = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
            MaxAdapter m6451b = C1107c.m6451b(string, this.f4041a);
            if (m6451b == null || this.f4055o.equals(m6451b.getSdkVersion())) {
                return;
            }
            this.f4055o = m6451b.getSdkVersion();
            this.f4041a.m5490ae().m5584a(this.f4055o, string);
        }
    }

    /* renamed from: p */
    public List<MaxAdFormat> m6366p() {
        return this.f4060t;
    }

    /* renamed from: q */
    public boolean m6365q() {
        return this.f4051k;
    }

    /* renamed from: r */
    public List<C1127d> m6364r() {
        return this.f4061u;
    }

    /* renamed from: s */
    public List<C1122a> m6363s() {
        return this.f4062v;
    }

    /* renamed from: t */
    public final C1126c m6362t() {
        return this.f4064x;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediatedNetwork{name=");
        m8752j.append(this.f4052l);
        m8752j.append(", displayName=");
        m8752j.append(this.f4053m);
        m8752j.append(", sdkAvailable=");
        m8752j.append(this.f4044d);
        m8752j.append(", sdkVersion=");
        m8752j.append(this.f4055o);
        m8752j.append(", adapterAvailable=");
        m8752j.append(this.f4045e);
        m8752j.append(", adapterVersion=");
        return C0082b.m8754h(m8752j, this.f4056p, "}");
    }

    /* renamed from: u */
    public String m6361u() {
        return this.f4058r;
    }

    /* renamed from: v */
    public final C1408l m6360v() {
        return this.f4041a;
    }

    /* renamed from: w */
    public final String m6359w() {
        StringBuilder m8752j = C0082b.m8752j("\n---------- ");
        m8752j.append(this.f4052l);
        m8752j.append(" ----------");
        m8752j.append("\nStatus  - ");
        m8752j.append(this.f4042b.m6357a());
        m8752j.append("\nSDK     - ");
        m8752j.append((!this.f4044d || TextUtils.isEmpty(this.f4055o)) ? "UNAVAILABLE" : this.f4055o);
        m8752j.append("\nAdapter - ");
        String str = "UNAVAILABLE";
        if (this.f4045e) {
            str = "UNAVAILABLE";
            if (!TextUtils.isEmpty(this.f4056p)) {
                str = this.f4056p;
            }
        }
        m8752j.append(str);
        if (this.f4064x.m6352a() && !this.f4064x.m6351b()) {
            m8752j.append("\n* ");
            m8752j.append(this.f4064x.m6350c());
        }
        for (C1127d c1127d : m6364r()) {
            if (!c1127d.m6347c()) {
                m8752j.append("\n* MISSING ");
                m8752j.append(c1127d.m6349a());
                m8752j.append(": ");
                m8752j.append(c1127d.m6348b());
            }
        }
        for (C1122a c1122a : m6363s()) {
            if (!c1122a.m6387c()) {
                m8752j.append("\n* MISSING ");
                m8752j.append(c1122a.m6390a());
                m8752j.append(": ");
                m8752j.append(c1122a.m6388b());
            }
        }
        return m8752j.toString();
    }
}
