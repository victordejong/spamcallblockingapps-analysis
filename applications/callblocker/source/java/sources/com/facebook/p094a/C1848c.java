package com.facebook.p094a;

import android.os.Build;
import android.os.Bundle;
import com.facebook.EnumC2197q;
import com.facebook.FacebookException;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p098c.C1852a;
import com.facebook.p094a.p099d.C1862b;
import com.facebook.p094a.p101f.C1901a;
import com.facebook.p094a.p101f.C1902b;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* renamed from: com.facebook.a.c */
/* loaded from: classes-dex2jar.jar:com/facebook/a/c.class */
public class C1848c implements Serializable {

    /* renamed from: a */
    private static final HashSet<String> f5621a = new HashSet<>();

    /* renamed from: b */
    private final JSONObject f5622b;

    /* renamed from: c */
    private final boolean f5623c;

    /* renamed from: d */
    private final boolean f5624d;

    /* renamed from: e */
    private final String f5625e;

    /* renamed from: f */
    private final String f5626f;

    /* renamed from: com.facebook.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/c$a.class */
    static class C1850a implements Serializable {

        /* renamed from: a */
        private final String f5627a;

        /* renamed from: b */
        private final boolean f5628b;

        /* renamed from: c */
        private final boolean f5629c;

        private Object readResolve() {
            return new C1848c(this.f5627a, this.f5628b, this.f5629c, null);
        }
    }

    /* renamed from: com.facebook.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/c$b.class */
    static class C1851b implements Serializable {

        /* renamed from: a */
        private final String f5630a;

        /* renamed from: b */
        private final boolean f5631b;

        /* renamed from: c */
        private final boolean f5632c;

        /* renamed from: d */
        private final String f5633d;

        private C1851b(String str, boolean z, boolean z2, String str2) {
            this.f5630a = str;
            this.f5631b = z;
            this.f5632c = z2;
            this.f5633d = str2;
        }

        private Object readResolve() {
            return new C1848c(this.f5630a, this.f5631b, this.f5632c, this.f5633d);
        }
    }

    public C1848c(String str, String str2, Double d, Bundle bundle, boolean z, boolean z2, UUID uuid) {
        this.f5623c = z;
        this.f5624d = z2;
        this.f5625e = str2;
        this.f5622b = m16105a(str, str2, d, bundle, uuid);
        this.f5626f = m16100e();
    }

    private C1848c(String str, boolean z, boolean z2, String str2) {
        this.f5622b = new JSONObject(str);
        this.f5623c = z;
        this.f5625e = this.f5622b.optString("_eventName");
        this.f5626f = str2;
        this.f5624d = z2;
    }

    /* renamed from: a */
    private Map<String, String> m16107a(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            m16106a(str);
            Object obj = bundle.get(str);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str));
            }
            hashMap.put(str, obj.toString());
        }
        C1901a.m15940a(hashMap);
        C1902b.m15937a(hashMap, this.f5625e);
        C1852a.m16097a(hashMap, this.f5625e);
        return hashMap;
    }

    /* renamed from: a */
    private JSONObject m16105a(String str, String str2, Double d, Bundle bundle, UUID uuid) {
        m16106a(str2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_eventName", str2);
        jSONObject.put("_eventName_md5", m16103b(str2));
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> m16107a = m16107a(bundle);
            for (String str3 : m16107a.keySet()) {
                jSONObject.put(str3, m16107a.get(str3));
            }
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (this.f5624d) {
            jSONObject.put("_inBackground", "1");
        }
        if (this.f5623c) {
            jSONObject.put("_implicitlyLogged", "1");
        } else {
            C2063r.m15549a(EnumC2197q.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static void m16106a(String str) {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            String str2 = str;
            if (str == null) {
                str2 = "<None Provided>";
            }
            throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str2, 40));
        }
        synchronized (f5621a) {
            contains = f5621a.contains(str);
        }
        if (contains) {
            return;
        }
        if (!str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
            throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
        }
        synchronized (f5621a) {
            f5621a.add(str);
        }
    }

    /* renamed from: b */
    private static String m16103b(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            str2 = C1862b.m16063a(messageDigest.digest());
        } catch (UnsupportedEncodingException e) {
            C2079x.m15470a("Failed to generate checksum: ", (Exception) e);
            str2 = "1";
        } catch (NoSuchAlgorithmException e2) {
            C2079x.m15470a("Failed to generate checksum: ", (Exception) e2);
            str2 = "0";
        }
        return str2;
    }

    /* renamed from: e */
    private String m16100e() {
        String m16103b;
        if (Build.VERSION.SDK_INT > 19) {
            m16103b = m16103b(this.f5622b.toString());
        } else {
            ArrayList arrayList = new ArrayList();
            Iterator<String> keys = this.f5622b.keys();
            while (keys.hasNext()) {
                arrayList.add(keys.next());
            }
            Collections.sort(arrayList);
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                sb.append(str).append(" = ").append(this.f5622b.optString(str)).append('\n');
            }
            m16103b = m16103b(sb.toString());
        }
        return m16103b;
    }

    private Object writeReplace() {
        return new C1851b(this.f5622b.toString(), this.f5623c, this.f5624d, this.f5626f);
    }

    /* renamed from: a */
    public String m16108a() {
        return this.f5625e;
    }

    /* renamed from: b */
    public boolean m16104b() {
        return this.f5623c;
    }

    /* renamed from: c */
    public JSONObject m16102c() {
        return this.f5622b;
    }

    /* renamed from: d */
    public boolean m16101d() {
        return this.f5626f == null ? true : m16100e().equals(this.f5626f);
    }

    public String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.f5622b.optString("_eventName"), Boolean.valueOf(this.f5623c), this.f5622b.toString());
    }
}
