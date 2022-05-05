package p081h.p203i.p325c.p364t;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.aotter.net.trek.model.Device;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.i.c.t.q0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/q0.class */
public class C9899q0 {

    /* renamed from: a */
    public final SharedPreferences f22412a;

    /* renamed from: b */
    public final Context f22413b;
    @GuardedBy("this")

    /* renamed from: c */
    public final Map<String, Long> f22414c = new ArrayMap();

    /* renamed from: h.i.c.t.q0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/q0$a.class */
    public static class C9900a {

        /* renamed from: d */
        public static final long f22415d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a */
        public final String f22416a;

        /* renamed from: b */
        public final String f22417b;

        /* renamed from: c */
        public final long f22418c;

        public C9900a(String str, String str2, long j) {
            this.f22416a = str;
            this.f22417b = str2;
            this.f22418c = j;
        }

        /* renamed from: a */
        public static String m14002a(@Nullable C9900a aVar) {
            if (aVar == null) {
                return null;
            }
            return aVar.f22416a;
        }

        /* renamed from: a */
        public static String m14000a(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put(Device.DEVICE_APP_VERSION_KEY, str2);
                jSONObject.put("timestamp", j);
                return jSONObject.toString();
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb.append("Failed to encode token: ");
                sb.append(valueOf);
                sb.toString();
                return null;
            }
        }

        /* renamed from: b */
        public static C9900a m13999b(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith(CssParser.BLOCK_START)) {
                return new C9900a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C9900a(jSONObject.getString("token"), jSONObject.getString(Device.DEVICE_APP_VERSION_KEY), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                sb.toString();
                return null;
            }
        }

        /* renamed from: a */
        public boolean m14001a(String str) {
            return System.currentTimeMillis() > this.f22418c + f22415d || !str.equals(this.f22417b);
        }
    }

    public C9899q0(Context context) {
        this.f22413b = context;
        this.f22412a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        m14015a("com.google.android.gms.appid-no-backup");
    }

    /* renamed from: a */
    public static String m14014a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: a */
    public final String m14013a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: a */
    public void m14016a() {
        synchronized (this) {
            this.f22414c.clear();
            this.f22412a.edit().clear().commit();
        }
    }

    /* renamed from: a */
    public final void m14015a(String str) {
        File file = new File(ContextCompat.getNoBackupFilesDir(this.f22413b), str);
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !m14011b()) {
                    m14016a();
                    FirebaseInstanceId.getInstance().m31081h();
                }
            } catch (IOException e) {
                if (Log.isLoggable("FirebaseInstanceId", 3)) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        "Error creating file in no backup dir: ".concat(valueOf);
                    } else {
                        new String("Error creating file in no backup dir: ");
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m14012a(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String a = C9900a.m14000a(str4, str5, System.currentTimeMillis());
            if (a != null) {
                SharedPreferences.Editor edit = this.f22412a.edit();
                edit.putString(m14013a(str, str2, str3), a);
                edit.commit();
            }
        }
    }

    /* renamed from: b */
    public final void m14010b(String str) {
        SharedPreferences.Editor edit = this.f22412a.edit();
        for (String str2 : this.f22412a.getAll().keySet()) {
            if (str2.startsWith(str)) {
                edit.remove(str2);
            }
        }
        edit.commit();
    }

    /* renamed from: b */
    public void m14009b(String str, String str2, String str3) {
        synchronized (this) {
            String a = m14013a(str, str2, str3);
            SharedPreferences.Editor edit = this.f22412a.edit();
            edit.remove(a);
            edit.commit();
        }
    }

    /* renamed from: b */
    public boolean m14011b() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f22412a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* renamed from: c */
    public C9900a m14007c(String str, String str2, String str3) {
        C9900a b;
        synchronized (this) {
            b = C9900a.m13999b(this.f22412a.getString(m14013a(str, str2, str3), null));
        }
        return b;
    }

    /* renamed from: c */
    public void m14008c(String str) {
        synchronized (this) {
            m14010b(String.valueOf(str).concat("|T|"));
        }
    }

    /* renamed from: d */
    public long m14006d(String str) {
        synchronized (this) {
            Long l = this.f22414c.get(str);
            if (l != null) {
                return l.longValue();
            }
            return m14005e(str);
        }
    }

    /* renamed from: e */
    public final long m14005e(String str) {
        String string = this.f22412a.getString(m14014a(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    /* renamed from: f */
    public long m14004f(String str) {
        long g;
        synchronized (this) {
            g = m14003g(str);
            this.f22414c.put(str, Long.valueOf(g));
        }
        return g;
    }

    /* renamed from: g */
    public final long m14003g(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f22412a.contains(m14014a(str, "cre"))) {
            return m14005e(str);
        }
        SharedPreferences.Editor edit = this.f22412a.edit();
        edit.putString(m14014a(str, "cre"), String.valueOf(currentTimeMillis));
        edit.commit();
        return currentTimeMillis;
    }
}
