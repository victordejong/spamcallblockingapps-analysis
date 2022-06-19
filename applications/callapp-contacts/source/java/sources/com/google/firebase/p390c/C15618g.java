package com.google.firebase.p390c;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: com.google.firebase.c.g */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/g.class */
public final class C15618g {

    /* renamed from: a */
    private static C15618g f55999a;

    /* renamed from: b */
    private static final SimpleDateFormat f56000b = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: c */
    private final SharedPreferences f56001c;

    /* renamed from: d */
    private final SharedPreferences f56002d;

    private C15618g(Context context) {
        this.f56001c = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        this.f56002d = context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    C15618g(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        this.f56001c = sharedPreferences;
        this.f56002d = sharedPreferences2;
    }

    /* renamed from: a */
    public static C15618g m8555a(Context context) {
        C15618g c15618g;
        synchronized (C15618g.class) {
            try {
                if (f55999a == null) {
                    f55999a = new C15618g(context);
                }
                c15618g = f55999a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c15618g;
    }

    /* renamed from: a */
    public final boolean m8556a(long j) {
        boolean m8554a;
        synchronized (this) {
            m8554a = m8554a("fire-global", j);
        }
        return m8554a;
    }

    /* renamed from: a */
    public final boolean m8554a(String str, long j) {
        synchronized (this) {
            if (!this.f56001c.contains(str)) {
                this.f56001c.edit().putLong(str, j).apply();
                return true;
            }
            Date date = new Date(this.f56001c.getLong(str, -1L));
            Date date2 = new Date(j);
            SimpleDateFormat simpleDateFormat = f56000b;
            if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
                return false;
            }
            this.f56001c.edit().putLong(str, j).apply();
            return true;
        }
    }
}
