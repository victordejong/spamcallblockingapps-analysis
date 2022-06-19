package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.af */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/af.class */
public abstract class AbstractC12172af<T> {

    /* renamed from: a */
    final int f40143a;

    /* renamed from: b */
    final String f40144b;

    /* renamed from: c */
    final T f40145c;

    private AbstractC12172af(int i, String str, T t) {
        this.f40143a = i;
        this.f40144b = str;
        this.f40145c = t;
        ekb.m14832d().f42338a.add(this);
    }

    public /* synthetic */ AbstractC12172af(int i, String str, Object obj, C12171ae c12171ae) {
        this(i, str, obj);
    }

    /* renamed from: a */
    public static AbstractC12172af<Boolean> m18798a(int i, String str, Boolean bool) {
        return new C12171ae(i, str, bool);
    }

    /* renamed from: a */
    public static AbstractC12172af<Float> m18797a(String str) {
        return new C12178aj(1, str, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
    }

    /* renamed from: a */
    public static AbstractC12172af<Integer> m18796a(String str, int i) {
        return new C12175ah(1, str, Integer.valueOf(i));
    }

    /* renamed from: a */
    public static AbstractC12172af<Long> m18795a(String str, long j) {
        return new C12174ag(1, str, Long.valueOf(j));
    }

    /* renamed from: a */
    public static AbstractC12172af<String> m18794a(String str, String str2) {
        return new C12177ai(1, str, str2);
    }

    /* renamed from: b */
    public static AbstractC12172af<String> m18793b(String str) {
        AbstractC12172af<String> m18794a = m18794a(str, (String) null);
        ekb.m14832d().f42340c.add(m18794a);
        return m18794a;
    }

    /* renamed from: a */
    public abstract T mo18646a(SharedPreferences sharedPreferences);

    /* renamed from: a */
    public abstract T mo18645a(Bundle bundle);

    /* renamed from: a */
    public abstract T mo18644a(JSONObject jSONObject);

    /* renamed from: a */
    public abstract void mo18647a(SharedPreferences.Editor editor, T t);
}
