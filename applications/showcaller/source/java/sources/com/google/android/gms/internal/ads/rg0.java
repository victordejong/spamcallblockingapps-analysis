package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rg0.class */
public final class rg0 {

    /* renamed from: a */
    private final Map<String, pg0> f28936a = new HashMap();

    /* renamed from: b */
    private final List<qg0> f28937b = new ArrayList();

    /* renamed from: c */
    private final Context f28938c;

    /* renamed from: d */
    private final nf0 f28939d;

    public rg0(Context context, nf0 nf0Var) {
        this.f28938c = context;
        this.f28939d = nf0Var;
    }

    /* renamed from: b */
    public final void m11473b(qg0 qg0Var) {
        synchronized (this) {
            this.f28937b.add(qg0Var);
        }
    }

    /* renamed from: c */
    public final void m11472c(String str) {
        synchronized (this) {
            if (this.f28936a.containsKey(str)) {
                return;
            }
            SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.f28938c) : this.f28938c.getSharedPreferences(str, 0);
            pg0 pg0Var = new pg0(this, str);
            this.f28936a.put(str, pg0Var);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(pg0Var);
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m11471d(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (map.containsKey(str) && ((Set) map.get(str)).contains(str2)) {
            this.f28939d.m12938b();
        }
    }
}
