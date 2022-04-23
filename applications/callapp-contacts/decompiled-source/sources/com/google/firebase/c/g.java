package com.google.firebase.c;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/c/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static g f32229a;

    /* renamed from: b  reason: collision with root package name */
    private static final SimpleDateFormat f32230b = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: c  reason: collision with root package name */
    private final SharedPreferences f32231c;

    /* renamed from: d  reason: collision with root package name */
    private final SharedPreferences f32232d;

    private g(Context context) {
        this.f32231c = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        this.f32232d = context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    g(SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        this.f32231c = sharedPreferences;
        this.f32232d = sharedPreferences2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static g a(Context context) {
        g gVar;
        synchronized (g.class) {
            try {
                if (f32229a == null) {
                    f32229a = new g(context);
                }
                gVar = f32229a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j) {
        boolean a2;
        synchronized (this) {
            a2 = a("fire-global", j);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, long j) {
        synchronized (this) {
            if (this.f32231c.contains(str)) {
                Date date = new Date(this.f32231c.getLong(str, -1L));
                Date date2 = new Date(j);
                SimpleDateFormat simpleDateFormat = f32230b;
                if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
                    return false;
                }
                this.f32231c.edit().putLong(str, j).apply();
                return true;
            }
            this.f32231c.edit().putLong(str, j).apply();
            return true;
        }
    }
}
