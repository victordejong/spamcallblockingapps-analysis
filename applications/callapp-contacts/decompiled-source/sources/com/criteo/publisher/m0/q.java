package com.criteo.publisher.m0;

import android.content.SharedPreferences;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f17521a;

    public q(SharedPreferences sharedPreferences) {
        this.f17521a = sharedPreferences;
    }

    public final int a(String str) {
        int i = -1;
        try {
            i = this.f17521a.getInt(str, -1);
        } catch (ClassCastException e) {
            o.a((Throwable) new IllegalStateException("Expect an int type when reading ".concat(String.valueOf(str)), e));
        }
        return i;
    }

    public final String a(String str, String str2) {
        try {
            str2 = this.f17521a.getString(str, str2);
        } catch (ClassCastException e) {
            o.a((Throwable) new IllegalStateException("Expected a String type when reading: ".concat(String.valueOf(str)), e));
        }
        return str2;
    }
}
