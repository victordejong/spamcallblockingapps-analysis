package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ect.class */
public abstract class ect<T> {

    /* renamed from: a */
    private final int f16293a;

    /* renamed from: b */
    private final String f16294b;

    /* renamed from: c */
    private final T f16295c;

    private ect(int i, String str, T t) {
        this.f16293a = i;
        this.f16294b = str;
        this.f16295c = t;
        dyx.m8159d().m7887a(this);
    }

    public /* synthetic */ ect(int i, String str, Object obj, ecw ecwVar) {
        this(i, str, obj);
    }

    /* renamed from: a */
    public static ect<String> m7898a(int i, String str) {
        ect<String> m7893a = m7893a(1, str, (String) null);
        dyx.m8159d().m7884c(m7893a);
        return m7893a;
    }

    /* renamed from: a */
    public static ect<Float> m7897a(int i, String str, float f) {
        return new ecx(1, str, Float.valueOf(0.0f));
    }

    /* renamed from: a */
    public static ect<Integer> m7896a(int i, String str, int i2) {
        return new ecv(1, str, Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static ect<Long> m7895a(int i, String str, long j) {
        return new ecy(1, str, Long.valueOf(j));
    }

    /* renamed from: a */
    public static ect<Boolean> m7894a(int i, String str, Boolean bool) {
        return new ecw(1, str, bool);
    }

    /* renamed from: a */
    public static ect<String> m7893a(int i, String str, String str2) {
        return new eda(1, str, str2);
    }

    /* renamed from: a */
    public abstract T mo7881a(SharedPreferences sharedPreferences);

    /* renamed from: a */
    public abstract T mo7880a(Bundle bundle);

    /* renamed from: a */
    public abstract T mo7879a(JSONObject jSONObject);

    /* renamed from: a */
    public final String m7899a() {
        return this.f16294b;
    }

    /* renamed from: a */
    public abstract void mo7882a(SharedPreferences.Editor editor, T t);

    /* renamed from: b */
    public final T m7892b() {
        return this.f16295c;
    }

    /* renamed from: c */
    public final int m7891c() {
        return this.f16293a;
    }
}
