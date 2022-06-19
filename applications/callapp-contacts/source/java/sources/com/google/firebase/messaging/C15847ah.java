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
/* renamed from: com.google.firebase.messaging.ah */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ah.class */
public final class C15847ah {

    /* renamed from: a */
    private final Bundle f56332a;

    public C15847ah(Bundle bundle) {
        Objects.requireNonNull(bundle, "data");
        this.f56332a = new Bundle(bundle);
    }

    /* renamed from: a */
    public static boolean m8201a(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString(m8185j("gcm.n.e")));
    }

    /* renamed from: b */
    private String m8198b(Resources resources, String str, String str2) {
        String m8191e = m8191e(str2);
        if (TextUtils.isEmpty(m8191e)) {
            return null;
        }
        int identifier = resources.getIdentifier(m8191e, "string", str);
        if (identifier == 0) {
            String m8186i = m8186i(String.valueOf(str2).concat("_loc_key"));
            StringBuilder sb = new StringBuilder(String.valueOf(m8186i).length() + 49 + String.valueOf(str2).length());
            sb.append(m8186i);
            sb.append(" resource not found: ");
            sb.append(str2);
            sb.append(" Default value will be used.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
        Object[] m8189f = m8189f(str2);
        if (m8189f == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, m8189f);
        } catch (MissingFormatArgumentException e) {
            String m8186i2 = m8186i(str2);
            String arrays = Arrays.toString(m8189f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(m8186i2).length() + 58 + String.valueOf(arrays).length());
            sb2.append("Missing format argument for ");
            sb2.append(m8186i2);
            sb2.append(": ");
            sb2.append(arrays);
            sb2.append(" Default value will be used.");
            Log.w("NotificationParams", sb2.toString(), e);
            return null;
        }
    }

    /* renamed from: g */
    private String m8188g(String str) {
        if (!this.f56332a.containsKey(str) && str.startsWith("gcm.n.")) {
            String m8185j = m8185j(str);
            if (this.f56332a.containsKey(m8185j)) {
                return m8185j;
            }
        }
        return str;
    }

    /* renamed from: h */
    private JSONArray m8187h(String str) {
        String m8200a = m8200a(str);
        if (!TextUtils.isEmpty(m8200a)) {
            try {
                return new JSONArray(m8200a);
            } catch (JSONException e) {
                String m8186i = m8186i(str);
                StringBuilder sb = new StringBuilder(String.valueOf(m8186i).length() + 50 + String.valueOf(m8200a).length());
                sb.append("Malformed JSON for key ");
                sb.append(m8186i);
                sb.append(": ");
                sb.append(m8200a);
                sb.append(", falling back to default");
                Log.w("NotificationParams", sb.toString());
                return null;
            }
        }
        return null;
    }

    /* renamed from: i */
    private static String m8186i(String str) {
        String str2 = str;
        if (str.startsWith("gcm.n.")) {
            str2 = str.substring(6);
        }
        return str2;
    }

    /* renamed from: j */
    private static String m8185j(String str) {
        return !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
    }

    /* renamed from: a */
    public final Uri m8203a() {
        String m8200a = m8200a("gcm.n.link_android");
        String str = m8200a;
        if (TextUtils.isEmpty(m8200a)) {
            str = m8200a("gcm.n.link");
        }
        if (!TextUtils.isEmpty(str)) {
            return Uri.parse(str);
        }
        return null;
    }

    /* renamed from: a */
    public final String m8202a(Resources resources, String str, String str2) {
        String m8200a = m8200a(str2);
        return !TextUtils.isEmpty(m8200a) ? m8200a : m8198b(resources, str, str2);
    }

    /* renamed from: a */
    public final String m8200a(String str) {
        return this.f56332a.getString(m8188g(str));
    }

    /* renamed from: b */
    public final String m8199b() {
        String m8200a = m8200a("gcm.n.sound2");
        String str = m8200a;
        if (TextUtils.isEmpty(m8200a)) {
            str = m8200a("gcm.n.sound");
        }
        return str;
    }

    /* renamed from: b */
    public final boolean m8197b(String str) {
        String m8200a = m8200a(str);
        return "1".equals(m8200a) || Boolean.parseBoolean(m8200a);
    }

    /* renamed from: c */
    public final Integer m8195c(String str) {
        String m8200a = m8200a(str);
        if (!TextUtils.isEmpty(m8200a)) {
            try {
                return Integer.valueOf(Integer.parseInt(m8200a));
            } catch (NumberFormatException e) {
                String m8186i = m8186i(str);
                StringBuilder sb = new StringBuilder(String.valueOf(m8186i).length() + 38 + String.valueOf(m8200a).length());
                sb.append("Couldn't parse value of ");
                sb.append(m8186i);
                sb.append("(");
                sb.append(m8200a);
                sb.append(") into an int");
                Log.w("NotificationParams", sb.toString());
                return null;
            }
        }
        return null;
    }

    /* renamed from: c */
    public final long[] m8196c() {
        JSONArray m8187h = m8187h("gcm.n.vibrate_timings");
        if (m8187h == null) {
            return null;
        }
        try {
            if (m8187h.length() <= 1) {
                throw new JSONException("vibrateTimings have invalid length");
            }
            int length = m8187h.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = m8187h.optLong(i);
            }
            return jArr;
        } catch (NumberFormatException | JSONException e) {
            String valueOf = String.valueOf(m8187h);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 74);
            sb.append("User defined vibrateTimings is invalid: ");
            sb.append(valueOf);
            sb.append(". Skipping setting vibrateTimings.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    /* renamed from: d */
    public final Long m8193d(String str) {
        String m8200a = m8200a(str);
        if (!TextUtils.isEmpty(m8200a)) {
            try {
                return Long.valueOf(Long.parseLong(m8200a));
            } catch (NumberFormatException e) {
                String m8186i = m8186i(str);
                StringBuilder sb = new StringBuilder(String.valueOf(m8186i).length() + 38 + String.valueOf(m8200a).length());
                sb.append("Couldn't parse value of ");
                sb.append(m8186i);
                sb.append("(");
                sb.append(m8200a);
                sb.append(") into a long");
                Log.w("NotificationParams", sb.toString());
                return null;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final int[] m8194d() {
        JSONArray m8187h = m8187h("gcm.n.light_settings");
        if (m8187h == null) {
            return null;
        }
        try {
            if (m8187h.length() != 3) {
                throw new JSONException("lightSettings don't have all three fields");
            }
            int parseColor = Color.parseColor(m8187h.optString(0));
            if (parseColor == -16777216) {
                throw new IllegalArgumentException("Transparent color is invalid");
            }
            return new int[]{parseColor, m8187h.optInt(1), m8187h.optInt(2)};
        } catch (IllegalArgumentException e) {
            String valueOf = String.valueOf(m8187h);
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 60 + String.valueOf(message).length());
            sb.append("LightSettings is invalid: ");
            sb.append(valueOf);
            sb.append(". ");
            sb.append(message);
            sb.append(". Skipping setting LightSettings");
            Log.w("NotificationParams", sb.toString());
            return null;
        } catch (JSONException e2) {
            String valueOf2 = String.valueOf(m8187h);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 58);
            sb2.append("LightSettings is invalid: ");
            sb2.append(valueOf2);
            sb2.append(". Skipping setting LightSettings");
            Log.w("NotificationParams", sb2.toString());
            return null;
        }
    }

    /* renamed from: e */
    public final Bundle m8192e() {
        Bundle bundle = new Bundle(this.f56332a);
        for (String str : this.f56332a.keySet()) {
            if (str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    /* renamed from: e */
    public final String m8191e(String str) {
        return m8200a(String.valueOf(str).concat("_loc_key"));
    }

    /* renamed from: f */
    public final Bundle m8190f() {
        Bundle bundle = new Bundle(this.f56332a);
        for (String str : this.f56332a.keySet()) {
            if (!(str.startsWith("google.c.a.") || str.equals("from"))) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    /* renamed from: f */
    public final Object[] m8189f(String str) {
        JSONArray m8187h = m8187h(String.valueOf(str).concat("_loc_args"));
        if (m8187h == null) {
            return null;
        }
        int length = m8187h.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = m8187h.optString(i);
        }
        return strArr;
    }
}
