package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.xf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xf.class */
public final class C13039xf {

    /* renamed from: b */
    final C13012wh f50016b;

    /* renamed from: d */
    private final Context f50018d;

    /* renamed from: c */
    private final Map<String, SharedPreferences$OnSharedPreferenceChangeListenerC13041xh> f50017c = new HashMap();

    /* renamed from: a */
    final List<AbstractC13044xk> f50015a = new ArrayList();

    public C13039xf(Context context, C13012wh c13012wh) {
        this.f50018d = context;
        this.f50016b = c13012wh;
    }

    /* renamed from: a */
    public final void m14010a(AbstractC13044xk abstractC13044xk) {
        synchronized (this) {
            this.f50015a.add(abstractC13044xk);
        }
    }

    /* renamed from: a */
    public final void m14009a(String str) {
        synchronized (this) {
            if (this.f50017c.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.f50018d) : this.f50018d.getSharedPreferences(str, 0);
            SharedPreferences$OnSharedPreferenceChangeListenerC13041xh sharedPreferences$OnSharedPreferenceChangeListenerC13041xh = new SharedPreferences$OnSharedPreferenceChangeListenerC13041xh(this, str);
            this.f50017c.put(str, sharedPreferences$OnSharedPreferenceChangeListenerC13041xh);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferences$OnSharedPreferenceChangeListenerC13041xh);
        }
    }
}
