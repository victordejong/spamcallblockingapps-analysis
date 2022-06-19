package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.app.NotificationCompat;
import androidx.webkit.ProxyConfig;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.C1211R;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcrb.class */
public final class zzcrb extends zzare {
    private final Context context;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzazo zzdid;
    private final zzcqr zzdie;

    public zzcrb(Context context, zzcqr zzcqrVar, zzazo zzazoVar, zzckn zzcknVar, zzdrz zzdrzVar) {
        this.context = context;
        this.zzdib = zzcknVar;
        this.zzdid = zzazoVar;
        this.zzdie = zzcqrVar;
        this.zzdic = zzdrzVar;
    }

    public static void zza(Activity activity, zzc zzcVar, zzbg zzbgVar, zzcqr zzcqrVar, zzckn zzcknVar, zzdrz zzdrzVar, String str, String str2) {
        zzr.zzkr();
        AlertDialog.Builder zzc = zzj.zzc(activity, zzr.zzkt().zzzf());
        Resources resources = zzr.zzkv().getResources();
        zzc.setTitle(resources == null ? "Open ad when you're back online." : resources.getString(C1211R.string.offline_opt_in_title)).setMessage(resources == null ? "We'll send you a notification with a link to the advertiser site." : resources.getString(C1211R.string.offline_opt_in_message)).setPositiveButton(resources == null ? "OK" : resources.getString(C1211R.string.offline_opt_in_confirm), new DialogInterface.OnClickListener(zzcknVar, activity, zzdrzVar, zzcqrVar, str, zzbgVar, str2, resources, zzcVar) { // from class: com.google.android.gms.internal.ads.zzcre
            private final Activity zzeey;
            private final String zzesf;
            private final zzckn zzgsg;
            private final zzdrz zzgsh;
            private final zzcqr zzgsi;
            private final zzbg zzgsj;
            private final String zzgsk;
            private final Resources zzgsl;
            private final zzc zzgsm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
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
                zzckn zzcknVar2 = this.zzgsg;
                Activity activity2 = this.zzeey;
                zzdrz zzdrzVar2 = this.zzgsh;
                zzcqr zzcqrVar2 = this.zzgsi;
                String str3 = this.zzesf;
                zzbg zzbgVar2 = this.zzgsj;
                String str4 = this.zzgsk;
                Resources resources2 = this.zzgsl;
                final zzc zzcVar2 = this.zzgsm;
                if (zzcknVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "confirm");
                    zzcrb.zza(activity2, zzcknVar2, zzdrzVar2, zzcqrVar2, str3, "dialog_click", hashMap);
                }
                boolean z = false;
                try {
                    z = zzbgVar2.zzd(ObjectWrapper.wrap(activity2), str4, str3);
                } catch (RemoteException e) {
                    zzd.zzc("Failed to schedule offline notification poster.", e);
                }
                if (!z) {
                    zzcqrVar2.zzgm(str3);
                    if (zzcknVar2 != null) {
                        zzcrb.zza(activity2, zzcknVar2, zzdrzVar2, zzcqrVar2, str3, "offline_notification_worker_not_scheduled");
                    }
                }
                zzr.zzkr();
                AlertDialog.Builder zzc2 = zzj.zzc(activity2, zzr.zzkt().zzzf());
                zzc2.setMessage(resources2 == null ? "You'll get a notification with the link when you're back online" : resources2.getString(C1211R.string.offline_opt_in_confirmation)).setOnCancelListener(new DialogInterface.OnCancelListener(zzcVar2) { // from class: com.google.android.gms.internal.ads.zzcrf
                    private final zzc zzdsh;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzdsh = zzcVar2;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface2) {
                        zzc zzcVar3 = this.zzdsh;
                        if (zzcVar3 != null) {
                            zzcVar3.close();
                        }
                    }
                });
                AlertDialog create = zzc2.create();
                create.show();
                Timer timer = new Timer();
                timer.schedule(new zzcri(create, timer, zzcVar2), 3000L);
            }
        }).setNegativeButton(resources == null ? "No thanks" : resources.getString(C1211R.string.offline_opt_in_decline), new DialogInterface.OnClickListener(zzcqrVar, str, zzcknVar, activity, zzdrzVar, zzcVar) { // from class: com.google.android.gms.internal.ads.zzcrd
            private final String zzdjf;
            private final zzcqr zzgrw;
            private final zzckn zzgsc;
            private final Activity zzgsd;
            private final zzdrz zzgse;
            private final zzc zzgsf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgrw = zzcqrVar;
                this.zzdjf = str;
                this.zzgsc = zzcknVar;
                this.zzgsd = activity;
                this.zzgse = zzdrzVar;
                this.zzgsf = zzcVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzcqr zzcqrVar2 = this.zzgrw;
                String str3 = this.zzdjf;
                zzckn zzcknVar2 = this.zzgsc;
                Activity activity2 = this.zzgsd;
                zzdrz zzdrzVar2 = this.zzgse;
                zzc zzcVar2 = this.zzgsf;
                zzcqrVar2.zzgm(str3);
                if (zzcknVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzcrb.zza(activity2, zzcknVar2, zzdrzVar2, zzcqrVar2, str3, "dialog_click", hashMap);
                }
                if (zzcVar2 != null) {
                    zzcVar2.close();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(zzcqrVar, str, zzcknVar, activity, zzdrzVar, zzcVar) { // from class: com.google.android.gms.internal.ads.zzcrg
            private final String zzdjf;
            private final zzcqr zzgrw;
            private final zzckn zzgsc;
            private final Activity zzgsd;
            private final zzdrz zzgse;
            private final zzc zzgsf;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgrw = zzcqrVar;
                this.zzdjf = str;
                this.zzgsc = zzcknVar;
                this.zzgsd = activity;
                this.zzgse = zzdrzVar;
                this.zzgsf = zzcVar;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzcqr zzcqrVar2 = this.zzgrw;
                String str3 = this.zzdjf;
                zzckn zzcknVar2 = this.zzgsc;
                Activity activity2 = this.zzgsd;
                zzdrz zzdrzVar2 = this.zzgse;
                zzc zzcVar2 = this.zzgsf;
                zzcqrVar2.zzgm(str3);
                if (zzcknVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzcrb.zza(activity2, zzcknVar2, zzdrzVar2, zzcqrVar2, str3, "dialog_click", hashMap);
                }
                if (zzcVar2 != null) {
                    zzcVar2.close();
                }
            }
        });
        zzc.create().show();
    }

    public static void zza(Context context, zzckn zzcknVar, zzdrz zzdrzVar, zzcqr zzcqrVar, String str, String str2) {
        zza(context, zzcknVar, zzdrzVar, zzcqrVar, str, str2, new HashMap());
    }

    public static void zza(Context context, zzckn zzcknVar, zzdrz zzdrzVar, zzcqr zzcqrVar, String str, String str2, Map<String, String> map) {
        String str3;
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue();
        String str4 = CustomTabsCallback.ONLINE_EXTRAS_KEY;
        if (booleanValue) {
            zzdsa zzu = zzdsa.zzgx(str2).zzu("gqi", str);
            zzr.zzkr();
            if (!zzj.zzba(context)) {
                str4 = "offline";
            }
            zzdsa zzu2 = zzu.zzu("device_connectivity", str4).zzu("event_timestamp", String.valueOf(zzr.zzky().currentTimeMillis()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                zzu2.zzu(entry.getKey(), entry.getValue());
            }
            str3 = zzdrzVar.zzc(zzu2);
        } else {
            zzckq zzaqr = zzcknVar.zzaqr();
            zzaqr.zzr("gqi", str);
            zzaqr.zzr("action", str2);
            zzr.zzkr();
            if (!zzj.zzba(context)) {
                str4 = "offline";
            }
            zzaqr.zzr("device_connectivity", str4);
            zzaqr.zzr("event_timestamp", String.valueOf(zzr.zzky().currentTimeMillis()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                zzaqr.zzr(entry2.getKey(), entry2.getValue());
            }
            str3 = zzaqr.zzaqu();
        }
        zzcqrVar.zza(new zzcrc(zzr.zzky().currentTimeMillis(), str, str3, zzcqs.zzgru));
    }

    private final void zza(String str, String str2, Map<String, String> map) {
        zza(this.context, this.zzdib, this.zzdic, this.zzdie, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra(ShareConstants.MEDIA_URI);
            zzr.zzkr();
            boolean zzba = zzj.zzba(this.context);
            int i = zzcrh.zzgso;
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (zzba) {
                    i = zzcrh.zzgsn;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith(ProxyConfig.MATCH_HTTP)));
                try {
                    Context context = this.context;
                    Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                    Intent intent2 = launchIntentForPackage;
                    if (launchIntentForPackage == null) {
                        intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(Uri.parse(stringExtra3));
                    }
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                    hashMap.put("olaa", "olas");
                } catch (ActivityNotFoundException e) {
                    hashMap.put("olaa", "olaf");
                }
            } else {
                hashMap.put("offline_notification_action", "offline_notification_dismissed");
            }
            zza(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.zzdie.getWritableDatabase();
                if (i == zzcrh.zzgsn) {
                    this.zzdie.zza(writableDatabase, this.zzdid, stringExtra2);
                } else {
                    zzcqr.zza(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 51);
                sb.append("Failed to get writable offline buffering database: ");
                sb.append(valueOf);
                zzd.zzev(sb.toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(IObjectWrapper iObjectWrapper, String str, String str2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        int i = PlatformVersion.isAtLeastM() ? 1140850688 : 1073741824;
        Intent intent = new Intent();
        intent.setClass(context, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra(ShareConstants.MEDIA_URI, str);
        PendingIntent service = zzdvn.getService(context, 0, intent, i);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent service2 = zzdvn.getService(context, 0, intent2, i);
        Resources resources = zzr.zzkv().getResources();
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, new NotificationCompat.Builder(context, "offline_notification_channel").setContentTitle(resources == null ? "View the ad you saved when you were offline" : resources.getString(C1211R.string.offline_notification_title)).setContentText(resources == null ? "Tap to open ad" : resources.getString(C1211R.string.offline_notification_text)).setAutoCancel(true).setDeleteIntent(service2).setContentIntent(service).setSmallIcon(context.getApplicationInfo().icon).build());
        zza(str2, "offline_notification_impression", new HashMap());
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzvt() {
        this.zzdie.zza(this.zzdid);
    }
}
