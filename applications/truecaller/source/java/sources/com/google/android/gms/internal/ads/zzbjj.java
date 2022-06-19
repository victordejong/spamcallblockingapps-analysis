package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import com.google.android.gms.common.util.VisibleForTesting;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjj.class */
public final class zzbjj implements SharedPreferences.OnSharedPreferenceChangeListener {
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
            this.zzh = new JSONObject((String) zzbjn.zza(new zzfmj(this) { // from class: com.google.android.gms.internal.ads.zzbjh
                private final zzbjj zza;

                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.internal.ads.zzfmj
                public final Object zza() {
                    return this.zza.zzd();
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

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
        if (r8 != null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(android.content.Context r6) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbjj.zzb(android.content.Context):void");
    }

    public final <T> T zzc(zzbjd<T> zzbjdVar) {
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
                return zzbjdVar.zzf();
            }
        }
        if (zzbjdVar.zzm() != 2) {
            return (zzbjdVar.zzm() != 1 || !this.zzh.has(zzbjdVar.zze())) ? (T) zzbjn.zza(new zzfmj(this, zzbjdVar) { // from class: com.google.android.gms.internal.ads.zzbjg
                private final zzbjj zza;
                private final zzbjd zzb;

                {
                    this.zza = this;
                    this.zzb = zzbjdVar;
                }

                @Override // com.google.android.gms.internal.ads.zzfmj
                public final Object zza() {
                    return this.zza.zze(this.zzb);
                }
            }) : zzbjdVar.zzc(this.zzh);
        }
        Bundle bundle = this.zzf;
        return bundle == null ? zzbjdVar.zzf() : zzbjdVar.zza(bundle);
    }

    public final /* synthetic */ String zzd() {
        return this.zze.getString("flag_configuration", "{}");
    }

    public final /* synthetic */ Object zze(zzbjd zzbjdVar) {
        return zzbjdVar.zzd(this.zze);
    }
}
