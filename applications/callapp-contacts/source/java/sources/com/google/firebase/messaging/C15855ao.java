package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.C0790b;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.messaging.ao */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ao.class */
final class C15855ao {

    /* renamed from: a */
    final SharedPreferences f56349a;

    /* renamed from: b */
    final Context f56350b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.messaging.ao$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ao$a.class */
    public static final class C15856a {

        /* renamed from: d */
        private static final long f56351d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a */
        final String f56352a;

        /* renamed from: b */
        final String f56353b;

        /* renamed from: c */
        final long f56354c;

        private C15856a(String str, String str2, long j) {
            this.f56352a = str;
            this.f56353b = str2;
            this.f56354c = j;
        }

        /* renamed from: a */
        static C15856a m8168a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new C15856a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C15856a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong(Reporting.Key.TIMESTAMP));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        /* renamed from: a */
        static String m8167a(String str, String str2, long j) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", str);
                jSONObject.put("appVersion", str2);
                jSONObject.put(Reporting.Key.TIMESTAMP, j);
                return jSONObject.toString();
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
                sb.append("Failed to encode token: ");
                sb.append(valueOf);
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        /* renamed from: b */
        public final boolean m8166b(String str) {
            return System.currentTimeMillis() > this.f56354c + f56351d || !str.equals(this.f56353b);
        }
    }

    public C15855ao(Context context) {
        this.f56350b = context;
        this.f56349a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        m8174a();
    }

    /* renamed from: a */
    private void m8174a() {
        File file = new File(C0790b.m44493c(this.f56350b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || m8171b()) {
                return;
            }
            m8169c();
        } catch (IOException e) {
            if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return;
            }
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "Error creating file in no backup dir: ".concat(valueOf);
            } else {
                new String("Error creating file in no backup dir: ");
            }
        }
    }

    /* renamed from: b */
    private static String m8170b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|*");
        return sb.toString();
    }

    /* renamed from: b */
    private boolean m8171b() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f56349a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* renamed from: c */
    private void m8169c() {
        synchronized (this) {
            this.f56349a.edit().clear().commit();
        }
    }

    /* renamed from: a */
    public final C15856a m8173a(String str, String str2) {
        C15856a m8168a;
        synchronized (this) {
            m8168a = C15856a.m8168a(this.f56349a.getString(m8170b(str, str2), null));
        }
        return m8168a;
    }

    /* renamed from: a */
    public final void m8172a(String str, String str2, String str3, String str4) {
        synchronized (this) {
            String m8167a = C15856a.m8167a(str3, str4, System.currentTimeMillis());
            if (m8167a == null) {
                return;
            }
            SharedPreferences.Editor edit = this.f56349a.edit();
            edit.putString(m8170b(str, str2), m8167a);
            edit.commit();
        }
    }
}
