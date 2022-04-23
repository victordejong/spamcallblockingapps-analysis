package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.ads.internal.util.zzbr;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/am.class */
public final class am implements SharedPreferences.OnSharedPreferenceChangeListener {
    Context g;

    /* renamed from: a  reason: collision with root package name */
    final Object f23559a = new Object();

    /* renamed from: b  reason: collision with root package name */
    final ConditionVariable f23560b = new ConditionVariable();

    /* renamed from: c  reason: collision with root package name */
    volatile boolean f23561c = false;

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f23562d = false;
    SharedPreferences e = null;
    Bundle f = new Bundle();
    private JSONObject h = new JSONObject();

    public final <T> T a(final af<T> afVar) {
        if (!this.f23560b.block(5000L)) {
            synchronized (this.f23559a) {
                if (!this.f23562d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f23561c || this.e == null) {
            synchronized (this.f23559a) {
                if (this.f23561c && this.e != null) {
                }
                return afVar.f23215c;
            }
        }
        if (afVar.f23213a != 2) {
            return (afVar.f23213a != 1 || !this.h.has(afVar.f23214b)) ? (T) zzbr.zza(new cyn(this, afVar) { // from class: com.google.android.gms.internal.ads.ap

                /* renamed from: a  reason: collision with root package name */
                private final am f23688a;

                /* renamed from: b  reason: collision with root package name */
                private final af f23689b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23688a = this;
                    this.f23689b = afVar;
                }

                @Override // com.google.android.gms.internal.ads.cyn
                public final Object a() {
                    return this.f23688a.b(this.f23689b);
                }
            }) : afVar.a(this.h);
        }
        Bundle bundle = this.f;
        return bundle == null ? afVar.f23215c : afVar.a(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.e != null) {
            try {
                this.h = new JSONObject((String) zzbr.zza(new cyn(this) { // from class: com.google.android.gms.internal.ads.ao

                    /* renamed from: a  reason: collision with root package name */
                    private final am f23646a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23646a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.cyn
                    public final Object a() {
                        return this.f23646a.e.getString("flag_configuration", "{}");
                    }
                }));
            } catch (JSONException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object b(af afVar) {
        return afVar.a(this.e);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            a();
        }
    }
}
