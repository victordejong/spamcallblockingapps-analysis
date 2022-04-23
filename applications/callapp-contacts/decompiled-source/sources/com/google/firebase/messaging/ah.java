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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ah.class */
public final class ah {

    /* renamed from: a  reason: collision with root package name */
    private final Bundle f32472a;

    public ah(Bundle bundle) {
        Objects.requireNonNull(bundle, "data");
        this.f32472a = new Bundle(bundle);
    }

    public static boolean a(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString(j("gcm.n.e")));
    }

    private String b(Resources resources, String str, String str2) {
        String e = e(str2);
        if (TextUtils.isEmpty(e)) {
            return null;
        }
        int identifier = resources.getIdentifier(e, "string", str);
        if (identifier == 0) {
            String i = i(String.valueOf(str2).concat("_loc_key"));
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 49 + String.valueOf(str2).length());
            sb.append(i);
            sb.append(" resource not found: ");
            sb.append(str2);
            sb.append(" Default value will be used.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
        Object[] f = f(str2);
        if (f == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, f);
        } catch (MissingFormatArgumentException e2) {
            String i2 = i(str2);
            String arrays = Arrays.toString(f);
            StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 58 + String.valueOf(arrays).length());
            sb2.append("Missing format argument for ");
            sb2.append(i2);
            sb2.append(": ");
            sb2.append(arrays);
            sb2.append(" Default value will be used.");
            Log.w("NotificationParams", sb2.toString(), e2);
            return null;
        }
    }

    private String g(String str) {
        if (!this.f32472a.containsKey(str) && str.startsWith("gcm.n.")) {
            String j = j(str);
            if (this.f32472a.containsKey(j)) {
                return j;
            }
        }
        return str;
    }

    private JSONArray h(String str) {
        String a2 = a(str);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            return new JSONArray(a2);
        } catch (JSONException e) {
            String i = i(str);
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 50 + String.valueOf(a2).length());
            sb.append("Malformed JSON for key ");
            sb.append(i);
            sb.append(": ");
            sb.append(a2);
            sb.append(", falling back to default");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    private static String i(String str) {
        String str2 = str;
        if (str.startsWith("gcm.n.")) {
            str2 = str.substring(6);
        }
        return str2;
    }

    private static String j(String str) {
        return !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
    }

    public final Uri a() {
        String a2 = a("gcm.n.link_android");
        String str = a2;
        if (TextUtils.isEmpty(a2)) {
            str = a("gcm.n.link");
        }
        if (!TextUtils.isEmpty(str)) {
            return Uri.parse(str);
        }
        return null;
    }

    public final String a(Resources resources, String str, String str2) {
        String a2 = a(str2);
        return !TextUtils.isEmpty(a2) ? a2 : b(resources, str, str2);
    }

    public final String a(String str) {
        return this.f32472a.getString(g(str));
    }

    public final String b() {
        String a2 = a("gcm.n.sound2");
        String str = a2;
        if (TextUtils.isEmpty(a2)) {
            str = a("gcm.n.sound");
        }
        return str;
    }

    public final boolean b(String str) {
        String a2 = a(str);
        return "1".equals(a2) || Boolean.parseBoolean(a2);
    }

    public final Integer c(String str) {
        String a2 = a(str);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(a2));
        } catch (NumberFormatException e) {
            String i = i(str);
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 38 + String.valueOf(a2).length());
            sb.append("Couldn't parse value of ");
            sb.append(i);
            sb.append("(");
            sb.append(a2);
            sb.append(") into an int");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    public final long[] c() {
        JSONArray h = h("gcm.n.vibrate_timings");
        if (h == null) {
            return null;
        }
        try {
            if (h.length() > 1) {
                int length = h.length();
                long[] jArr = new long[length];
                for (int i = 0; i < length; i++) {
                    jArr[i] = h.optLong(i);
                }
                return jArr;
            }
            throw new JSONException("vibrateTimings have invalid length");
        } catch (NumberFormatException | JSONException e) {
            String valueOf = String.valueOf(h);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 74);
            sb.append("User defined vibrateTimings is invalid: ");
            sb.append(valueOf);
            sb.append(". Skipping setting vibrateTimings.");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    public final Long d(String str) {
        String a2 = a(str);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(a2));
        } catch (NumberFormatException e) {
            String i = i(str);
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 38 + String.valueOf(a2).length());
            sb.append("Couldn't parse value of ");
            sb.append(i);
            sb.append("(");
            sb.append(a2);
            sb.append(") into a long");
            Log.w("NotificationParams", sb.toString());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int[] d() {
        JSONArray h = h("gcm.n.light_settings");
        if (h == null) {
            return null;
        }
        try {
            if (h.length() == 3) {
                int parseColor = Color.parseColor(h.optString(0));
                if (parseColor != -16777216) {
                    return new int[]{parseColor, h.optInt(1), h.optInt(2)};
                }
                throw new IllegalArgumentException("Transparent color is invalid");
            }
            throw new JSONException("lightSettings don't have all three fields");
        } catch (IllegalArgumentException e) {
            String valueOf = String.valueOf(h);
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
            String valueOf2 = String.valueOf(h);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 58);
            sb2.append("LightSettings is invalid: ");
            sb2.append(valueOf2);
            sb2.append(". Skipping setting LightSettings");
            Log.w("NotificationParams", sb2.toString());
            return null;
        }
    }

    public final Bundle e() {
        Bundle bundle = new Bundle(this.f32472a);
        for (String str : this.f32472a.keySet()) {
            if (str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    public final String e(String str) {
        return a(String.valueOf(str).concat("_loc_key"));
    }

    public final Bundle f() {
        Bundle bundle = new Bundle(this.f32472a);
        for (String str : this.f32472a.keySet()) {
            if (!(str.startsWith("google.c.a.") || str.equals("from"))) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    public final Object[] f(String str) {
        JSONArray h = h(String.valueOf(str).concat("_loc_args"));
        if (h == null) {
            return null;
        }
        int length = h.length();
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = h.optString(i);
        }
        return strArr;
    }
}
