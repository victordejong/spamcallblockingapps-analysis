package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.e3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/e3.class */
public abstract class AbstractC1714e3<T> {

    /* renamed from: a */
    private final int f6380a;

    /* renamed from: b */
    private final String f6381b;

    /* renamed from: c */
    private final T f6382c;

    /* JADX WARN: Multi-variable type inference failed */
    /* synthetic */ AbstractC1714e3(int i, String str, Object obj, z2 z2Var) {
        this.f6380a = i;
        this.f6381b = str;
        this.f6382c = obj;
        C1674c.m7907b().m7577a(this);
    }

    /* renamed from: g */
    public static AbstractC1714e3<Boolean> m7669g(int i, String str, Boolean bool) {
        return new z2(i, str, bool);
    }

    /* renamed from: h */
    public static AbstractC1714e3<Integer> m7668h(int i, String str, int i2) {
        return new a3(1, str, Integer.valueOf(i2));
    }

    /* renamed from: i */
    public static AbstractC1714e3<Long> m7667i(int i, String str, long j) {
        return new b3(1, str, Long.valueOf(j));
    }

    /* renamed from: j */
    public static AbstractC1714e3<Float> m7666j(int i, String str, float f) {
        return new c3(1, str, Float.valueOf(f));
    }

    /* renamed from: k */
    public static AbstractC1714e3<String> m7665k(int i, String str, String str2) {
        return new d3(1, str, str2);
    }

    /* renamed from: l */
    public static AbstractC1714e3<String> m7664l(int i, String str) {
        AbstractC1714e3<String> k = m7665k(1, "gads:sdk_core_constants:experiment_id", null);
        C1674c.m7907b().m7576b(k);
        return k;
    }

    /* renamed from: a */
    public abstract T m7675a(Bundle bundle);

    /* renamed from: b */
    public abstract void m7674b(SharedPreferences.Editor editor, T t);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public abstract T m7673c(JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public abstract T m7672d(SharedPreferences sharedPreferences);

    /* renamed from: e */
    public final String m7671e() {
        return this.f6381b;
    }

    /* renamed from: f */
    public final T m7670f() {
        return this.f6382c;
    }

    /* renamed from: m */
    public final int m7663m() {
        return this.f6380a;
    }
}
