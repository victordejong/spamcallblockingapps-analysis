package com.facebook.appevents;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.p038s.C2334b;
import com.facebook.appevents.p040u.C2360a;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2503y;
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
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
import p081h.p154f.EnumC6151v;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.c */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/c.class */
public class C2257c implements Serializable {

    /* renamed from: f */
    public static final HashSet<String> f2649f = new HashSet<>();

    /* renamed from: a */
    public final JSONObject f2650a;

    /* renamed from: b */
    public final boolean f2651b;

    /* renamed from: c */
    public final boolean f2652c;

    /* renamed from: d */
    public final String f2653d;

    /* renamed from: e */
    public final String f2654e;

    /* renamed from: com.facebook.appevents.c$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/c$b.class */
    public static class C2259b implements Serializable {

        /* renamed from: a */
        public final String f2655a;

        /* renamed from: b */
        public final boolean f2656b;

        /* renamed from: c */
        public final boolean f2657c;

        private Object readResolve() throws JSONException {
            return new C2257c(this.f2655a, this.f2656b, this.f2657c, null);
        }
    }

    /* renamed from: com.facebook.appevents.c$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/c$c.class */
    public static class C2260c implements Serializable {

        /* renamed from: a */
        public final String f2658a;

        /* renamed from: b */
        public final boolean f2659b;

        /* renamed from: c */
        public final boolean f2660c;

        /* renamed from: d */
        public final String f2661d;

        public C2260c(String str, boolean z, boolean z2, String str2) {
            this.f2658a = str;
            this.f2659b = z;
            this.f2660c = z2;
            this.f2661d = str2;
        }

        private Object readResolve() throws JSONException {
            return new C2257c(this.f2658a, this.f2659b, this.f2660c, this.f2661d);
        }
    }

    public C2257c(String str, @NonNull String str2, Double d, Bundle bundle, boolean z, boolean z2, @Nullable UUID uuid) throws JSONException, C6131k {
        this.f2651b = z;
        this.f2652c = z2;
        this.f2653d = str2;
        this.f2650a = m35368a(str, str2, d, bundle, uuid);
        this.f2654e = m35371a();
    }

    public C2257c(String str, boolean z, boolean z2, String str2) throws JSONException {
        this.f2650a = new JSONObject(str);
        this.f2651b = z;
        this.f2653d = this.f2650a.optString("_eventName");
        this.f2654e = str2;
        this.f2652c = z2;
    }

    /* renamed from: a */
    public static String m35369a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("UTF-8");
            instance.update(bytes, 0, bytes.length);
            return C2334b.m35127a(instance.digest());
        } catch (UnsupportedEncodingException e) {
            C2408g0.m34853a("Failed to generate checksum: ", (Exception) e);
            return "1";
        } catch (NoSuchAlgorithmException e2) {
            C2408g0.m34853a("Failed to generate checksum: ", (Exception) e2);
            return "0";
        }
    }

    /* renamed from: b */
    public static void m35366b(String str) throws C6131k {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            String str2 = str;
            if (str == null) {
                str2 = "<None Provided>";
            }
            throw new C6131k(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str2, 40));
        }
        synchronized (f2649f) {
            contains = f2649f.contains(str);
        }
        if (contains) {
            return;
        }
        if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
            synchronized (f2649f) {
                f2649f.add(str);
            }
            return;
        }
        throw new C6131k(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
    }

    private Object writeReplace() {
        return new C2260c(this.f2650a.toString(), this.f2651b, this.f2652c, this.f2654e);
    }

    /* renamed from: a */
    public final String m35371a() {
        if (Build.VERSION.SDK_INT > 19) {
            return m35369a(this.f2650a.toString());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = this.f2650a.keys();
        while (keys.hasNext()) {
            arrayList.add(keys.next());
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            sb.append(str);
            sb.append(" = ");
            sb.append(this.f2650a.optString(str));
            sb.append('\n');
        }
        return m35369a(sb.toString());
    }

    /* renamed from: a */
    public final Map<String, String> m35370a(Bundle bundle) throws C6131k {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            m35366b(str);
            Object obj = bundle.get(str);
            if ((obj instanceof String) || (obj instanceof Number)) {
                hashMap.put(str, obj.toString());
            } else {
                throw new C6131k(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str));
            }
        }
        C2360a.m35029a(hashMap, this.f2653d);
        return hashMap;
    }

    /* renamed from: a */
    public final JSONObject m35368a(String str, @NonNull String str2, Double d, Bundle bundle, @Nullable UUID uuid) throws JSONException {
        m35366b(str2);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("_eventName", str2);
        jSONObject.put("_eventName_md5", m35369a(str2));
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> a = m35370a(bundle);
            for (String str3 : a.keySet()) {
                jSONObject.put(str3, a.get(str3));
            }
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (this.f2652c) {
            jSONObject.put("_inBackground", "1");
        }
        if (this.f2651b) {
            jSONObject.put("_implicitlyLogged", "1");
        } else {
            C2503y.m34556a(EnumC6151v.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    /* renamed from: b */
    public boolean m35367b() {
        return this.f2651b;
    }

    /* renamed from: c */
    public JSONObject m35365c() {
        return this.f2650a;
    }

    /* renamed from: d */
    public String m35364d() {
        return this.f2653d;
    }

    /* renamed from: e */
    public boolean m35363e() {
        if (this.f2654e == null) {
            return true;
        }
        return m35371a().equals(this.f2654e);
    }

    public String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.f2650a.optString("_eventName"), Boolean.valueOf(this.f2651b), this.f2650a.toString());
    }
}
