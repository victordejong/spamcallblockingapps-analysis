package p081h.p203i.p325c.p372x;

import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.MissingFormatArgumentException;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: h.i.c.x.q */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/q.class */
public class C9998q {
    @NonNull

    /* renamed from: a */
    public final Bundle f22602a;

    public C9998q(@NonNull Bundle bundle) {
        if (bundle != null) {
            this.f22602a = new Bundle(bundle);
            return;
        }
        throw new NullPointerException("data");
    }

    /* renamed from: a */
    public static boolean m13714a(Bundle bundle) {
        return "1".equals(bundle.getString("gcm.n.e")) || "1".equals(bundle.getString(m13692l("gcm.n.e")));
    }

    /* renamed from: i */
    public static int m13696i(String str) {
        int parseColor = Color.parseColor(str);
        if (parseColor != -16777216) {
            return parseColor;
        }
        throw new IllegalArgumentException("Transparent color is invalid");
    }

    /* renamed from: j */
    public static boolean m13694j(String str) {
        return str.startsWith("google.c.a.") || str.equals("from");
    }

    /* renamed from: k */
    public static boolean m13693k(String str) {
        return str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.");
    }

    /* renamed from: l */
    public static String m13692l(String str) {
        return !str.startsWith("gcm.n.") ? str : str.replace("gcm.n.", "gcm.notification.");
    }

    /* renamed from: m */
    public static String m13691m(String str) {
        String str2 = str;
        if (str.startsWith("gcm.n.")) {
            str2 = str.substring(6);
        }
        return str2;
    }

    @Nullable
    /* renamed from: a */
    public String m13715a(Resources resources, String str, String str2) {
        String e = m13704e(str2);
        if (TextUtils.isEmpty(e)) {
            return null;
        }
        int identifier = resources.getIdentifier(e, "string", str);
        if (identifier == 0) {
            String valueOf = String.valueOf(str2);
            String m = m13691m("_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
            StringBuilder sb = new StringBuilder(String.valueOf(m).length() + 49 + String.valueOf(str2).length());
            sb.append(m);
            sb.append(" resource not found: ");
            sb.append(str2);
            sb.append(" Default value will be used.");
            sb.toString();
            return null;
        }
        Object[] d = m13706d(str2);
        if (d == null) {
            return resources.getString(identifier);
        }
        try {
            return resources.getString(identifier, d);
        } catch (MissingFormatArgumentException e2) {
            String m2 = m13691m(str2);
            String arrays = Arrays.toString(d);
            StringBuilder sb2 = new StringBuilder(String.valueOf(m2).length() + 58 + String.valueOf(arrays).length());
            sb2.append("Missing format argument for ");
            sb2.append(m2);
            sb2.append(": ");
            sb2.append(arrays);
            sb2.append(" Default value will be used.");
            sb2.toString();
            return null;
        }
    }

    /* renamed from: a */
    public boolean m13713a(String str) {
        String g = m13700g(str);
        return "1".equals(g) || Boolean.parseBoolean(g);
    }

    @Nullable
    /* renamed from: a */
    public int[] m13716a() {
        JSONArray c = m13708c("gcm.n.light_settings");
        if (c == null) {
            return null;
        }
        try {
            if (c.length() == 3) {
                return new int[]{m13696i(c.optString(0)), c.optInt(1), c.optInt(2)};
            }
            throw new JSONException("lightSettings don't have all three fields");
        } catch (IllegalArgumentException e) {
            String valueOf = String.valueOf(c);
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 60 + String.valueOf(message).length());
            sb.append("LightSettings is invalid: ");
            sb.append(valueOf);
            sb.append(". ");
            sb.append(message);
            sb.append(". Skipping setting LightSettings");
            sb.toString();
            return null;
        } catch (JSONException e2) {
            String valueOf2 = String.valueOf(c);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 58);
            sb2.append("LightSettings is invalid: ");
            sb2.append(valueOf2);
            sb2.append(". Skipping setting LightSettings");
            sb2.toString();
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public Uri m13712b() {
        String g = m13700g("gcm.n.link_android");
        String str = g;
        if (TextUtils.isEmpty(g)) {
            str = m13700g("gcm.n.link");
        }
        if (!TextUtils.isEmpty(str)) {
            return Uri.parse(str);
        }
        return null;
    }

    /* renamed from: b */
    public Integer m13710b(String str) {
        String g = m13700g(str);
        if (TextUtils.isEmpty(g)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(g));
        } catch (NumberFormatException e) {
            String m = m13691m(str);
            StringBuilder sb = new StringBuilder(String.valueOf(m).length() + 38 + String.valueOf(g).length());
            sb.append("Couldn't parse value of ");
            sb.append(m);
            sb.append("(");
            sb.append(g);
            sb.append(") into an int");
            sb.toString();
            return null;
        }
    }

    /* renamed from: b */
    public String m13711b(Resources resources, String str, String str2) {
        String g = m13700g(str2);
        return !TextUtils.isEmpty(g) ? g : m13715a(resources, str, str2);
    }

    /* renamed from: c */
    public String m13709c() {
        return m13700g("gcm.n.android_channel_id");
    }

    @Nullable
    /* renamed from: c */
    public JSONArray m13708c(String str) {
        String g = m13700g(str);
        if (TextUtils.isEmpty(g)) {
            return null;
        }
        try {
            return new JSONArray(g);
        } catch (JSONException e) {
            String m = m13691m(str);
            StringBuilder sb = new StringBuilder(String.valueOf(m).length() + 50 + String.valueOf(g).length());
            sb.append("Malformed JSON for key ");
            sb.append(m);
            sb.append(": ");
            sb.append(g);
            sb.append(", falling back to default");
            sb.toString();
            return null;
        }
    }

    @Nullable
    /* renamed from: d */
    public Integer m13707d() {
        Integer b = m13710b("gcm.n.notification_count");
        if (b == null) {
            return null;
        }
        if (b.intValue() >= 0) {
            return b;
        }
        String valueOf = String.valueOf(b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
        sb.append("notificationCount is invalid: ");
        sb.append(valueOf);
        sb.append(". Skipping setting notificationCount.");
        sb.toString();
        return null;
    }

    @Nullable
    /* renamed from: d */
    public Object[] m13706d(String str) {
        String valueOf = String.valueOf(str);
        JSONArray c = m13708c("_loc_args".length() != 0 ? valueOf.concat("_loc_args") : new String(valueOf));
        if (c == null) {
            return null;
        }
        String[] strArr = new String[c.length()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = c.optString(i);
        }
        return strArr;
    }

    @Nullable
    /* renamed from: e */
    public Integer m13705e() {
        Integer b = m13710b("gcm.n.notification_priority");
        if (b == null) {
            return null;
        }
        if (b.intValue() >= -2 && b.intValue() <= 2) {
            return b;
        }
        String valueOf = String.valueOf(b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 72);
        sb.append("notificationPriority is invalid ");
        sb.append(valueOf);
        sb.append(". Skipping setting notificationPriority.");
        sb.toString();
        return null;
    }

    @Nullable
    /* renamed from: e */
    public String m13704e(String str) {
        String valueOf = String.valueOf(str);
        return m13700g("_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
    }

    /* renamed from: f */
    public Long m13702f(String str) {
        String g = m13700g(str);
        if (TextUtils.isEmpty(g)) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(g));
        } catch (NumberFormatException e) {
            String m = m13691m(str);
            StringBuilder sb = new StringBuilder(String.valueOf(m).length() + 38 + String.valueOf(g).length());
            sb.append("Couldn't parse value of ");
            sb.append(m);
            sb.append("(");
            sb.append(g);
            sb.append(") into a long");
            sb.toString();
            return null;
        }
    }

    @Nullable
    /* renamed from: f */
    public String m13703f() {
        String g = m13700g("gcm.n.sound2");
        String str = g;
        if (TextUtils.isEmpty(g)) {
            str = m13700g("gcm.n.sound");
        }
        return str;
    }

    /* renamed from: g */
    public String m13700g(String str) {
        return this.f22602a.getString(m13698h(str));
    }

    @Nullable
    /* renamed from: g */
    public long[] m13701g() {
        JSONArray c = m13708c("gcm.n.vibrate_timings");
        if (c == null) {
            return null;
        }
        try {
            if (c.length() > 1) {
                long[] jArr = new long[c.length()];
                for (int i = 0; i < jArr.length; i++) {
                    jArr[i] = c.optLong(i);
                }
                return jArr;
            }
            throw new JSONException("vibrateTimings have invalid length");
        } catch (NumberFormatException | JSONException e) {
            String valueOf = String.valueOf(c);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 74);
            sb.append("User defined vibrateTimings is invalid: ");
            sb.append(valueOf);
            sb.append(". Skipping setting vibrateTimings.");
            sb.toString();
            return null;
        }
    }

    /* renamed from: h */
    public Integer m13699h() {
        Integer b = m13710b("gcm.n.visibility");
        if (b == null) {
            return null;
        }
        if (b.intValue() >= -1 && b.intValue() <= 1) {
            return b;
        }
        String valueOf = String.valueOf(b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 53);
        sb.append("visibility is invalid: ");
        sb.append(valueOf);
        sb.append(". Skipping setting visibility.");
        sb.toString();
        return null;
    }

    /* renamed from: h */
    public final String m13698h(String str) {
        if (!this.f22602a.containsKey(str) && str.startsWith("gcm.n.")) {
            String l = m13692l(str);
            if (this.f22602a.containsKey(l)) {
                return l;
            }
        }
        return str;
    }

    /* renamed from: i */
    public Bundle m13697i() {
        Bundle bundle = new Bundle(this.f22602a);
        for (String str : this.f22602a.keySet()) {
            if (!m13694j(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }

    /* renamed from: j */
    public Bundle m13695j() {
        Bundle bundle = new Bundle(this.f22602a);
        for (String str : this.f22602a.keySet()) {
            if (m13693k(str)) {
                bundle.remove(str);
            }
        }
        return bundle;
    }
}
