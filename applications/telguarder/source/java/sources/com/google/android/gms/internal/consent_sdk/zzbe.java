package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbe.class */
public final class zzbe extends WebView {
    private final Handler zza;
    private final zzbj zzb;
    private boolean zzc = false;

    public zzbe(zzbh zzbhVar, Handler handler, zzbj zzbjVar) {
        super(zzbhVar);
        this.zza = handler;
        this.zzb = zzbjVar;
    }

    public static boolean zza(String str) {
        return str != null && str.startsWith("consent://");
    }

    public final void zza(String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(jSONObject2).length());
        sb.append(str);
        sb.append("(");
        sb.append(jSONObject2);
        sb.append(");");
        this.zza.post(new Runnable(this, sb.toString()) { // from class: com.google.android.gms.internal.consent_sdk.zzbd
            private final zzbe zza;
            private final String zzb;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zza = this;
                this.zzb = sb2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzch.zza(this.zza, this.zzb);
            }
        });
    }
}
