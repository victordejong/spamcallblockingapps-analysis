package com.bytedance.sdk.adnet.c;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.a;
import com.bytedance.sdk.adnet.d.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/c/e.class */
public class e {

    /* renamed from: d  reason: collision with root package name */
    private static final Object f8254d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f8255a;

    /* renamed from: b  reason: collision with root package name */
    private d f8256b = new d();

    /* renamed from: c  reason: collision with root package name */
    private boolean f8257c;

    public e(Context context, boolean z) {
        this.f8257c = true;
        this.f8255a = context;
        this.f8257c = z;
    }

    private d b(JSONObject jSONObject) {
        try {
            d dVar = new d();
            boolean z = true;
            if (jSONObject.has("local_enable")) {
                dVar.f8250a = jSONObject.getInt("local_enable") != 0;
            }
            if (jSONObject.has("probe_enable")) {
                if (jSONObject.getInt("probe_enable") == 0) {
                    z = false;
                }
                dVar.f8251b = z;
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
                dVar.f8252c = hashMap;
            } else {
                dVar.f8252c = null;
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
                dVar.f8253d = hashMap2;
            } else {
                dVar.f8253d = null;
            }
            dVar.e = jSONObject.optInt("req_to_cnt", dVar.e);
            dVar.f = jSONObject.optInt("req_to_api_cnt", dVar.f);
            dVar.g = jSONObject.optInt("req_to_ip_cnt", dVar.g);
            dVar.h = jSONObject.optInt("req_err_cnt", dVar.h);
            dVar.i = jSONObject.optInt("req_err_api_cnt", dVar.i);
            dVar.j = jSONObject.optInt("req_err_ip_cnt", dVar.j);
            dVar.k = jSONObject.optInt("update_interval", dVar.k);
            dVar.l = jSONObject.optInt("update_random_range", dVar.l);
            dVar.m = jSONObject.optString("http_code_black", dVar.m);
            return dVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void a() {
        if (this.f8257c) {
            String string = this.f8255a.getSharedPreferences("ttnet_tnc_config", 0).getString("tnc_config_str", null);
            if (TextUtils.isEmpty(string)) {
                d.b("TNCConfigHandler", "loadLocalConfig: no existed");
                return;
            }
            try {
                d b2 = b(new JSONObject(string));
                if (b2 != null) {
                    this.f8256b = b2;
                }
                StringBuilder sb = new StringBuilder("loadLocalConfig: ");
                sb.append(b2 == null ? JsonReaderKt.NULL : b2.toString());
                d.b("TNCConfigHandler", sb.toString());
            } catch (Throwable th) {
                th.printStackTrace();
                d.b("TNCConfigHandler", "loadLocalConfig: except: " + th.getMessage());
            }
        }
    }

    public void a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (!this.f8257c) {
            d.b("TNCConfigHandler", "handleConfigChanged: no mainProc");
            return;
        }
        f.a().b();
        try {
            boolean z = jSONObject.optInt("ttnet_url_dispatcher_enabled", 0) > 0;
            JSONArray optJSONArray = jSONObject.optJSONArray("ttnet_dispatch_actions");
            JSONObject jSONObject3 = null;
            if (a.b()) {
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
                d.a("TNCConfigHandler", " tnc host_replace_map config is null");
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
            d b2 = b(jSONObject2);
            StringBuilder sb = new StringBuilder("handleConfigChanged, newConfig: ");
            sb.append(b2 == null ? JsonReaderKt.NULL : b2.toString());
            d.b("TNCConfigHandler", sb.toString());
            if (b2 == null) {
                synchronized (f8254d) {
                    this.f8255a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.adnet.d.e.a(this.f8255a, 1, "");
                }
                return;
            }
            this.f8256b = b2;
            String jSONObject7 = jSONObject2.toString();
            synchronized (f8254d) {
                this.f8255a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", jSONObject7).apply();
                com.bytedance.sdk.adnet.d.e.a(this.f8255a, 1, jSONObject7);
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                this.f8256b = new d();
                synchronized (f8254d) {
                    this.f8255a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.adnet.d.e.a(this.f8255a, 1, "");
                }
            } catch (Throwable th2) {
                synchronized (f8254d) {
                    this.f8255a.getSharedPreferences("ttnet_tnc_config", 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.adnet.d.e.a(this.f8255a, 1, "");
                    throw th2;
                }
            }
        }
    }

    public void b() {
        try {
            String a2 = com.bytedance.sdk.adnet.d.e.a(this.f8255a, 1);
            if (TextUtils.isEmpty(a2)) {
                d.b("TNCConfigHandler", "loadLocalConfigForOtherProcess, data empty");
                return;
            }
            d b2 = b(new JSONObject(a2));
            StringBuilder sb = new StringBuilder("loadLocalConfigForOtherProcess, config: ");
            sb.append(b2 == null ? JsonReaderKt.NULL : b2.toString());
            d.b("TNCConfigHandler", sb.toString());
            if (b2 != null) {
                this.f8256b = b2;
            }
        } catch (Throwable th) {
            d.b("TNCConfigHandler", "loadLocalConfigForOtherProcess, except: " + th.getMessage());
        }
    }

    public d c() {
        return this.f8256b;
    }
}
