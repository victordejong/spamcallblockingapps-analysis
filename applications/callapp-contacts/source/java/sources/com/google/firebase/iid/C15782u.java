package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.C0790b;
import androidx.p023b.C0428a;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.iid.u */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/u.class */
final class C15782u {

    /* renamed from: a */
    final SharedPreferences f56162a;

    /* renamed from: b */
    final Context f56163b;

    /* renamed from: c */
    private final Map<String, Long> f56164c = new C0428a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.iid.u$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/u$a.class */
    public static final class C15783a {

        /* renamed from: d */
        private static final long f56165d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a */
        final String f56166a;

        /* renamed from: b */
        final String f56167b;

        /* renamed from: c */
        final long f56168c;

        private C15783a(String str, String str2, long j) {
            this.f56166a = str;
            this.f56167b = str2;
            this.f56168c = j;
        }

        /* renamed from: a */
        static C15783a m8394a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new C15783a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new C15783a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong(Reporting.Key.TIMESTAMP));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* renamed from: a */
        public static String m8395a(C15783a c15783a) {
            if (c15783a == null) {
                return null;
            }
            return c15783a.f56166a;
        }

        /* renamed from: a */
        static String m8393a(String str, String str2, long j) {
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
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* renamed from: b */
        public final boolean m8392b(String str) {
            return System.currentTimeMillis() > this.f56168c + f56165d || !str.equals(this.f56167b);
        }
    }

    public C15782u(Context context) {
        this.f56163b = context;
        this.f56162a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        m8402b();
    }

    /* renamed from: b */
    private void m8402b() {
        File file = new File(C0790b.m44493c(this.f56163b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || m8399c()) {
                return;
            }
            m8406a();
        } catch (IOException e) {
            if (!Log.isLoggable("FirebaseInstanceId", 3)) {
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

    /* renamed from: c */
    private static String m8398c(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
        sb.append(str);
        sb.append("|S|cre");
        return sb.toString();
    }

    /* renamed from: c */
    private static String m8397c(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: c */
    private boolean m8399c() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f56162a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* renamed from: d */
    private long m8396d(String str) {
        String string = this.f56162a.getString(m8398c(str), null);
        if (string != null) {
            try {
                return Long.parseLong(string);
            } catch (NumberFormatException e) {
                return 0L;
            }
        }
        return 0L;
    }

    /* renamed from: a */
    public final long m8405a(String str) {
        synchronized (this) {
            Long l = this.f56164c.get(str);
            if (l != null) {
                return l.longValue();
            }
            return m8396d(str);
        }
    }

    /* renamed from: a */
    public final C15783a m8404a(String str, String str2, String str3) {
        C15783a m8394a;
        synchronized (this) {
            m8394a = C15783a.m8394a(this.f56162a.getString(m8397c(str, str2, str3), null));
        }
        return m8394a;
    }

    /* renamed from: a */
    public final void m8406a() {
        synchronized (this) {
            this.f56164c.clear();
            this.f56162a.edit().clear().commit();
        }
    }

    /* renamed from: a */
    public final void m8403a(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String m8393a = C15783a.m8393a(str4, str5, System.currentTimeMillis());
            if (m8393a == null) {
                return;
            }
            SharedPreferences.Editor edit = this.f56162a.edit();
            edit.putString(m8397c(str, str2, str3), m8393a);
            edit.commit();
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: b */
    public final long m8401b(String str) {
        char currentTimeMillis;
        synchronized (this) {
            currentTimeMillis = System.currentTimeMillis();
            if (!this.f56162a.contains(m8398c(str))) {
                SharedPreferences.Editor edit = this.f56162a.edit();
                edit.putString(m8398c(str), String.valueOf((long) currentTimeMillis));
                edit.commit();
            } else {
                currentTimeMillis = m8396d(str);
            }
            this.f56164c.put(str, Long.valueOf(currentTimeMillis));
        }
        return currentTimeMillis;
    }

    /* renamed from: b */
    public final void m8400b(String str, String str2, String str3) {
        synchronized (this) {
            String m8397c = m8397c(str, str2, str3);
            SharedPreferences.Editor edit = this.f56162a.edit();
            edit.remove(m8397c);
            edit.commit();
        }
    }
}
