package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/af.class */
public abstract class af<T> {

    /* renamed from: a  reason: collision with root package name */
    final int f23213a;

    /* renamed from: b  reason: collision with root package name */
    final String f23214b;

    /* renamed from: c  reason: collision with root package name */
    final T f23215c;

    private af(int i, String str, T t) {
        this.f23213a = i;
        this.f23214b = str;
        this.f23215c = t;
        ekb.d().f23514a.add(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ af(int i, String str, Object obj, ae aeVar) {
        this(i, str, obj);
    }

    public static af<Boolean> a(int i, String str, Boolean bool) {
        return new ae(i, str, bool);
    }

    public static af<Float> a(String str) {
        return new aj(1, str, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
    }

    public static af<Integer> a(String str, int i) {
        return new ah(1, str, Integer.valueOf(i));
    }

    public static af<Long> a(String str, long j) {
        return new ag(1, str, Long.valueOf(j));
    }

    public static af<String> a(String str, String str2) {
        return new ai(1, str, str2);
    }

    public static af<String> b(String str) {
        af<String> a2 = a(str, (String) null);
        ekb.d().f23516c.add(a2);
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T a(SharedPreferences sharedPreferences);

    public abstract T a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T a(JSONObject jSONObject);

    public abstract void a(SharedPreferences.Editor editor, T t);
}
