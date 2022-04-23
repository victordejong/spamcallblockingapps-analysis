package com.inmobi.commons.core.configs;

import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.NetworkError;
import com.inmobi.commons.core.p513e.C8366b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/ConfigNetworkResponse.class */
public final class ConfigNetworkResponse {

    /* renamed from: b */
    public static final String f32461b = "com.inmobi.commons.core.configs.ConfigNetworkResponse";

    /* renamed from: a */
    public Map<String, ConfigResponse> f32462a = new HashMap();

    /* renamed from: c */
    public Map<String, AbstractC8346a> f32463c;

    /* renamed from: d */
    public C8384d f32464d;

    /* renamed from: e */
    public C8354d f32465e;

    /* renamed from: f */
    public long f32466f;

    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse.class */
    public static final class ConfigResponse {

        /* renamed from: a */
        public ConfigResponseStatus f32467a;

        /* renamed from: b */
        public AbstractC8346a f32468b;

        /* renamed from: c */
        public C8354d f32469c;

        /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus.class */
        public enum ConfigResponseStatus {
            SUCCESS(200),
            NOT_MODIFIED(304),
            PRODUCT_NOT_FOUND(404),
            INTERNAL_ERROR(500),
            UNKNOWN(-1);
            

            /* renamed from: a */
            public int f32470a;

            ConfigResponseStatus(int i) {
                this.f32470a = i;
            }

            public static ConfigResponseStatus fromValue(int i) {
                ConfigResponseStatus[] values;
                for (ConfigResponseStatus configResponseStatus : values()) {
                    if (configResponseStatus.f32470a == i) {
                        return configResponseStatus;
                    }
                }
                return UNKNOWN;
            }

            public final int getValue() {
                return this.f32470a;
            }
        }

        public ConfigResponse(JSONObject jSONObject, AbstractC8346a aVar) {
            this.f32468b = aVar;
            if (jSONObject != null) {
                try {
                    ConfigResponseStatus fromValue = ConfigResponseStatus.fromValue(jSONObject.getInt("status"));
                    this.f32467a = fromValue;
                    if (fromValue == ConfigResponseStatus.SUCCESS) {
                        this.f32468b.mo5777a(jSONObject.getJSONObject("content"));
                        if (!this.f32468b.mo5774c()) {
                            this.f32469c = new C8354d(2, "The received config has failed validation.");
                            String unused = ConfigNetworkResponse.f32461b;
                            StringBuilder sb = new StringBuilder("Config type:");
                            sb.append(this.f32468b.mo5778a());
                            sb.append(" Error code:");
                            sb.append(this.f32469c.f32486a);
                            sb.append(" Error message:");
                            sb.append(this.f32469c.f32487b);
                        }
                    } else if (fromValue == ConfigResponseStatus.NOT_MODIFIED) {
                        String unused2 = ConfigNetworkResponse.f32461b;
                        StringBuilder sb2 = new StringBuilder("Config type:");
                        sb2.append(this.f32468b.mo5778a());
                        sb2.append(" Config not modified");
                    } else {
                        this.f32469c = new C8354d(1, fromValue.toString());
                        String unused3 = ConfigNetworkResponse.f32461b;
                        StringBuilder sb3 = new StringBuilder("Config type:");
                        sb3.append(this.f32468b.mo5778a());
                        sb3.append(" Error code:");
                        sb3.append(this.f32469c.f32486a);
                        sb3.append(" Error message:");
                        sb3.append(this.f32469c.f32487b);
                    }
                } catch (JSONException e) {
                    this.f32469c = new C8354d(2, e.getLocalizedMessage());
                    String unused4 = ConfigNetworkResponse.f32461b;
                    StringBuilder sb4 = new StringBuilder("Config type:");
                    sb4.append(this.f32468b.mo5778a());
                    sb4.append(" Error code:");
                    sb4.append(this.f32469c.f32486a);
                    sb4.append(" Error message:");
                    sb4.append(this.f32469c.f32487b);
                }
            }
        }

        /* renamed from: a */
        public final boolean m5848a() {
            return this.f32469c != null;
        }
    }

    public ConfigNetworkResponse(Map<String, AbstractC8346a> map, C8384d dVar, long j) {
        this.f32463c = map;
        this.f32464d = dVar;
        this.f32466f = j;
        m5849c();
    }

    /* renamed from: a */
    public static String m5851a(Map<String, AbstractC8346a> map) {
        String str = "";
        for (String str2 : map.keySet()) {
            str = str + str2 + ",";
        }
        return str.substring(0, str.length() - 1);
    }

    /* renamed from: c */
    private void m5849c() {
        if (!this.f32464d.m5733a()) {
            try {
                JSONObject jSONObject = new JSONObject(this.f32464d.m5731b());
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (this.f32463c.get(next) != null) {
                        this.f32462a.put(next, new ConfigResponse(jSONObject2, this.f32463c.get(next)));
                    }
                }
            } catch (JSONException e) {
                this.f32465e = new C8354d(2, e.getLocalizedMessage());
                StringBuilder sb = new StringBuilder("Error code:");
                sb.append(this.f32465e.f32486a);
                sb.append(" Error message:");
                sb.append(this.f32465e.f32487b);
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("name", m5851a(this.f32463c));
                    hashMap.put("errorCode", "ParsingError");
                    hashMap.put("reason", e.getLocalizedMessage());
                    hashMap.put("latency", Long.valueOf(this.f32466f));
                    C8366b.m5794a();
                    C8366b.m5789a("root", "InvalidConfig", hashMap);
                } catch (Exception e2) {
                    StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                    sb2.append(e2.getMessage());
                    sb2.append(")");
                }
            }
        } else {
            for (Map.Entry<String, AbstractC8346a> entry : this.f32463c.entrySet()) {
                ConfigResponse configResponse = new ConfigResponse(null, entry.getValue());
                configResponse.f32469c = new C8354d(0, "Network error in fetching config.");
                this.f32462a.put(entry.getKey(), configResponse);
            }
            this.f32465e = new C8354d(0, this.f32464d.f32624b.f32583b);
            StringBuilder sb3 = new StringBuilder("Error code:");
            sb3.append(this.f32465e.f32486a);
            sb3.append(" Error message:");
            sb3.append(this.f32465e.f32487b);
            try {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("name", m5851a(this.f32463c));
                hashMap2.put("errorCode", String.valueOf(this.f32464d.f32624b.f32582a.getValue()));
                hashMap2.put("reason", this.f32464d.f32624b.f32583b);
                hashMap2.put("latency", Long.valueOf(this.f32466f));
                C8366b.m5794a();
                C8366b.m5789a("root", "InvalidConfig", hashMap2);
            } catch (Exception e3) {
                StringBuilder sb4 = new StringBuilder("Error in submitting telemetry event : (");
                sb4.append(e3.getMessage());
                sb4.append(")");
            }
        }
    }

    /* renamed from: a */
    public final boolean m5852a() {
        NetworkError networkError;
        C8384d dVar = this.f32464d;
        if (dVar == null || (networkError = dVar.f32624b) == null) {
            return false;
        }
        NetworkError.ErrorCode errorCode = networkError.f32582a;
        if (errorCode == NetworkError.ErrorCode.BAD_REQUEST) {
            return true;
        }
        int value = errorCode.getValue();
        return 500 <= value && value < 600;
    }
}
