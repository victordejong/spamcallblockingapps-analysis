package com.google.android.gms.internal.consent_sdk;

import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zze.class */
public final class zze {
    private final Executor zza;

    public zze(Executor executor) {
        this.zza = executor;
    }

    public final Executor zza() {
        return this.zza;
    }

    public final void zza(String str, String str2, zzi... zziVarArr) {
        this.zza.execute(new Runnable(str, str2, zziVarArr) { // from class: com.google.android.gms.internal.consent_sdk.zzg
            private final String zza;
            private final String zzb;
            private final zzi[] zzc;

            {
                this.zza = str;
                this.zzb = str2;
                this.zzc = zziVarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                JSONObject jSONObject;
                String str3 = this.zza;
                String str4 = this.zzb;
                zzi[] zziVarArr2 = this.zzc;
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                String lowerCase = str3.toLowerCase();
                if (TextUtils.isEmpty(str4)) {
                    jSONObject = new JSONObject();
                } else {
                    try {
                        jSONObject = new JSONObject(str4);
                    } catch (JSONException e) {
                        String.valueOf(lowerCase).length();
                        String.valueOf(str4).length();
                        return;
                    }
                }
                String valueOf = String.valueOf(jSONObject);
                String.valueOf(lowerCase).length();
                valueOf.length();
                for (zzi zziVar : zziVarArr2) {
                    FutureTask futureTask = new FutureTask(new Callable(zziVar, lowerCase, jSONObject) { // from class: com.google.android.gms.internal.consent_sdk.zzf
                        private final zzi zza;
                        private final String zzb;
                        private final JSONObject zzc;

                        {
                            this.zza = zziVar;
                            this.zzb = lowerCase;
                            this.zzc = jSONObject;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return Boolean.valueOf(this.zza.zza(this.zzb, this.zzc));
                        }
                    });
                    zziVar.zza().execute(futureTask);
                    try {
                    } catch (InterruptedException e2) {
                        StringBuilder sb = new StringBuilder(C22128a.m8623f2(lowerCase, 33));
                        sb.append("Thread interrupted for Action[");
                        sb.append(lowerCase);
                        sb.append("]: ");
                        zzca.zza(sb.toString(), e2);
                    } catch (ExecutionException e3) {
                        zzca.zza(C22128a.m8671R1(C22128a.m8623f2(lowerCase, 24), "Failed to run Action[", lowerCase, "]: "), e3.getCause());
                    }
                    if (((Boolean) futureTask.get()).booleanValue()) {
                        return;
                    }
                }
            }
        });
    }
}
