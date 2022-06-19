package com.google.android.gms.internal.consent_sdk;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;
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

            /* JADX INFO: Access modifiers changed from: package-private */
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
                    Log.d("UserMessagingPlatform", "Error on action: empty action name");
                    return;
                }
                String lowerCase = str3.toLowerCase();
                if (TextUtils.isEmpty(str4)) {
                    jSONObject = new JSONObject();
                } else {
                    try {
                        jSONObject = new JSONObject(str4);
                    } catch (JSONException e) {
                        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 32 + String.valueOf(str4).length());
                        sb.append("Action[");
                        sb.append(lowerCase);
                        sb.append("]: failed to parse args: ");
                        sb.append(str4);
                        Log.d("UserMessagingPlatform", sb.toString());
                        return;
                    }
                }
                String valueOf = String.valueOf(jSONObject);
                StringBuilder sb2 = new StringBuilder(String.valueOf(lowerCase).length() + 10 + String.valueOf(valueOf).length());
                sb2.append("Action[");
                sb2.append(lowerCase);
                sb2.append("]: ");
                sb2.append(valueOf);
                Log.d("UserMessagingPlatform", sb2.toString());
                for (zzi zziVar : zziVarArr2) {
                    FutureTask futureTask = new FutureTask(new Callable(zziVar, lowerCase, jSONObject) { // from class: com.google.android.gms.internal.consent_sdk.zzf
                        private final zzi zza;
                        private final String zzb;
                        private final JSONObject zzc;

                        /* JADX INFO: Access modifiers changed from: package-private */
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
                        StringBuilder sb3 = new StringBuilder(String.valueOf(lowerCase).length() + 33);
                        sb3.append("Thread interrupted for Action[");
                        sb3.append(lowerCase);
                        sb3.append("]: ");
                        zzca.zza(sb3.toString(), e2);
                    } catch (ExecutionException e3) {
                        StringBuilder sb4 = new StringBuilder(String.valueOf(lowerCase).length() + 24);
                        sb4.append("Failed to run Action[");
                        sb4.append(lowerCase);
                        sb4.append("]: ");
                        zzca.zza(sb4.toString(), e3.getCause());
                    }
                    if (((Boolean) futureTask.get()).booleanValue()) {
                        return;
                    }
                }
            }
        });
    }
}
