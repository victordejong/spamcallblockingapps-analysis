package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.C0586a;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.messaging.n0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/n0.class */
class C9298n0 {

    /* renamed from: a */
    final SharedPreferences f39821a;

    /* renamed from: b */
    final Context f39822b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.n0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/n0$a.class */
    public static class C9299a {

        /* renamed from: a */
        private static final long f39823a = TimeUnit.DAYS.toMillis(7);

        /* renamed from: b */
        final String f39824b;

        /* renamed from: c */
        final String f39825c;

        /* renamed from: d */
        final long f39826d;

        private C9299a(String str, String str2, long j) {
            this.f39824b = str;
            this.f39825c = str2;
            this.f39826d = j;
        }

        /* renamed from: a */
        static String m1195a(String str, String str2, long j) {
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
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        /* renamed from: c */
        static C9299a m1193c(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new C9299a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C9299a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(valueOf.length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        /* renamed from: b */
        public boolean m1194b(String str) {
            return System.currentTimeMillis() > this.f39826d + f39823a || !str.equals(this.f39825c);
        }
    }

    public C9298n0(Context context) {
        this.f39822b = context;
        this.f39821a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        m1201a("com.google.android.gms.appid-no-backup");
    }

    /* renamed from: a */
    private void m1201a(String str) {
        File file = new File(C0586a.m33345i(this.f39822b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || m1197e()) {
                return;
            }
            Log.i("FirebaseMessaging", "App restored, clearing state");
            m1199c();
        } catch (IOException e) {
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return;
            }
            String valueOf = String.valueOf(e.getMessage());
            Log.d("FirebaseMessaging", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
        }
    }

    /* renamed from: b */
    private String m1200b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|*");
        return sb.toString();
    }

    /* renamed from: c */
    public void m1199c() {
        synchronized (this) {
            this.f39821a.edit().clear().commit();
        }
    }

    /* renamed from: d */
    public C9299a m1198d(String str, String str2) {
        C9299a m1193c;
        synchronized (this) {
            m1193c = C9299a.m1193c(this.f39821a.getString(m1200b(str, str2), null));
        }
        return m1193c;
    }

    /* renamed from: e */
    public boolean m1197e() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f39821a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* renamed from: f */
    public void m1196f(String str, String str2, String str3, String str4) {
        synchronized (this) {
            String m1195a = C9299a.m1195a(str3, str4, System.currentTimeMillis());
            if (m1195a == null) {
                return;
            }
            SharedPreferences.Editor edit = this.f39821a.edit();
            edit.putString(m1200b(str, str2), m1195a);
            edit.commit();
        }
    }
}
