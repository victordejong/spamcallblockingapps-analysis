package com.criteo.publisher.p256m0;

import android.content.SharedPreferences;
/* renamed from: com.criteo.publisher.m0.q */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/q.class */
public final class C8446q {

    /* renamed from: a */
    private final SharedPreferences f30206a;

    public C8446q(SharedPreferences sharedPreferences) {
        this.f30206a = sharedPreferences;
    }

    /* renamed from: a */
    public final int m25672a(String str) {
        int i;
        try {
            i = this.f30206a.getInt(str, -1);
        } catch (ClassCastException e) {
            C8444o.m25675a((Throwable) new IllegalStateException("Expect an int type when reading ".concat(String.valueOf(str)), e));
            i = -1;
        }
        return i;
    }

    /* renamed from: a */
    public final String m25671a(String str, String str2) {
        try {
            str2 = this.f30206a.getString(str, str2);
        } catch (ClassCastException e) {
            C8444o.m25675a((Throwable) new IllegalStateException("Expected a String type when reading: ".concat(String.valueOf(str)), e));
        }
        return str2;
    }
}
