package com.google.android.gms.internal.consent_sdk;

import android.os.Handler;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.C1676a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbg.class */
public final class zzbg extends WebView {
    private final Handler zza;
    private final zzbm zzb;
    private boolean zzc = false;

    public zzbg(zzbi zzbiVar, Handler handler, zzbm zzbmVar) {
        super(zzbiVar);
        this.zza = handler;
        this.zzb = zzbmVar;
    }

    public static /* synthetic */ boolean zzc(zzbg zzbgVar, String str) {
        return str != null && str.startsWith("consent://");
    }

    public final void zzb(String str, String str2) {
        final String m4788i = C1676a.m4788i(new StringBuilder(str.length() + 3 + String.valueOf(str2).length()), str, "(", str2, ");");
        this.zza.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbd
            @Override // java.lang.Runnable
            public final void run() {
                zzce.zza(zzbg.this, m4788i);
            }
        });
    }
}
