package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xf.class */
public final class xf {

    /* renamed from: b  reason: collision with root package name */
    final wh f28508b;

    /* renamed from: d  reason: collision with root package name */
    private final Context f28510d;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, xh> f28509c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    final List<xk> f28507a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public xf(Context context, wh whVar) {
        this.f28510d = context;
        this.f28508b = whVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(xk xkVar) {
        synchronized (this) {
            this.f28507a.add(xkVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        synchronized (this) {
            if (!this.f28509c.containsKey(str)) {
                SharedPreferences defaultSharedPreferences = "__default__".equals(str) ? PreferenceManager.getDefaultSharedPreferences(this.f28510d) : this.f28510d.getSharedPreferences(str, 0);
                xh xhVar = new xh(this, str);
                this.f28509c.put(str, xhVar);
                defaultSharedPreferences.registerOnSharedPreferenceChangeListener(xhVar);
            }
        }
    }
}
