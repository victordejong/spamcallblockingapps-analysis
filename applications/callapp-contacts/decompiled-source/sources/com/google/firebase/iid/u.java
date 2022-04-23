package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.b;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/u.class */
final class u {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f32362a;

    /* renamed from: b  reason: collision with root package name */
    final Context f32363b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Long> f32364c = new androidx.b.a();

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/u$a.class */
    static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final long f32365d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a  reason: collision with root package name */
        final String f32366a;

        /* renamed from: b  reason: collision with root package name */
        final String f32367b;

        /* renamed from: c  reason: collision with root package name */
        final long f32368c;

        private a(String str, String str2, long j) {
            this.f32366a = str;
            this.f32367b = str2;
            this.f32368c = j;
        }

        static a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!str.startsWith("{")) {
                return new a(str, null, 0L);
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new a(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong(Reporting.Key.TIMESTAMP));
            } catch (JSONException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static String a(a aVar) {
            if (aVar == null) {
                return null;
            }
            return aVar.f32366a;
        }

        static String a(String str, String str2, long j) {
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

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean b(String str) {
            return System.currentTimeMillis() > this.f32368c + f32365d || !str.equals(this.f32367b);
        }
    }

    public u(Context context) {
        this.f32363b = context;
        this.f32362a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        b();
    }

    private void b() {
        File file = new File(b.c(this.f32363b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !c()) {
                    a();
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

    private static String c(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6);
        sb.append(str);
        sb.append("|S|cre");
        return sb.toString();
    }

    private static String c(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    private boolean c() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f32362a.getAll().isEmpty();
        }
        return isEmpty;
    }

    private long d(String str) {
        String string = this.f32362a.getString(c(str), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    public final long a(String str) {
        synchronized (this) {
            Long l = this.f32364c.get(str);
            if (l != null) {
                return l.longValue();
            }
            return d(str);
        }
    }

    public final a a(String str, String str2, String str3) {
        a a2;
        synchronized (this) {
            a2 = a.a(this.f32362a.getString(c(str, str2, str3), null));
        }
        return a2;
    }

    public final void a() {
        synchronized (this) {
            this.f32364c.clear();
            this.f32362a.edit().clear().commit();
        }
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String a2 = a.a(str4, str5, System.currentTimeMillis());
            if (a2 != null) {
                SharedPreferences.Editor edit = this.f32362a.edit();
                edit.putString(c(str, str2, str3), a2);
                edit.commit();
            }
        }
    }

    public final long b(String str) {
        long currentTimeMillis;
        synchronized (this) {
            currentTimeMillis = System.currentTimeMillis();
            if (!this.f32362a.contains(c(str))) {
                SharedPreferences.Editor edit = this.f32362a.edit();
                edit.putString(c(str), String.valueOf(currentTimeMillis));
                edit.commit();
            } else {
                currentTimeMillis = d(str);
            }
            this.f32364c.put(str, Long.valueOf(currentTimeMillis));
        }
        return currentTimeMillis;
    }

    public final void b(String str, String str2, String str3) {
        synchronized (this) {
            String c2 = c(str, str2, str3);
            SharedPreferences.Editor edit = this.f32362a.edit();
            edit.remove(c2);
            edit.commit();
        }
    }
}
