package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.google.firebase.heartbeatinfo.f */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/f.class */
public class C9174f {

    /* renamed from: a */
    private static C9174f f39503a;

    /* renamed from: b */
    private static final SimpleDateFormat f39504b = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: c */
    private final SharedPreferences f39505c;

    /* renamed from: d */
    private final SharedPreferences f39506d;

    private C9174f(Context context) {
        this.f39505c = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        this.f39506d = context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    /* renamed from: a */
    public static C9174f m1649a(Context context) {
        C9174f c9174f;
        synchronized (C9174f.class) {
            try {
                if (f39503a == null) {
                    f39503a = new C9174f(context);
                }
                c9174f = f39503a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c9174f;
    }

    /* renamed from: b */
    static boolean m1648b(long j, long j2) {
        Date date = new Date(j);
        Date date2 = new Date(j2);
        SimpleDateFormat simpleDateFormat = f39504b;
        return !simpleDateFormat.format(date).equals(simpleDateFormat.format(date2));
    }

    /* renamed from: c */
    public boolean m1647c(long j) {
        boolean m1646d;
        synchronized (this) {
            m1646d = m1646d("fire-global", j);
        }
        return m1646d;
    }

    /* renamed from: d */
    public boolean m1646d(String str, long j) {
        synchronized (this) {
            if (!this.f39505c.contains(str)) {
                this.f39505c.edit().putLong(str, j).apply();
                return true;
            } else if (!m1648b(this.f39505c.getLong(str, -1L), j)) {
                return false;
            } else {
                this.f39505c.edit().putLong(str, j).apply();
                return true;
            }
        }
    }
}
