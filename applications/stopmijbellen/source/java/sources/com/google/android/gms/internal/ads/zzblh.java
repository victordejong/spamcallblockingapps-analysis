package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblh.class */
public final class zzblh implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    @VisibleForTesting
    public volatile boolean zza = false;
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();

    private final void zzf() {
        if (this.zze == null) {
            return;
        }
        try {
            this.zzh = new JSONObject((String) zzbll.zza(new zzfqs() { // from class: com.google.android.gms.internal.ads.zzble
                @Override // com.google.android.gms.internal.ads.zzfqs
                public final Object zza() {
                    return zzblh.this.zzd();
                }
            }));
        } catch (JSONException e) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzf();
        }
    }

    public final <T> T zzb(final zzblb<T> zzblbVar) {
        if (!this.zzc.block(5000L)) {
            synchronized (this.zzb) {
                if (!this.zza) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzd || this.zze == null) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null) {
                }
                return zzblbVar.zzl();
            }
        }
        if (zzblbVar.zze() != 2) {
            return (zzblbVar.zze() != 1 || !this.zzh.has(zzblbVar.zzm())) ? (T) zzbll.zza(new zzfqs() { // from class: com.google.android.gms.internal.ads.zzblf
                @Override // com.google.android.gms.internal.ads.zzfqs
                public final Object zza() {
                    return zzblh.this.zzc(zzblbVar);
                }
            }) : zzblbVar.zza(this.zzh);
        }
        Bundle bundle = this.zzf;
        return bundle == null ? zzblbVar.zzl() : zzblbVar.zzb(bundle);
    }

    public final /* synthetic */ Object zzc(zzblb zzblbVar) {
        return zzblbVar.zzc(this.zze);
    }

    public final /* synthetic */ String zzd() {
        return this.zze.getString("flag_configuration", JsonUtils.EMPTY_JSON);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
        if (r8 != null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzblh.zze(android.content.Context):void");
    }
}
