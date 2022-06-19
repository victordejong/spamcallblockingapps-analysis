package com.google.firebase.messaging;

import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.google.firebase.messaging.g0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/g0.class */
public class C9283g0 {

    /* renamed from: a */
    private final Bundle f39792a;

    public C9283g0(Bundle bundle) {
        Objects.requireNonNull(bundle, "data");
        this.f39792a = new Bundle(bundle);
    }

    /* renamed from: d */
    private static int m1253d(String str) {
        int parseColor = Color.parseColor(str);
        if (parseColor != -16777216) {
            return parseColor;
        }
        throw new IllegalArgumentException("Transparent color is invalid");
    }

    /* renamed from: s */
    private static boolean m1238s(String str) {
        return str.startsWith("google.c.a.") || str.equals("from");
    }

    /* renamed from: t */
    public static boolean m1237t(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString(m1235v("gcm.n.e")));
    }

    /* renamed from: u */
    private static boolean m1236u(String str) {
        return str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.");
    }

    /* renamed from: v */
    private static String m1235v(String str) {
        return !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
    }

    /* renamed from: w */
    private String m1234w(String str) {
        if (!this.f39792a.containsKey(str) && str.startsWith("gcm.n.")) {
            String m1235v = m1235v(str);
            if (this.f39792a.containsKey(m1235v)) {
                return m1235v;
            }
        }
        return str;
    }

    /* renamed from: z */
    private static String m1231z(String str) {
        String str2 = str;
        if (str.startsWith("gcm.n.")) {
            str2 = str.substring(6);
        }
        return str2;
    }

    /* renamed from: a */
    public boolean m1256a(String str) {
        String m1241p = m1241p(str);
        return "1".equals(m1241p) || Boolean.parseBoolean(m1241p);
    }

    /* renamed from: b */
    public Integer m1255b(String str) {
        String m1241p = m1241p(str);
        if (!TextUtils.isEmpty(m1241p)) {
            try {
                return Integer.valueOf(Integer.parseInt(m1241p));
            } catch (NumberFormatException e) {
                String m1231z = m1231z(str);
                StringBuilder sb = new StringBuilder(String.valueOf(m1231z).length() + 38 + String.valueOf(m1241p).length());
                sb.append("Couldn't parse value of ");
                sb.append(m1231z);
                sb.append("(");
                sb.append(m1241p);
                sb.append(") into an int");
                Log.w("NotificationParams", sb.toString());
                return null;
            }
        }
        return null;
    }

    /* renamed from: c */
    public JSONArray m1254c(String str) {
        String m1241p = m1241p(str);
        if (!TextUtils.isEmpty(m1241p)) {
            try {
                return new JSONArray(m1241p);
            } catch (JSONException e) {
                String m1231z = m1231z(str);
                StringBuilder sb = new StringBuilder(String.valueOf(m1231z).length() + 50 + String.valueOf(m1241p).length());
                sb.append("Malformed JSON for key ");
                sb.append(m1231z);
                sb.append(": ");
                sb.append(m1241p);
                sb.append(", falling back to default");
                Log.w("NotificationParams", sb.toString());
                return null;
            }
        }
        return null;
    }

    /* renamed from: e */
    public int[] m1252e() {
        JSONArray m1254c = m1254c("gcm.n.light_settings");
        if (m1254c == null) {
            return null;
        }
        try {
            if (m1254c.length() != 3) {
                throw new JSONException("lightSettings don't have all three fields");
            }
            return new int[]{m1253d(m1254c.optString(0)), m1254c.optInt(1), m1254c.optInt(2)};
        } catch (IllegalArgumentException e) {
            String valueOf = String.valueOf(m1254c);
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(valueOf.length() + 60 + String.valueOf(message).length());
            sb.append("LightSettings is invalid: ");
            sb.append(valueOf);
            sb.append(". ");
            sb.append(message);
            sb.append(". Skipping setting LightSettings");
            Log.w("NotificationParams", sb.toString());
            return null;
        } catch (JSONException e2) {
            String valueOf2 = String.valueOf(m1254c);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 58);
            sb2.append("LightSettings is invalid: ");
            sb2.append(valueOf2);
            sb2.append(". Skipping setting LightSettings");
            Log.w("NotificationParams", sb2.toString());
            return null;
        }
    }

    /* renamed from: f */
    public Uri m1251f() {
        String m1241p = m1241p("gcm.n.link_android");
        String str = m1241p;
        if (TextUtils.isEmpty(m1241p)) {
            str = m1241p("gcm.n.link");
        }
        if (!TextUtils.isEmpty(str)) {
            return Uri.parse(str);
        }
        return null;
    }

    /* renamed from: g */
    public Object[] m1250g(String str) {
        JSONArray m1254c = m1254c(String.valueOf(str).concat("_loc_args"));
        if (m1254c == null) {
            return null;
        }
        int length = m1254c.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = m1254c.optString(i);
        }
        return strArr;
    }

    /* renamed from: h */
    public String m1249h(String str) {
        return m1241p(String.valueOf(str).concat("_loc_key"));
    }

    /* renamed from: i */
    public String m1248i(Resources resources, String str, String str2) {
        String m1249h = m1249h(str2);
        if (TextUtils.isEmpty(m1249h)) {
            return null;
        }
        int identifier = resources.getIdentifier(m1249h, "string", str);
        if (identifier == 0) {
            String m1231z = m1231z(String.valueOf(str2).concat("_loc_key"));
            StringBuilder sb = new StringBuilder(String.valueOf(m1231z).length() + 49 + String.valueOf(str2).length());
            sb.append(m1231z);
            sb.append(" resource not found: ");
            sb.append(str2);
            sb.append(" Default value will be used.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
        Object[] m1250g = m1250g(str2);
        if (m1250g == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, m1250g);
        } catch (MissingFormatArgumentException e) {
            String m1231z2 = m1231z(str2);
            String arrays = Arrays.toString(m1250g);
            StringBuilder sb2 = new StringBuilder(String.valueOf(m1231z2).length() + 58 + String.valueOf(arrays).length());
            sb2.append("Missing format argument for ");
            sb2.append(m1231z2);
            sb2.append(": ");
            sb2.append(arrays);
            sb2.append(" Default value will be used.");
            Log.w("NotificationParams", sb2.toString(), e);
            return null;
        }
    }

    /* renamed from: j */
    public Long m1247j(String str) {
        String m1241p = m1241p(str);
        if (!TextUtils.isEmpty(m1241p)) {
            try {
                return Long.valueOf(Long.parseLong(m1241p));
            } catch (NumberFormatException e) {
                String m1231z = m1231z(str);
                StringBuilder sb = new StringBuilder(String.valueOf(m1231z).length() + 38 + String.valueOf(m1241p).length());
                sb.append("Couldn't parse value of ");
                sb.append(m1231z);
                sb.append("(");
                sb.append(m1241p);
                sb.append(") into a long");
                Log.w("NotificationParams", sb.toString());
                return null;
            }
        }
        return null;
    }

    /* renamed from: k */
    public String m1246k() {
        return m1241p("gcm.n.android_channel_id");
    }

    /* renamed from: l */
    public Integer m1245l() {
        Integer m1255b = m1255b("gcm.n.notification_count");
        if (m1255b == null) {
            return null;
        }
        if (m1255b.intValue() >= 0) {
            return m1255b;
        }
        String valueOf = String.valueOf(m1255b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 67);
        sb.append("notificationCount is invalid: ");
        sb.append(valueOf);
        sb.append(". Skipping setting notificationCount.");
        Log.w("FirebaseMessaging", sb.toString());
        return null;
    }

    /* renamed from: m */
    public Integer m1244m() {
        Integer m1255b = m1255b("gcm.n.notification_priority");
        if (m1255b == null) {
            return null;
        }
        if (m1255b.intValue() >= -2 && m1255b.intValue() <= 2) {
            return m1255b;
        }
        String valueOf = String.valueOf(m1255b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 72);
        sb.append("notificationPriority is invalid ");
        sb.append(valueOf);
        sb.append(". Skipping setting notificationPriority.");
        Log.w("FirebaseMessaging", sb.toString());
        return null;
    }

    /* renamed from: n */
    public String m1243n(Resources resources, String str, String str2) {
        String m1241p = m1241p(str2);
        return !TextUtils.isEmpty(m1241p) ? m1241p : m1248i(resources, str, str2);
    }

    /* renamed from: o */
    public String m1242o() {
        String m1241p = m1241p("gcm.n.sound2");
        String str = m1241p;
        if (TextUtils.isEmpty(m1241p)) {
            str = m1241p("gcm.n.sound");
        }
        return str;
    }

    /* renamed from: p */
    public String m1241p(String str) {
        return this.f39792a.getString(m1234w(str));
    }

    /* renamed from: q */
    public long[] m1240q() {
        JSONArray m1254c = m1254c("gcm.n.vibrate_timings");
        if (m1254c == null) {
            return null;
        }
        try {
            if (m1254c.length() <= 1) {
                throw new JSONException("vibrateTimings have invalid length");
            }
            int length = m1254c.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = m1254c.optLong(i);
            }
            return jArr;
        } catch (NumberFormatException | JSONException e) {
            String valueOf = String.valueOf(m1254c);
            StringBuilder sb = new StringBuilder(valueOf.length() + 74);
            sb.append("User defined vibrateTimings is invalid: ");
            sb.append(valueOf);
            sb.append(". Skipping setting vibrateTimings.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    /* renamed from: r */
    public Integer m1239r() {
        Integer m1255b = m1255b("gcm.n.visibility");
        if (m1255b == null) {
            return null;
        }
        if (m1255b.intValue() >= -1 && m1255b.intValue() <= 1) {
            return m1255b;
        }
        String valueOf = String.valueOf(m1255b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 53);
        sb.append("visibility is invalid: ");
        sb.append(valueOf);
        sb.append(". Skipping setting visibility.");
        Log.w("NotificationParams", sb.toString());
        return null;
    }

    /* renamed from: x */
    public Bundle m1233x() {
        Bundle bundle = new Bundle(this.f39792a);
        for (String str : this.f39792a.keySet()) {
            if (!m1238s(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    /* renamed from: y */
    public Bundle m1232y() {
        Bundle bundle = new Bundle(this.f39792a);
        for (String str : this.f39792a.keySet()) {
            if (m1236u(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }
}
