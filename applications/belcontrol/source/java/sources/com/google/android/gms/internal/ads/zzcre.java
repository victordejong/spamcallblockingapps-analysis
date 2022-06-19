package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.RemoteException;
import com.google.android.gms.ads.impl.C0598R;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Timer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcre.class */
public final /* synthetic */ class zzcre implements DialogInterface.OnClickListener {
    private final Activity zzeey;
    private final String zzesf;
    private final zzckn zzgsg;
    private final zzdrz zzgsh;
    private final zzcqr zzgsi;
    private final zzbg zzgsj;
    private final String zzgsk;
    private final Resources zzgsl;
    private final zzc zzgsm;

    public zzcre(zzckn zzcknVar, Activity activity, zzdrz zzdrzVar, zzcqr zzcqrVar, String str, zzbg zzbgVar, String str2, Resources resources, zzc zzcVar) {
        this.zzgsg = zzcknVar;
        this.zzeey = activity;
        this.zzgsh = zzdrzVar;
        this.zzgsi = zzcqrVar;
        this.zzesf = str;
        this.zzgsj = zzbgVar;
        this.zzgsk = str2;
        this.zzgsl = resources;
        this.zzgsm = zzcVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzckn zzcknVar = this.zzgsg;
        Activity activity = this.zzeey;
        zzdrz zzdrzVar = this.zzgsh;
        zzcqr zzcqrVar = this.zzgsi;
        String str = this.zzesf;
        zzbg zzbgVar = this.zzgsj;
        String str2 = this.zzgsk;
        Resources resources = this.zzgsl;
        zzc zzcVar = this.zzgsm;
        if (zzcknVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("dialog_action", "confirm");
            zzcrb.zza(activity, zzcknVar, zzdrzVar, zzcqrVar, str, "dialog_click", hashMap);
        }
        boolean z = false;
        try {
            z = zzbgVar.zzd(ObjectWrapper.wrap(activity), str2, str);
        } catch (RemoteException e) {
            zzazk.zzc("Failed to schedule offline notification poster.", e);
        }
        if (!z) {
            zzcqrVar.zzgm(str);
            if (zzcknVar != null) {
                zzcrb.zza(activity, zzcknVar, zzdrzVar, zzcqrVar, str, "offline_notification_worker_not_scheduled");
            }
        }
        zzr.zzkr();
        AlertDialog.Builder zzc = zzj.zzc(activity, zzr.zzkt().zzzf());
        zzc.setMessage(resources == null ? "You'll get a notification with the link when you're back online" : resources.getString(C0598R.string.offline_opt_in_confirmation)).setOnCancelListener(new DialogInterface.OnCancelListener(zzcVar) { // from class: com.google.android.gms.internal.ads.zzcrf
            private final zzc zzdsh;

            {
                this.zzdsh = zzcVar;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface2) {
                zzc zzcVar2 = this.zzdsh;
                if (zzcVar2 != null) {
                    zzcVar2.close();
                }
            }
        });
        AlertDialog create = zzc.create();
        create.show();
        Timer timer = new Timer();
        timer.schedule(new zzcri(create, timer, zzcVar), 3000L);
    }
}
