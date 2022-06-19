package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabl.class */
public final class zzabl implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzcmf;
    private final Object lock = new Object();
    private final ConditionVariable zzcmd = new ConditionVariable();
    private volatile boolean zzzl = false;
    @VisibleForTesting
    private volatile boolean zzckv = false;
    private SharedPreferences zzcme = null;
    private Bundle metaData = new Bundle();
    private JSONObject zzcmg = new JSONObject();

    private final void zzse() {
        if (this.zzcme == null) {
            return;
        }
        try {
            this.zzcmg = new JSONObject((String) zzbr.zza((zzdws<Object>) new zzabn(this)));
        } catch (JSONException e) {
        }
    }

    public final void initialize(Context context) {
        if (this.zzzl) {
            return;
        }
        synchronized (this.lock) {
            if (this.zzzl) {
                return;
            }
            if (!this.zzckv) {
                this.zzckv = true;
            }
            Context applicationContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
            this.zzcmf = applicationContext;
            try {
                this.metaData = Wrappers.packageManager(applicationContext).getApplicationInfo(this.zzcmf.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            }
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            Context context2 = remoteContext;
            if (remoteContext == null) {
                context2 = remoteContext;
                if (context != null) {
                    Context applicationContext2 = context.getApplicationContext();
                    if (applicationContext2 != null) {
                        context = applicationContext2;
                    }
                    context2 = context;
                }
            }
            if (context2 == null) {
                this.zzckv = false;
                this.zzcmd.open();
                return;
            }
            zzwr.zzqp();
            SharedPreferences sharedPreferences = context2.getSharedPreferences("google_ads_flags", 0);
            this.zzcme = sharedPreferences;
            if (sharedPreferences != null) {
                sharedPreferences.registerOnSharedPreferenceChangeListener(this);
            }
            zzadw.zza(new zzabm(this));
            zzse();
            this.zzzl = true;
            this.zzckv = false;
            this.zzcmd.open();
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzse();
        }
    }

    public final <T> T zzd(zzaba<T> zzabaVar) {
        if (!this.zzcmd.block(5000L)) {
            synchronized (this.lock) {
                if (!this.zzckv) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzzl || this.zzcme == null) {
            synchronized (this.lock) {
                if (this.zzzl && this.zzcme != null) {
                }
                return zzabaVar.zzsb();
            }
        }
        if (zzabaVar.getSource() != 2) {
            return (zzabaVar.getSource() != 1 || !this.zzcmg.has(zzabaVar.getKey())) ? (T) zzbr.zza((zzdws<Object>) new zzabk(this, zzabaVar)) : zzabaVar.zzb(this.zzcmg);
        }
        Bundle bundle = this.metaData;
        return bundle == null ? zzabaVar.zzsb() : zzabaVar.zza(bundle);
    }

    public final /* synthetic */ Object zze(zzaba zzabaVar) {
        return zzabaVar.zza(this.zzcme);
    }

    public final /* synthetic */ String zzsf() {
        return this.zzcme.getString("flag_configuration", "{}");
    }
}
