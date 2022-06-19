package com.facebook.appevents;

import android.os.Build;
import android.os.Bundle;
import com.facebook.EnumC10396m;
import com.facebook.FacebookException;
import com.facebook.appevents.p282c.C10006a;
import com.facebook.appevents.p284e.C10023a;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.appevents.p288i.C10082a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10336x;
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
/* renamed from: com.facebook.appevents.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c.class */
public final class C10002c implements Serializable {

    /* renamed from: d */
    private static final HashSet<String> f33248d = new HashSet<>();

    /* renamed from: a */
    public final JSONObject f33249a;

    /* renamed from: b */
    public final boolean f33250b;

    /* renamed from: c */
    public final String f33251c;

    /* renamed from: e */
    private final boolean f33252e;

    /* renamed from: f */
    private final String f33253f;

    /* renamed from: com.facebook.appevents.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c$a.class */
    static class C10004a implements Serializable {

        /* renamed from: a */
        private final String f33254a;

        /* renamed from: b */
        private final boolean f33255b;

        /* renamed from: c */
        private final boolean f33256c;

        private C10004a(String str, boolean z, boolean z2) {
            this.f33254a = str;
            this.f33255b = z;
            this.f33256c = z2;
        }

        private Object readResolve() throws JSONException {
            return new C10002c(this.f33254a, this.f33255b, this.f33256c, null);
        }
    }

    /* renamed from: com.facebook.appevents.c$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/c$b.class */
    static final class C10005b implements Serializable {

        /* renamed from: a */
        private final String f33257a;

        /* renamed from: b */
        private final boolean f33258b;

        /* renamed from: c */
        private final boolean f33259c;

        /* renamed from: d */
        private final String f33260d;

        private C10005b(String str, boolean z, boolean z2, String str2) {
            this.f33257a = str;
            this.f33258b = z;
            this.f33259c = z2;
            this.f33260d = str2;
        }

        private Object readResolve() throws JSONException {
            return new C10002c(this.f33257a, this.f33258b, this.f33259c, this.f33260d);
        }
    }

    public C10002c(String str, String str2, Double d, Bundle bundle, boolean z, boolean z2, UUID uuid) throws JSONException, FacebookException {
        this.f33250b = z;
        this.f33252e = z2;
        this.f33251c = str2;
        this.f33249a = m23642a(str, str2, d, bundle, uuid);
        this.f33253f = m23641b();
    }

    private C10002c(String str, boolean z, boolean z2, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        this.f33249a = jSONObject;
        this.f33250b = z;
        this.f33251c = jSONObject.optString("_eventName");
        this.f33253f = str2;
        this.f33252e = z2;
    }

    /* renamed from: a */
    private Map<String, String> m23644a(Bundle bundle) throws FacebookException {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            m23643a(str);
            Object obj = bundle.get(str);
            if (!(obj instanceof String) && !(obj instanceof Number)) {
                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str));
            }
            hashMap.put(str, obj.toString());
        }
        C10023a.m23588a(hashMap);
        C10082a.m23455a(hashMap, this.f33251c);
        C10006a.m23637a(hashMap, this.f33251c);
        return hashMap;
    }

    /* renamed from: a */
    private JSONObject m23642a(String str, String str2, Double d, Bundle bundle, UUID uuid) throws JSONException {
        m23643a(str2);
        JSONObject jSONObject = new JSONObject();
        String m23457a = C10082a.m23457a(str2);
        jSONObject.put("_eventName", m23457a);
        jSONObject.put("_eventName_md5", m23640b(m23457a));
        jSONObject.put("_logTime", System.currentTimeMillis() / 1000);
        jSONObject.put("_ui", str);
        if (uuid != null) {
            jSONObject.put("_session_id", uuid);
        }
        if (bundle != null) {
            Map<String, String> m23644a = m23644a(bundle);
            for (String str3 : m23644a.keySet()) {
                jSONObject.put(str3, m23644a.get(str3));
            }
        }
        if (d != null) {
            jSONObject.put("_valueToSum", d.doubleValue());
        }
        if (this.f33252e) {
            jSONObject.put("_inBackground", "1");
        }
        if (this.f33250b) {
            jSONObject.put("_implicitlyLogged", "1");
        } else {
            C10336x.m22992a(EnumC10396m.APP_EVENTS, "AppEvents", "Created app event '%s'", jSONObject.toString());
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static void m23643a(String str) throws FacebookException {
        boolean contains;
        if (str == null || str.length() == 0 || str.length() > 40) {
            String str2 = str;
            if (str == null) {
                str2 = "<None Provided>";
            }
            throw new FacebookException(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str2, 40));
        }
        HashSet<String> hashSet = f33248d;
        synchronized (hashSet) {
            contains = hashSet.contains(str);
        }
        if (contains) {
            return;
        }
        if (!str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
            throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
        }
        synchronized (hashSet) {
            hashSet.add(str);
        }
    }

    /* renamed from: b */
    private String m23641b() {
        if (Build.VERSION.SDK_INT > 19) {
            return m23640b(this.f33249a.toString());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> keys = this.f33249a.keys();
        while (keys.hasNext()) {
            arrayList.add(keys.next());
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            sb.append(str);
            sb.append(" = ");
            sb.append(this.f33249a.optString(str));
            sb.append('\n');
        }
        return m23640b(sb.toString());
    }

    /* renamed from: b */
    private static String m23640b(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            return C10033b.m23558a(messageDigest.digest());
        } catch (UnsupportedEncodingException e) {
            C10213ae.m23228a("Failed to generate checksum: ", (Exception) e);
            return "1";
        } catch (NoSuchAlgorithmException e2) {
            C10213ae.m23228a("Failed to generate checksum: ", (Exception) e2);
            return "0";
        }
    }

    private Object writeReplace() {
        return new C10005b(this.f33249a.toString(), this.f33250b, this.f33252e, this.f33253f);
    }

    /* renamed from: a */
    public final boolean m23645a() {
        if (this.f33253f == null) {
            return true;
        }
        return m23641b().equals(this.f33253f);
    }

    public final String toString() {
        return String.format("\"%s\", implicit: %b, json: %s", this.f33249a.optString("_eventName"), Boolean.valueOf(this.f33250b), this.f33249a.toString());
    }
}
