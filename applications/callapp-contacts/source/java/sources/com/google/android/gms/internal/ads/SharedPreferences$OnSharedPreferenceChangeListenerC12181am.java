package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.ads.internal.util.zzbr;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.am */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/am.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC12181am implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    Context f42407g;

    /* renamed from: a */
    final Object f42401a = new Object();

    /* renamed from: b */
    final ConditionVariable f42402b = new ConditionVariable();

    /* renamed from: c */
    volatile boolean f42403c = false;

    /* renamed from: d */
    volatile boolean f42404d = false;

    /* renamed from: e */
    SharedPreferences f42405e = null;

    /* renamed from: f */
    Bundle f42406f = new Bundle();

    /* renamed from: h */
    private JSONObject f42408h = new JSONObject();

    /* renamed from: a */
    public final <T> T m18571a(AbstractC12172af<T> abstractC12172af) {
        if (!this.f42402b.block(5000L)) {
            synchronized (this.f42401a) {
                if (!this.f42404d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f42403c || this.f42405e == null) {
            synchronized (this.f42401a) {
                if (this.f42403c && this.f42405e != null) {
                }
                return abstractC12172af.f40145c;
            }
        }
        if (abstractC12172af.f40143a != 2) {
            return (abstractC12172af.f40143a != 1 || !this.f42408h.has(abstractC12172af.f40144b)) ? (T) zzbr.zza(new cyn(this, abstractC12172af) { // from class: com.google.android.gms.internal.ads.ap

                /* renamed from: a */
                private final SharedPreferences$OnSharedPreferenceChangeListenerC12181am f42556a;

                /* renamed from: b */
                private final AbstractC12172af f42557b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42556a = this;
                    this.f42557b = abstractC12172af;
                }

                @Override // com.google.android.gms.internal.ads.cyn
                /* renamed from: a */
                public final Object mo17050a() {
                    return this.f42556a.m18569b(this.f42557b);
                }
            }) : abstractC12172af.mo18644a(this.f42408h);
        }
        Bundle bundle = this.f42406f;
        return bundle == null ? abstractC12172af.f40145c : abstractC12172af.mo18645a(bundle);
    }

    /* renamed from: a */
    public final void m18572a() {
        if (this.f42405e == null) {
            return;
        }
        try {
            this.f42408h = new JSONObject((String) zzbr.zza(new cyn(this) { // from class: com.google.android.gms.internal.ads.ao

                /* renamed from: a */
                private final SharedPreferences$OnSharedPreferenceChangeListenerC12181am f42505a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42505a = this;
                }

                @Override // com.google.android.gms.internal.ads.cyn
                /* renamed from: a */
                public final Object mo17050a() {
                    return this.f42505a.f42405e.getString("flag_configuration", "{}");
                }
            }));
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public final /* synthetic */ Object m18569b(AbstractC12172af abstractC12172af) {
        return abstractC12172af.mo18646a(this.f42405e);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m18572a();
        }
    }
}
