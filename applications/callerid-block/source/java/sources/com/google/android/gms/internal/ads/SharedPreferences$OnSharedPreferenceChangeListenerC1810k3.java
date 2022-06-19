package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.k3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/k3.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC1810k3 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    private Context f6962g;

    /* renamed from: a */
    private final Object f6956a = new Object();

    /* renamed from: b */
    private final ConditionVariable f6957b = new ConditionVariable();

    /* renamed from: c */
    private volatile boolean f6958c = false;

    /* renamed from: d */
    volatile boolean f6959d = false;

    /* renamed from: e */
    private SharedPreferences f6960e = null;

    /* renamed from: f */
    private Bundle f6961f = new Bundle();

    /* renamed from: h */
    private JSONObject f6963h = new JSONObject();

    /* renamed from: f */
    private final void m6874f() {
        if (this.f6960e == null) {
            return;
        }
        try {
            this.f6963h = new JSONObject((String) C1870o3.m6346a(new i3(this)));
        } catch (JSONException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x006e, code lost:
        if (r8 != null) goto L33;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6879a(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.SharedPreferences$OnSharedPreferenceChangeListenerC1810k3.m6879a(android.content.Context):void");
    }

    /* renamed from: b */
    public final <T> T m6878b(AbstractC1714e3<T> abstractC1714e3) {
        if (!this.f6957b.block(5000L)) {
            synchronized (this.f6956a) {
                if (!this.f6959d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f6958c || this.f6960e == null) {
            synchronized (this.f6956a) {
                if (this.f6958c && this.f6960e != null) {
                }
                return abstractC1714e3.m7670f();
            }
        }
        if (abstractC1714e3.m7663m() != 2) {
            return (abstractC1714e3.m7663m() != 1 || !this.f6963h.has(abstractC1714e3.m7671e())) ? (T) C1870o3.m6346a(new h3(this, abstractC1714e3)) : abstractC1714e3.m7673c(this.f6963h);
        }
        Bundle bundle = this.f6961f;
        return bundle == null ? abstractC1714e3.m7670f() : abstractC1714e3.m7675a(bundle);
    }

    /* renamed from: c */
    final /* synthetic */ String m6877c() {
        return this.f6960e.getString("flag_configuration", "{}");
    }

    /* renamed from: d */
    final /* synthetic */ Object m6876d(AbstractC1714e3 abstractC1714e3) {
        return abstractC1714e3.m7672d(this.f6960e);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m6874f();
        }
    }
}
