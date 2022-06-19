package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.core.p017a.C0438a;
import androidx.p013b.C0373a;
import java.io.File;
import java.io.IOException;
import java.util.Map;
/* renamed from: com.google.firebase.iid.z */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/z.class */
public final class C4999z {

    /* renamed from: a */
    private final SharedPreferences f21197a;

    /* renamed from: b */
    private final Context f21198b;

    /* renamed from: c */
    private final Map<String, Long> f21199c = new C0373a();

    public C4999z(Context context) {
        this.f21198b = context;
        this.f21197a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        File file = new File(C0438a.m20901a(this.f21198b), "com.google.android.gms.appid-no-backup");
        if (!file.exists()) {
            try {
                if (!file.createNewFile() || m1885b()) {
                    return;
                }
                Log.i("FirebaseInstanceId", "App restored, clearing state");
                m1890a();
                FirebaseInstanceId.m2008a().m1986g();
            } catch (IOException e) {
                if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                    return;
                }
                String valueOf = String.valueOf(e.getMessage());
                Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(valueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    /* renamed from: a */
    private static String m1888a(String str, String str2) {
        return new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length()).append(str).append("|S|").append(str2).toString();
    }

    /* renamed from: b */
    private static String m1883b(String str, String str2, String str3) {
        return new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str).append("|T|").append(str2).append("|").append(str3).toString();
    }

    /* renamed from: b */
    private final boolean m1885b() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = this.f21197a.getAll().isEmpty();
        }
        return isEmpty;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: c */
    private final long m1882c(String str) {
        char parseLong;
        String string = this.f21197a.getString(m1888a(str, "cre"), null);
        if (string != null) {
            try {
                parseLong = Long.parseLong(string);
            } catch (NumberFormatException e) {
            }
            return parseLong;
        }
        parseLong = 0;
        return parseLong;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public final long m1889a(String str) {
        char currentTimeMillis;
        synchronized (this) {
            currentTimeMillis = System.currentTimeMillis();
            if (!this.f21197a.contains(m1888a(str, "cre"))) {
                SharedPreferences.Editor edit = this.f21197a.edit();
                edit.putString(m1888a(str, "cre"), String.valueOf((long) currentTimeMillis));
                edit.commit();
            } else {
                currentTimeMillis = m1882c(str);
            }
            this.f21199c.put(str, Long.valueOf(currentTimeMillis));
        }
        return currentTimeMillis;
    }

    /* renamed from: a */
    public final C4998y m1887a(String str, String str2, String str3) {
        C4998y m1893a;
        synchronized (this) {
            m1893a = C4998y.m1893a(this.f21197a.getString(m1883b(str, str2, str3), null));
        }
        return m1893a;
    }

    /* renamed from: a */
    public final void m1890a() {
        synchronized (this) {
            this.f21199c.clear();
            this.f21197a.edit().clear().commit();
        }
    }

    /* renamed from: a */
    public final void m1886a(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            String m1892a = C4998y.m1892a(str4, str5, System.currentTimeMillis());
            if (m1892a != null) {
                SharedPreferences.Editor edit = this.f21197a.edit();
                edit.putString(m1883b(str, str2, str3), m1892a);
                edit.commit();
            }
        }
    }

    /* renamed from: b */
    public final void m1884b(String str) {
        synchronized (this) {
            String concat = String.valueOf(str).concat("|T|");
            SharedPreferences.Editor edit = this.f21197a.edit();
            for (String str2 : this.f21197a.getAll().keySet()) {
                if (str2.startsWith(concat)) {
                    edit.remove(str2);
                }
            }
            edit.commit();
        }
    }
}
