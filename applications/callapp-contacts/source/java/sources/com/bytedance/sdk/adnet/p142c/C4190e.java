package com.bytedance.sdk.adnet.p142c;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.C4151a;
import com.bytedance.sdk.adnet.p143d.C4228d;
import com.bytedance.sdk.adnet.p143d.C4233e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.adnet.c.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/c/e.class */
public class C4190e {

    /* renamed from: d */
    private static final Object f15340d = new Object();

    /* renamed from: a */
    private Context f15341a;

    /* renamed from: b */
    private C4189d f15342b = new C4189d();

    /* renamed from: c */
    private boolean f15343c;

    public C4190e(Context context, boolean z) {
        this.f15343c = true;
        this.f15341a = context;
        this.f15343c = z;
    }

    /* renamed from: b */
    private C4189d m36227b(JSONObject jSONObject) {
        try {
            C4189d c4189d = new C4189d();
            if (jSONObject.has("local_enable")) {
                c4189d.f15325a = jSONObject.getInt("local_enable") != 0;
            }
            if (jSONObject.has("probe_enable")) {
                boolean z = true;
                if (jSONObject.getInt("probe_enable") == 0) {
                    z = false;
                }
                c4189d.f15326b = z;
            }
            if (jSONObject.has("local_host_filter")) {
                JSONArray jSONArray = jSONObject.getJSONArray("local_host_filter");
                HashMap hashMap = new HashMap();
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        String string = jSONArray.getString(i);
                        if (!TextUtils.isEmpty(string)) {
                            hashMap.put(string, 0);
                        }
                    }
                }
                c4189d.f15327c = hashMap;
            } else {
                c4189d.f15327c = null;
            }
            if (jSONObject.has("host_replace_map")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("host_replace_map");
                HashMap hashMap2 = new HashMap();
                if (jSONObject2.length() > 0) {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String string2 = jSONObject2.getString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string2)) {
                            hashMap2.put(next, string2);
                        }
                    }
                }
                c4189d.f15328d = hashMap2;
            } else {
                c4189d.f15328d = null;
            }
            c4189d.f15329e = jSONObject.optInt("req_to_cnt", c4189d.f15329e);
            c4189d.f15330f = jSONObject.optInt("req_to_api_cnt", c4189d.f15330f);
            c4189d.f15331g = jSONObject.optInt("req_to_ip_cnt", c4189d.f15331g);
            c4189d.f15332h = jSONObject.optInt("req_err_cnt", c4189d.f15332h);
            c4189d.f15333i = jSONObject.optInt("req_err_api_cnt", c4189d.f15333i);
            c4189d.f15334j = jSONObject.optInt("req_err_ip_cnt", c4189d.f15334j);
            c4189d.f15335k = jSONObject.optInt("update_interval", c4189d.f15335k);
            c4189d.f15336l = jSONObject.optInt("update_random_range", c4189d.f15336l);
            c4189d.f15337m = jSONObject.optString("http_code_black", c4189d.f15337m);
            return c4189d;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public void m36230a() {
        if (!this.f15343c) {
            return;
        }
        String string = this.f15341a.getSharedPreferences("ttnet_tnc_config", 0).getString("tnc_config_str", null);
        if (TextUtils.isEmpty(string)) {
            C4228d.m36086b("TNCConfigHandler", "loadLocalConfig: no existed");
            return;
        }
        try {
            C4189d m36227b = m36227b(new JSONObject(string));
            if (m36227b != null) {
                this.f15342b = m36227b;
            }
            StringBuilder sb = new StringBuilder("loadLocalConfig: ");
            sb.append(m36227b == null ? JsonReaderKt.NULL : m36227b.toString());
            C4228d.m36086b("TNCConfigHandler", sb.toString());
        } catch (Throwable th) {
            th.printStackTrace();
            C4228d.m36086b("TNCConfigHandler", "loadLocalConfig: except: " + th.getMessage());
        }
    }

    /* renamed from: a */
    public void m36229a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (!this.f15343c) {
            C4228d.m36086b("TNCConfigHandler", "handleConfigChanged: no mainProc");
            return;
        }
        C4191f.m36225a().m36215b();
        try {
            boolean z = jSONObject.optInt("ttnet_url_dispatcher_enabled", 0) > 0;
            JSONArray optJSONArray = jSONObject.optJSONArray("ttnet_dispatch_actions");
            JSONObject jSONObject3 = null;
            if (C4151a.m36303b()) {
                jSONObject3 = null;
                if (z) {
                    jSONObject3 = null;
                    if (optJSONArray != null) {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject jSONObject4 = ((JSONObject) optJSONArray.get(i)).getJSONObject("param");
                            if (jSONObject4.optString("service_name", "").equals("idc_selection")) {
                                arrayList.add(jSONObject4.getJSONObject("strategy_info"));
                            }
                        }
                        jSONObject3 = null;
                        if (!arrayList.isEmpty()) {
                            JSONObject jSONObject5 = new JSONObject();
                            Iterator it2 = arrayList.iterator();
                            while (true) {
                                jSONObject3 = jSONObject5;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                JSONObject jSONObject6 = (JSONObject) it2.next();
                                Iterator<String> keys = jSONObject6.keys();
                                while (keys.hasNext()) {
                                    String next = keys.next();
                                    jSONObject5.put(next, jSONObject6.getString(next));
                                }
                            }
                        }
                    }
                }
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("tnc_config");
            if (optJSONObject == null && jSONObject3 == null) {
                C4228d.m36087a("TNCConfigHandler", " tnc host_replace_map config is null");
                jSONObject2 = optJSONObject;
            } else if (optJSONObject == null) {
                jSONObject2 = new JSONObject();
                jSONObject2.put("host_replace_map", jSONObject3);
            } else {
                jSONObject2 = optJSONObject;
                if (jSONObject3 != null) {
                    optJSONObject.put("host_replace_map", jSONObject3);
                    jSONObject2 = optJSONObject;
                }
            }
            C4189d m36227b = m36227b(jSONObject2);
            StringBuilder sb = new StringBuilder("handleConfigChanged, newConfig: ");
            sb.append(m36227b == null ? JsonReaderKt.NULL : m36227b.toString());
            C4228d.m36086b("TNCConfigHandler", sb.toString());
            if (m36227b == null) {
                synchronized (f15340d) {
                    this.f15341a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", "").apply();
                    C4233e.m36081a(this.f15341a, 1, "");
                }
                return;
            }
            this.f15342b = m36227b;
            String jSONObject7 = jSONObject2.toString();
            synchronized (f15340d) {
                this.f15341a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", jSONObject7).apply();
                C4233e.m36081a(this.f15341a, 1, jSONObject7);
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                this.f15342b = new C4189d();
                synchronized (f15340d) {
                    this.f15341a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", "").apply();
                    C4233e.m36081a(this.f15341a, 1, "");
                }
            } catch (Throwable th2) {
                synchronized (f15340d) {
                    this.f15341a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", "").apply();
                    C4233e.m36081a(this.f15341a, 1, "");
                    throw th2;
                }
            }
        }
    }

    /* renamed from: b */
    public void m36228b() {
        try {
            String m36082a = C4233e.m36082a(this.f15341a, 1);
            if (TextUtils.isEmpty(m36082a)) {
                C4228d.m36086b("TNCConfigHandler", "loadLocalConfigForOtherProcess, data empty");
                return;
            }
            C4189d m36227b = m36227b(new JSONObject(m36082a));
            StringBuilder sb = new StringBuilder("loadLocalConfigForOtherProcess, config: ");
            sb.append(m36227b == null ? JsonReaderKt.NULL : m36227b.toString());
            C4228d.m36086b("TNCConfigHandler", sb.toString());
            if (m36227b == null) {
                return;
            }
            this.f15342b = m36227b;
        } catch (Throwable th) {
            C4228d.m36086b("TNCConfigHandler", "loadLocalConfigForOtherProcess, except: " + th.getMessage());
        }
    }

    /* renamed from: c */
    public C4189d m36226c() {
        return this.f15342b;
    }
}
