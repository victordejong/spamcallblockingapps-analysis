package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.ads.cn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cn.class */
public final class C1689cn {

    /* renamed from: a */
    private final Map<String, SharedPreferences$OnSharedPreferenceChangeListenerC1651an> f6273a = new HashMap();

    /* renamed from: b */
    private final List<AbstractC1667bn> f6274b = new ArrayList();

    /* renamed from: c */
    private final Context f6275c;

    /* renamed from: d */
    private final C2053yl f6276d;

    C1689cn(Context context, C2053yl c2053yl) {
        this.f6275c = context;
        this.f6276d = c2053yl;
    }

    /* renamed from: a */
    public final void m7805a(AbstractC1667bn abstractC1667bn) {
        synchronized (this) {
            this.f6274b.add(abstractC1667bn);
        }
    }

    /* renamed from: b */
    public final void m7804b(String str) {
        synchronized (this) {
            if (this.f6273a.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.f6275c) : this.f6275c.getSharedPreferences(str, 0);
            SharedPreferences$OnSharedPreferenceChangeListenerC1651an sharedPreferences$OnSharedPreferenceChangeListenerC1651an = new SharedPreferences$OnSharedPreferenceChangeListenerC1651an(this, str);
            this.f6273a.put(str, sharedPreferences$OnSharedPreferenceChangeListenerC1651an);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferences$OnSharedPreferenceChangeListenerC1651an);
        }
    }

    /* renamed from: c */
    final /* synthetic */ void m7803c(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.f6276d.m4748b();
        }
    }
}
