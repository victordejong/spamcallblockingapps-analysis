package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.b;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ao.class */
final class ao {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f32486a;

    /* renamed from: b  reason: collision with root package name */
    final Context f32487b;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ao$a.class */
    static final class a {

        /* renamed from: d  reason: collision with root package name */
        private static final long f32488d = TimeUnit.DAYS.toMillis(7);

        /* renamed from: a  reason: collision with root package name */
        final String f32489a;

        /* renamed from: b  reason: collision with root package name */
        final String f32490b;

        /* renamed from: c  reason: collision with root package name */
        final long f32491c;

        private a(String str, String str2, long j) {
            this.f32489a = str;
            this.f32490b = str2;
            this.f32491c = j;
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
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
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
                Log.w("FirebaseMessaging", sb.toString());
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean b(String str) {
            return System.currentTimeMillis() > this.f32491c + f32488d || !str.equals(this.f32490b);
        }
    }

    public ao(Context context) {
        this.f32487b = context;
        this.f32486a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        a();
    }

    private void a() {
        File file = new File(b.c(this.f32487b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (file.createNewFile() && !b()) {
                    c();
                }
            } catch (IOException e) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
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

    private static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|*");
        return sb.toString();
    }

    private boolean b() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f32486a.getAll().isEmpty();
        }
        return isEmpty;
    }

    private void c() {
        synchronized (this) {
            this.f32486a.edit().clear().commit();
        }
    }

    public final a a(String str, String str2) {
        a a2;
        synchronized (this) {
            a2 = a.a(this.f32486a.getString(b(str, str2), null));
        }
        return a2;
    }

    public final void a(String str, String str2, String str3, String str4) {
        synchronized (this) {
            String a2 = a.a(str3, str4, System.currentTimeMillis());
            if (a2 != null) {
                SharedPreferences.Editor edit = this.f32486a.edit();
                edit.putString(b(str, str2), a2);
                edit.commit();
            }
        }
    }
}
