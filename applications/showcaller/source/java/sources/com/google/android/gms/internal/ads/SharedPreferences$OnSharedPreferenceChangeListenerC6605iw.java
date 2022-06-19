package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.iw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iw.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC6605iw implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    private Context f24502g;

    /* renamed from: a */
    private final Object f24496a = new Object();

    /* renamed from: b */
    private final ConditionVariable f24497b = new ConditionVariable();

    /* renamed from: c */
    private volatile boolean f24498c = false;

    /* renamed from: d */
    volatile boolean f24499d = false;

    /* renamed from: e */
    private SharedPreferences f24500e = null;

    /* renamed from: f */
    private Bundle f24501f = new Bundle();

    /* renamed from: h */
    private JSONObject f24503h = new JSONObject();

    /* renamed from: f */
    private final void m14260f() {
        if (this.f24500e == null) {
            return;
        }
        try {
            this.f24503h = new JSONObject((String) C6753mw.m13065a(new jv2(this) { // from class: com.google.android.gms.internal.ads.gw

                /* renamed from: d */
                private final SharedPreferences$OnSharedPreferenceChangeListenerC6605iw f23718d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23718d = this;
                }

                @Override // com.google.android.gms.internal.ads.jv2
                public final Object zza() {
                    return this.f23718d.m14262d();
                }
            }));
        } catch (JSONException e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
        if (r8 != null) goto L31;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14264b(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.SharedPreferences$OnSharedPreferenceChangeListenerC6605iw.m14264b(android.content.Context):void");
    }

    /* renamed from: c */
    public final <T> T m14263c(AbstractC6381cw<T> abstractC6381cw) {
        if (!this.f24497b.block(5000L)) {
            synchronized (this.f24496a) {
                if (!this.f24499d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f24498c || this.f24500e == null) {
            synchronized (this.f24496a) {
                if (this.f24498c && this.f24500e != null) {
                }
                return abstractC6381cw.m15992f();
            }
        }
        if (abstractC6381cw.m15985m() != 2) {
            return (abstractC6381cw.m15985m() != 1 || !this.f24503h.has(abstractC6381cw.m15993e())) ? (T) C6753mw.m13065a(new jv2(this, abstractC6381cw) { // from class: com.google.android.gms.internal.ads.fw

                /* renamed from: d */
                private final SharedPreferences$OnSharedPreferenceChangeListenerC6605iw f23161d;

                /* renamed from: e */
                private final AbstractC6381cw f23162e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23161d = this;
                    this.f23162e = abstractC6381cw;
                }

                @Override // com.google.android.gms.internal.ads.jv2
                public final Object zza() {
                    return this.f23161d.m14261e(this.f23162e);
                }
            }) : abstractC6381cw.mo8165c(this.f24503h);
        }
        Bundle bundle = this.f24501f;
        return bundle == null ? abstractC6381cw.m15992f() : abstractC6381cw.mo8167a(bundle);
    }

    /* renamed from: d */
    public final /* synthetic */ String m14262d() {
        return this.f24500e.getString("flag_configuration", "{}");
    }

    /* renamed from: e */
    public final /* synthetic */ Object m14261e(AbstractC6381cw abstractC6381cw) {
        return abstractC6381cw.mo8164d(this.f24500e);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m14260f();
        }
    }
}
