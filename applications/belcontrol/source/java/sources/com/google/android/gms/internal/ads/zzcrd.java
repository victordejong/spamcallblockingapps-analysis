package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.DialogInterface;
import com.google.android.gms.ads.internal.overlay.zzc;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrd.class */
public final /* synthetic */ class zzcrd implements DialogInterface.OnClickListener {
    private final String zzdjf;
    private final zzcqr zzgrw;
    private final zzckn zzgsc;
    private final Activity zzgsd;
    private final zzdrz zzgse;
    private final zzc zzgsf;

    public zzcrd(zzcqr zzcqrVar, String str, zzckn zzcknVar, Activity activity, zzdrz zzdrzVar, zzc zzcVar) {
        this.zzgrw = zzcqrVar;
        this.zzdjf = str;
        this.zzgsc = zzcknVar;
        this.zzgsd = activity;
        this.zzgse = zzdrzVar;
        this.zzgsf = zzcVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzcqr zzcqrVar = this.zzgrw;
        String str = this.zzdjf;
        zzckn zzcknVar = this.zzgsc;
        Activity activity = this.zzgsd;
        zzdrz zzdrzVar = this.zzgse;
        zzc zzcVar = this.zzgsf;
        zzcqrVar.zzgm(str);
        if (zzcknVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("dialog_action", "dismiss");
            zzcrb.zza(activity, zzcknVar, zzdrzVar, zzcqrVar, str, "dialog_click", hashMap);
        }
        if (zzcVar != null) {
            zzcVar.close();
        }
    }
}
