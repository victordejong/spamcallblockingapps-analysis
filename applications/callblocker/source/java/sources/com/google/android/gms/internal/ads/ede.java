package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.common.C2595h;
import com.google.android.gms.common.p132c.C2586c;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ede.class */
public final class ede implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g */
    private Context f16310g;

    /* renamed from: a */
    private final Object f16304a = new Object();

    /* renamed from: b */
    private final ConditionVariable f16305b = new ConditionVariable();

    /* renamed from: c */
    private volatile boolean f16306c = false;

    /* renamed from: d */
    private volatile boolean f16307d = false;

    /* renamed from: e */
    private SharedPreferences f16308e = null;

    /* renamed from: f */
    private Bundle f16309f = new Bundle();

    /* renamed from: h */
    private JSONObject f16311h = new JSONObject();

    /* renamed from: b */
    private final void m7874b() {
        if (this.f16308e == null) {
            return;
        }
        try {
            this.f16311h = new JSONObject((String) C3626xj.m6820a(new cov(this) { // from class: com.google.android.gms.internal.ads.edg

                /* renamed from: a */
                private final ede f16313a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f16313a = this;
                }

                @Override // com.google.android.gms.internal.ads.cov
                /* renamed from: a */
                public final Object mo7868a() {
                    return this.f16313a.m7878a();
                }
            }));
        } catch (JSONException e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> T m7876a(ect<T> ectVar) {
        T m7892b;
        if (!this.f16305b.block(5000L)) {
            synchronized (this.f16304a) {
                if (!this.f16307d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f16306c || this.f16308e == null) {
            synchronized (this.f16304a) {
                if (!this.f16306c || this.f16308e == null) {
                    m7892b = ectVar.m7892b();
                }
            }
            return m7892b;
        }
        m7892b = ectVar.m7891c() == 2 ? this.f16309f == null ? ectVar.m7892b() : ectVar.mo7880a(this.f16309f) : (ectVar.m7891c() != 1 || !this.f16311h.has(ectVar.m7899a())) ? C3626xj.m6820a(new cov(this, ectVar) { // from class: com.google.android.gms.internal.ads.edd

            /* renamed from: a */
            private final ede f16302a;

            /* renamed from: b */
            private final ect f16303b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16302a = this;
                this.f16303b = ectVar;
            }

            @Override // com.google.android.gms.internal.ads.cov
            /* renamed from: a */
            public final Object mo7868a() {
                return this.f16302a.m7873b(this.f16303b);
            }
        }) : ectVar.mo7879a(this.f16311h);
        return m7892b;
    }

    /* renamed from: a */
    public final /* synthetic */ String m7878a() {
        return this.f16308e.getString("flag_configuration", "{}");
    }

    /* renamed from: a */
    public final void m7877a(Context context) {
        if (this.f16306c) {
            return;
        }
        synchronized (this.f16304a) {
            if (this.f16306c) {
                return;
            }
            if (!this.f16307d) {
                this.f16307d = true;
            }
            this.f16310g = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                this.f16309f = C2586c.m14193a(this.f16310g).m14198a(this.f16310g.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
            } catch (NullPointerException e2) {
            }
            Context m14150d = C2595h.m14150d(context);
            if (m14150d != null || context == null) {
                context = m14150d;
            } else {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
            }
            if (context == null) {
                this.f16307d = false;
                this.f16305b.open();
                return;
            }
            dyx.m8160c();
            this.f16308e = context.getSharedPreferences("google_ads_flags", 0);
            if (this.f16308e != null) {
                this.f16308e.registerOnSharedPreferenceChangeListener(this);
            }
            C2828be.m12045a(new edf(this));
            m7874b();
            this.f16306c = true;
            this.f16307d = false;
            this.f16305b.open();
        }
    }

    /* renamed from: b */
    public final /* synthetic */ Object m7873b(ect ectVar) {
        return ectVar.mo7881a(this.f16308e);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m7874b();
        }
    }
}
