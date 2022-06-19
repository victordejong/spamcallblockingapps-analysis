package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.C0586a;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import p020b.p036e.C1489a;
/* renamed from: com.google.firebase.iid.u */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/u.class */
class C9198u {

    /* renamed from: a */
    final SharedPreferences f39563a;

    /* renamed from: b */
    final Context f39564b;

    /* renamed from: c */
    private final Map<String, Long> f39565c = new C1489a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.iid.u$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/u$a.class */
    public static class C9199a {

        /* renamed from: a */
        private static final long f39566a = TimeUnit.DAYS.toMillis(7);

        /* renamed from: b */
        final String f39567b;

        /* renamed from: c */
        final String f39568c;

        /* renamed from: d */
        final long f39569d;

        private C9199a(String str, String str2, long j) {
            this.f39567b = str;
            this.f39568c = str2;
            this.f39569d = j;
        }

        /* renamed from: a */
        static String m1573a(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put("timestamp", j);
                return jSONObject.toString();
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 24);
                sb.append("Failed to encode token: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* renamed from: b */
        public static String m1572b(C9199a c9199a) {
            if (c9199a == null) {
                return null;
            }
            return c9199a.f39567b;
        }

        /* renamed from: d */
        static C9199a m1570d(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new C9199a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C9199a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* renamed from: c */
        public boolean m1571c(String str) {
            return System.currentTimeMillis() > this.f39569d + f39566a || !str.equals(this.f39568c);
        }
    }

    public C9198u(Context context) {
        this.f39564b = context;
        this.f39563a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        m1583a("com.google.android.gms.appid-no-backup");
    }

    /* renamed from: a */
    private void m1583a(String str) {
        File file = new File(C0586a.m33345i(this.f39564b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || m1577g()) {
                return;
            }
            Log.i("FirebaseInstanceId", "App restored, clearing state");
            m1580d();
        } catch (IOException e) {
            if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                return;
            }
            String valueOf = String.valueOf(e.getMessage());
            Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
        }
    }

    /* renamed from: b */
    static String m1582b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
        sb.append(str);
        sb.append("|S|cre");
        return sb.toString();
    }

    /* renamed from: c */
    private String m1581c(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: e */
    private long m1579e(String str) {
        String string = this.f39563a.getString(m1582b(str, "cre"), null);
        if (string != null) {
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException e) {
                return 0L;
            }
        }
        return 0L;
    }

    /* renamed from: j */
    private long m1574j(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        if (!this.f39563a.contains(m1582b(str, "cre"))) {
            SharedPreferences.Editor edit = this.f39563a.edit();
            edit.putString(m1582b(str, "cre"), String.valueOf(currentTimeMillis));
            edit.commit();
            return currentTimeMillis;
        }
        return m1579e(str);
    }

    /* renamed from: d */
    public void m1580d() {
        synchronized (this) {
            this.f39565c.clear();
            this.f39563a.edit().clear().commit();
        }
    }

    /* renamed from: f */
    public C9199a m1578f(String str, String str2, String str3) {
        C9199a m1570d;
        synchronized (this) {
            m1570d = C9199a.m1570d(this.f39563a.getString(m1581c(str, str2, str3), null));
        }
        return m1570d;
    }

    /* renamed from: g */
    public boolean m1577g() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f39563a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* renamed from: h */
    public void m1576h(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String m1573a = C9199a.m1573a(str4, str5, System.currentTimeMillis());
            if (m1573a == null) {
                return;
            }
            SharedPreferences.Editor edit = this.f39563a.edit();
            edit.putString(m1581c(str, str2, str3), m1573a);
            edit.commit();
        }
    }

    /* renamed from: i */
    public long m1575i(String str) {
        long m1574j;
        synchronized (this) {
            m1574j = m1574j(str);
            this.f39565c.put(str, Long.valueOf(m1574j));
        }
        return m1574j;
    }
}
