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
import com.google.android.gms.ads.impl.C2037R;
import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.util.zzbu;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.network.constant.Protocols;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedy.class */
public final class zzedy extends zzbzd {
    private final Context zza;
    private final zzdvi zzb;
    private final zzcgy zzc;
    private final zzedq zzd;
    private final zzffc zze;

    public zzedy(Context context, zzedq zzedqVar, zzcgy zzcgyVar, zzdvi zzdviVar, zzffc zzffcVar) {
        this.zza = context;
        this.zzb = zzdviVar;
        this.zzc = zzcgyVar;
        this.zzd = zzedqVar;
        this.zze = zzffcVar;
    }

    public static void zzc(Activity activity, zzl zzlVar, zzbu zzbuVar, zzedq zzedqVar, zzdvi zzdviVar, zzffc zzffcVar, String str, String str2) {
        zzt.zzc();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, zzt.zze().zzm());
        Resources zzj = zzt.zzg().zzj();
        builder.setTitle(zzj == null ? "Open ad when you're back online." : zzj.getString(C2037R.string.offline_opt_in_title)).setMessage(zzj == null ? "We'll send you a notification with a link to the advertiser site." : zzj.getString(C2037R.string.offline_opt_in_message)).setPositiveButton(zzj == null ? "OK" : zzj.getString(C2037R.string.offline_opt_in_confirm), new DialogInterface.OnClickListener(zzdviVar, activity, zzffcVar, zzedqVar, str, zzbuVar, str2, zzj, zzlVar) { // from class: com.google.android.gms.internal.ads.zzedt
            private final zzdvi zza;
            private final Activity zzb;
            private final zzffc zzc;
            private final zzedq zzd;
            private final String zze;
            private final zzbu zzf;
            private final String zzg;
            private final Resources zzh;
            private final zzl zzi;

            {
                this.zza = zzdviVar;
                this.zzb = activity;
                this.zzc = zzffcVar;
                this.zzd = zzedqVar;
                this.zze = str;
                this.zzf = zzbuVar;
                this.zzg = str2;
                this.zzh = zzj;
                this.zzi = zzlVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.content.DialogInterface r10, int r11) {
                /*
                    Method dump skipped, instructions count: 247
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzedt.onClick(android.content.DialogInterface, int):void");
            }
        }).setNegativeButton(zzj == null ? "No thanks" : zzj.getString(C2037R.string.offline_opt_in_decline), new DialogInterface.OnClickListener(zzedqVar, str, zzdviVar, activity, zzffcVar, zzlVar) { // from class: com.google.android.gms.internal.ads.zzedu
            private final zzedq zza;
            private final String zzb;
            private final zzdvi zzc;
            private final Activity zzd;
            private final zzffc zze;
            private final zzl zzf;

            {
                this.zza = zzedqVar;
                this.zzb = str;
                this.zzc = zzdviVar;
                this.zzd = activity;
                this.zze = zzffcVar;
                this.zzf = zzlVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                zzedq zzedqVar2 = this.zza;
                String str3 = this.zzb;
                zzdvi zzdviVar2 = this.zzc;
                Activity activity2 = this.zzd;
                zzffc zzffcVar2 = this.zze;
                zzl zzlVar2 = this.zzf;
                zzedqVar2.zzd(str3);
                if (zzdviVar2 != null) {
                    zzedy.zzh(activity2, zzdviVar2, zzffcVar2, zzedqVar2, str3, "dialog_click", C22128a.m8667T("dialog_action", "dismiss"));
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(zzedqVar, str, zzdviVar, activity, zzffcVar, zzlVar) { // from class: com.google.android.gms.internal.ads.zzedv
            private final zzedq zza;
            private final String zzb;
            private final zzdvi zzc;
            private final Activity zzd;
            private final zzffc zze;
            private final zzl zzf;

            {
                this.zza = zzedqVar;
                this.zzb = str;
                this.zzc = zzdviVar;
                this.zzd = activity;
                this.zze = zzffcVar;
                this.zzf = zzlVar;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                zzedq zzedqVar2 = this.zza;
                String str3 = this.zzb;
                zzdvi zzdviVar2 = this.zzc;
                Activity activity2 = this.zzd;
                zzffc zzffcVar2 = this.zze;
                zzl zzlVar2 = this.zzf;
                zzedqVar2.zzd(str3);
                if (zzdviVar2 != null) {
                    zzedy.zzh(activity2, zzdviVar2, zzffcVar2, zzedqVar2, str3, "dialog_click", C22128a.m8667T("dialog_action", "dismiss"));
                }
                if (zzlVar2 != null) {
                    zzlVar2.zzb();
                }
            }
        });
        builder.create().show();
    }

    public static void zzd(Context context, zzdvi zzdviVar, zzffc zzffcVar, zzedq zzedqVar, String str, String str2) {
        zzh(context, zzdviVar, zzffcVar, zzedqVar, str, str2, new HashMap());
    }

    public static void zzh(Context context, zzdvi zzdviVar, zzffc zzffcVar, zzedq zzedqVar, String str, String str2, Map<String, String> map) {
        String str3;
        String str4 = "offline";
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
            zzffb zza = zzffb.zza(str2);
            zza.zzc("gqi", str);
            zzt.zzc();
            if (true == zzs.zzI(context)) {
                str4 = "online";
            }
            zza.zzc("device_connectivity", str4);
            zza.zzc("event_timestamp", String.valueOf(zzt.zzj().mo38787c()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                zza.zzc(entry.getKey(), entry.getValue());
            }
            str3 = zzffcVar.zzb(zza);
        } else {
            zzdvh zzd = zzdviVar.zzd();
            zzd.zzd("gqi", str);
            zzd.zzd("action", str2);
            zzt.zzc();
            if (true == zzs.zzI(context)) {
                str4 = "online";
            }
            zzd.zzd("device_connectivity", str4);
            zzd.zzd("event_timestamp", String.valueOf(zzt.zzj().mo38787c()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                zzd.zzd(entry2.getKey(), entry2.getValue());
            }
            str3 = zzd.zzf();
        }
        zzedqVar.zze(new zzeds(zzt.zzj().mo38787c(), str, str3, 2));
    }

    private final void zzi(String str, String str2, Map<String, String> map) {
        zzh(this.zza, this.zzb, this.zze, this.zzd, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zze(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzt.zzc();
            boolean zzI = zzs.zzI(this.zza);
            HashMap hashMap = new HashMap();
            boolean z = true;
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (true == zzI) {
                    z = true;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith(Protocols.HTTP)));
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
                    this.zzd.zzb(writableDatabase, this.zzc, stringExtra2);
                } else {
                    zzedq.zzi(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                zzcgt.zzf("Failed to get writable offline buffering database: ".concat(e2.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zzf(IObjectWrapper iObjectWrapper, String str, String str2) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        zzt.zzc();
        if (PlatformVersion.m38776a()) {
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
        int i = zzfld.zza;
        PendingIntent zza = zzfld.zza(context, 0, intent, i | 1073741824, 0);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent zza2 = zzfld.zza(context, 0, intent2, i | 1073741824, 0);
        Resources zzj = zzt.zzg().zzj();
        C26450q c26450q = new C26450q(context, "offline_notification_channel");
        c26450q.m1855n(zzj == null ? "View the ad you saved when you were offline" : zzj.getString(C2037R.string.offline_notification_title));
        c26450q.m1856m(zzj == null ? "Tap to open ad" : zzj.getString(C2037R.string.offline_notification_text));
        c26450q.m1853p(16, true);
        c26450q.f74137R.deleteIntent = zza2;
        c26450q.f74147g = zza;
        c26450q.f74137R.icon = context.getApplicationInfo().icon;
        ((NotificationManager) context.getSystemService(RemoteMessageConst.NOTIFICATION)).notify(str2, 54321, c26450q.m1865d());
        zzi(str2, "offline_notification_impression", new HashMap());
    }

    @Override // com.google.android.gms.internal.ads.zzbze
    public final void zzg() {
        this.zzd.zza(new zzfdw(this.zzc) { // from class: com.google.android.gms.internal.ads.zzedk
            private final zzcgy zza;

            {
                this.zza = zzcgyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfdw
            public final Object zza(Object obj) {
                zzedq.zzj((SQLiteDatabase) obj, this.zza);
                return null;
            }
        });
    }
}
