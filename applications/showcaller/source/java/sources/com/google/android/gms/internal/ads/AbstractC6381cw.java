package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.cw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cw.class */
public abstract class AbstractC6381cw<T> {

    /* renamed from: a */
    private final int f21389a;

    /* renamed from: b */
    private final String f21390b;

    /* renamed from: c */
    private final T f21391c;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ AbstractC6381cw(int i, int i2, String str, T t) {
        this.f21389a = i;
        this.f21390b = i2;
        this.f21391c = str;
        C7192yr.m8715b().m15679a(this);
    }

    /* renamed from: g */
    public static AbstractC6381cw<Boolean> m15991g(int i, String str, Boolean bool) {
        return new C7085vv(i, str, bool);
    }

    /* renamed from: h */
    public static AbstractC6381cw<Integer> m15990h(int i, String str, int i2) {
        return new C7122wv(1, str, Integer.valueOf(i2));
    }

    /* renamed from: i */
    public static AbstractC6381cw<Long> m15989i(int i, String str, long j) {
        return new C7159xv(1, str, Long.valueOf(j));
    }

    /* renamed from: j */
    public static AbstractC6381cw<Float> m15988j(int i, String str, float f) {
        return new C7233zv(1, str, Float.valueOf(f));
    }

    /* renamed from: k */
    public static AbstractC6381cw<String> m15987k(int i, String str, String str2) {
        return new C6307aw(1, str, str2);
    }

    /* renamed from: l */
    public static AbstractC6381cw<String> m15986l(int i, String str) {
        AbstractC6381cw<String> m15987k = m15987k(1, "gads:sdk_core_constants:experiment_id", null);
        C7192yr.m8715b().m15678b(m15987k);
        return m15987k;
    }

    /* renamed from: a */
    public abstract T mo8167a(Bundle bundle);

    /* renamed from: b */
    public abstract void mo8166b(SharedPreferences.Editor editor, T t);

    /* renamed from: c */
    public abstract T mo8165c(JSONObject jSONObject);

    /* renamed from: d */
    public abstract T mo8164d(SharedPreferences sharedPreferences);

    /* renamed from: e */
    public final String m15993e() {
        return this.f21390b;
    }

    /* renamed from: f */
    public final T m15992f() {
        return this.f21391c;
    }

    /* renamed from: m */
    public final int m15985m() {
        return this.f21389a;
    }
}
