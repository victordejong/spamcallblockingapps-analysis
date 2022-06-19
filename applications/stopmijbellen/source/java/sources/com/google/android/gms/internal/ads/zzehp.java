package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationChannel;
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
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.C1666R;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;
import p026c0.C0805m;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehp.class */
public final class zzehp extends zzcbf {
    private final Context zza;
    private final zzdyz zzb;
    private final zzcje zzc;
    private final zzehh zzd;
    private final zzfio zze;

    public zzehp(Context context, zzehh zzehhVar, zzcje zzcjeVar, zzdyz zzdyzVar, zzfio zzfioVar) {
        this.zza = context;
        this.zzb = zzdyzVar;
        this.zzc = zzcjeVar;
        this.zzd = zzehhVar;
        this.zze = zzfioVar;
    }

    public static void zzc(Context context, zzdyz zzdyzVar, zzfio zzfioVar, zzehh zzehhVar, String str, String str2) {
        zzd(context, zzdyzVar, zzfioVar, zzehhVar, str, str2, new HashMap());
    }

    public static void zzd(Context context, zzdyz zzdyzVar, zzfio zzfioVar, zzehh zzehhVar, String str, String str2, Map<String, String> map) {
        String str3;
        String str4 = "offline";
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
            zzfin zzb = zzfin.zzb(str2);
            zzb.zza("gqi", str);
            zzt.zzp();
            if (true == com.google.android.gms.ads.internal.util.zzt.zzJ(context)) {
                str4 = "online";
            }
            zzb.zza("device_connectivity", str4);
            zzb.zza("event_timestamp", String.valueOf(zzt.zzA().currentTimeMillis()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                zzb.zza(entry.getKey(), entry.getValue());
            }
            str3 = zzfioVar.zza(zzb);
        } else {
            zzdyy zza = zzdyzVar.zza();
            zza.zzb("gqi", str);
            zza.zzb("action", str2);
            zzt.zzp();
            if (true == com.google.android.gms.ads.internal.util.zzt.zzJ(context)) {
                str4 = "online";
            }
            zza.zzb("device_connectivity", str4);
            zza.zzb("event_timestamp", String.valueOf(zzt.zzA().currentTimeMillis()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                zza.zzb(entry2.getKey(), entry2.getValue());
            }
            str3 = zza.zze();
        }
        zzehhVar.zzd(new zzehj(zzt.zzA().currentTimeMillis(), str, str3, 2));
    }

    public static void zzh(final Activity activity, final zzl zzlVar, final zzbv zzbvVar, final zzehh zzehhVar, final zzdyz zzdyzVar, final zzfio zzfioVar, final String str, final String str2) {
        zzt.zzp();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, zzt.zzq().zzk());
        final Resources zzd = zzt.zzo().zzd();
        builder.setTitle(zzd == null ? "Open ad when you're back online." : zzd.getString(C1666R.string.offline_opt_in_title)).setMessage(zzd == null ? "We'll send you a notification with a link to the advertiser site." : zzd.getString(C1666R.string.offline_opt_in_message)).setPositiveButton(zzd == null ? "OK" : zzd.getString(C1666R.string.offline_opt_in_confirm), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzehm
            @Override // android.content.DialogInterface.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.content.DialogInterface r9, int r10) {
                /*
                    Method dump skipped, instructions count: 252
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehm.onClick(android.content.DialogInterface, int):void");
            }
        }).setNegativeButton(zzd == null ? "No thanks" : zzd.getString(C1666R.string.offline_opt_in_decline), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzehn
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzehh zzehhVar2 = zzehh.this;
                String str3 = str;
                zzdyz zzdyzVar2 = zzdyzVar;
                Activity activity2 = activity;
                zzfio zzfioVar2 = zzfioVar;
                zzl zzlVar2 = zzlVar;
                zzehhVar2.zzc(str3);
                if (zzdyzVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzehp.zzd(activity2, zzdyzVar2, zzfioVar2, zzehhVar2, str3, "dialog_click", hashMap);
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzehl
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzehh zzehhVar2 = zzehh.this;
                String str3 = str;
                zzdyz zzdyzVar2 = zzdyzVar;
                Activity activity2 = activity;
                zzfio zzfioVar2 = zzfioVar;
                zzl zzlVar2 = zzlVar;
                zzehhVar2.zzc(str3);
                if (zzdyzVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    zzehp.zzd(activity2, zzdyzVar2, zzfioVar2, zzehhVar2, str3, "dialog_click", hashMap);
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        });
        builder.create().show();
    }

    private final void zzi(String str, String str2, Map<String, String> map) {
        zzd(this.zza, this.zzb, this.zze, this.zzd, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzt.zzp();
            boolean zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(this.zza);
            HashMap hashMap = new HashMap();
            boolean z = true;
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (true == zzJ) {
                    z = true;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.zza;
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
            zzi(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.zzd.getWritableDatabase();
                if (z) {
                    this.zzd.zzg(writableDatabase, this.zzc, stringExtra2);
                } else {
                    zzehh.zzi(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                zzciz.zzg("Failed to get writable offline buffering database: ".concat(e2.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzf() {
        zzehh zzehhVar = this.zzd;
        final zzcje zzcjeVar = this.zzc;
        zzehhVar.zze(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzeha
            @Override // com.google.android.gms.internal.ads.zzfhh
            public final Object zza(Object obj) {
                zzehh.zzj((SQLiteDatabase) obj, zzcje.this);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcbg
    public final void zzg(IObjectWrapper iObjectWrapper, String str, String str2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        zzt.zzp();
        if (PlatformVersion.isAtLeastO()) {
            NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", 2);
            notificationChannel.setShowBadge(false);
            ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
        }
        Intent intent = new Intent();
        intent.setClass(context, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str);
        int i = zzfpl.zza;
        PendingIntent zza = zzfpl.zza(context, 0, intent, i | 1073741824, 0);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent zza2 = zzfpl.zza(context, 0, intent2, i | 1073741824, 0);
        Resources zzd = zzt.zzo().zzd();
        C0805m c0805m = new C0805m(context, "offline_notification_channel");
        c0805m.m7356d(zzd == null ? "View the ad you saved when you were offline" : zzd.getString(C1666R.string.offline_notification_title));
        c0805m.m7357c(zzd == null ? "Tap to open ad" : zzd.getString(C1666R.string.offline_notification_text));
        c0805m.m7355e(16, true);
        c0805m.f2980q.deleteIntent = zza2;
        c0805m.f2970g = zza;
        c0805m.f2980q.icon = context.getApplicationInfo().icon;
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, c0805m.m7359a());
        zzi(str2, "offline_notification_impression", new HashMap());
    }
}
