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
import androidx.core.app.g;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.n;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsc.class */
public final class bsc extends qo {

    /* renamed from: a  reason: collision with root package name */
    private final Context f24986a;

    /* renamed from: b  reason: collision with root package name */
    private final bli f24987b;

    /* renamed from: c  reason: collision with root package name */
    private final zc f24988c;

    /* renamed from: d  reason: collision with root package name */
    private final brs f24989d;
    private final cty e;

    public bsc(Context context, brs brsVar, zc zcVar, bli bliVar, cty ctyVar) {
        this.f24986a = context;
        this.f24987b = bliVar;
        this.f24988c = zcVar;
        this.f24989d = brsVar;
        this.e = ctyVar;
    }

    public static void a(final Activity activity, final zze zzeVar, final zzbg zzbgVar, final brs brsVar, final bli bliVar, final cty ctyVar, final String str, final String str2) {
        zzr.zzkv();
        AlertDialog.Builder zzc = zzj.zzc(activity, zzr.zzkx().zzzy());
        final Resources c2 = zzr.zzkz().c();
        zzc.setTitle(c2 == null ? "Open ad when you're back online." : c2.getString(R.string.offline_opt_in_title)).setMessage(c2 == null ? "We'll send you a notification with a link to the advertiser site." : c2.getString(R.string.offline_opt_in_message)).setPositiveButton(c2 == null ? Payload.RESPONSE_OK : c2.getString(R.string.offline_opt_in_confirm), new DialogInterface.OnClickListener(bliVar, activity, ctyVar, brsVar, str, zzbgVar, str2, c2, zzeVar) { // from class: com.google.android.gms.internal.ads.bsb

            /* renamed from: a  reason: collision with root package name */
            private final bli f24982a;

            /* renamed from: b  reason: collision with root package name */
            private final Activity f24983b;

            /* renamed from: c  reason: collision with root package name */
            private final cty f24984c;

            /* renamed from: d  reason: collision with root package name */
            private final brs f24985d;
            private final String e;
            private final zzbg f;
            private final String g;
            private final Resources h;
            private final zze i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24982a = bliVar;
                this.f24983b = activity;
                this.f24984c = ctyVar;
                this.f24985d = brsVar;
                this.e = str;
                this.f = zzbgVar;
                this.g = str2;
                this.h = c2;
                this.i = zzeVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                bli bliVar2 = this.f24982a;
                Activity activity2 = this.f24983b;
                cty ctyVar2 = this.f24984c;
                brs brsVar2 = this.f24985d;
                String str3 = this.e;
                zzbg zzbgVar2 = this.f;
                String str4 = this.g;
                Resources resources = this.h;
                final zze zzeVar2 = this.i;
                if (bliVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "confirm");
                    bsc.a(activity2, bliVar2, ctyVar2, brsVar2, str3, "dialog_click", hashMap);
                }
                boolean z = false;
                try {
                    z = zzbgVar2.zzd(d.a(activity2), str4, str3);
                } catch (RemoteException e) {
                    zzd.zzc("Failed to schedule offline notification poster.", e);
                }
                if (!z) {
                    brsVar2.a(str3);
                    if (bliVar2 != null) {
                        bsc.a(activity2, bliVar2, ctyVar2, brsVar2, str3, "offline_notification_worker_not_scheduled");
                    }
                }
                zzr.zzkv();
                AlertDialog.Builder zzc2 = zzj.zzc(activity2, zzr.zzkx().zzzy());
                zzc2.setMessage(resources == null ? "You'll get a notification with the link when you're back online" : resources.getString(R.string.offline_opt_in_confirmation)).setOnCancelListener(new DialogInterface.OnCancelListener(zzeVar2) { // from class: com.google.android.gms.internal.ads.bsg

                    /* renamed from: a  reason: collision with root package name */
                    private final zze f25001a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25001a = zzeVar2;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface2) {
                        zze zzeVar3 = this.f25001a;
                        if (zzeVar3 != null) {
                            zzeVar3.close();
                        }
                    }
                });
                AlertDialog create = zzc2.create();
                create.show();
                Timer timer = new Timer();
                timer.schedule(new bsf(create, timer, zzeVar2), 3000L);
            }
        }).setNegativeButton(c2 == null ? "No thanks" : c2.getString(R.string.offline_opt_in_decline), new DialogInterface.OnClickListener(brsVar, str, bliVar, activity, ctyVar, zzeVar) { // from class: com.google.android.gms.internal.ads.bse

            /* renamed from: a  reason: collision with root package name */
            private final brs f24994a;

            /* renamed from: b  reason: collision with root package name */
            private final String f24995b;

            /* renamed from: c  reason: collision with root package name */
            private final bli f24996c;

            /* renamed from: d  reason: collision with root package name */
            private final Activity f24997d;
            private final cty e;
            private final zze f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24994a = brsVar;
                this.f24995b = str;
                this.f24996c = bliVar;
                this.f24997d = activity;
                this.e = ctyVar;
                this.f = zzeVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                brs brsVar2 = this.f24994a;
                String str3 = this.f24995b;
                bli bliVar2 = this.f24996c;
                Activity activity2 = this.f24997d;
                cty ctyVar2 = this.e;
                zze zzeVar2 = this.f;
                brsVar2.a(str3);
                if (bliVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    bsc.a(activity2, bliVar2, ctyVar2, brsVar2, str3, "dialog_click", hashMap);
                }
                if (zzeVar2 != null) {
                    zzeVar2.close();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(brsVar, str, bliVar, activity, ctyVar, zzeVar) { // from class: com.google.android.gms.internal.ads.bsd

            /* renamed from: a  reason: collision with root package name */
            private final brs f24990a;

            /* renamed from: b  reason: collision with root package name */
            private final String f24991b;

            /* renamed from: c  reason: collision with root package name */
            private final bli f24992c;

            /* renamed from: d  reason: collision with root package name */
            private final Activity f24993d;
            private final cty e;
            private final zze f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24990a = brsVar;
                this.f24991b = str;
                this.f24992c = bliVar;
                this.f24993d = activity;
                this.e = ctyVar;
                this.f = zzeVar;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                brs brsVar2 = this.f24990a;
                String str3 = this.f24991b;
                bli bliVar2 = this.f24992c;
                Activity activity2 = this.f24993d;
                cty ctyVar2 = this.e;
                zze zzeVar2 = this.f;
                brsVar2.a(str3);
                if (bliVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    bsc.a(activity2, bliVar2, ctyVar2, brsVar2, str3, "dialog_click", hashMap);
                }
                if (zzeVar2 != null) {
                    zzeVar2.close();
                }
            }
        });
        zzc.create().show();
    }

    public static void a(Context context, bli bliVar, cty ctyVar, brs brsVar, String str, String str2) {
        a(context, bliVar, ctyVar, brsVar, str, str2, new HashMap());
    }

    public static void a(Context context, bli bliVar, cty ctyVar, brs brsVar, String str, String str2, Map<String, String> map) {
        String str3;
        String str4 = "online";
        if (((Boolean) ekb.e().a(aq.fe)).booleanValue()) {
            ctz a2 = ctz.a(str2).a("gqi", str);
            zzr.zzkv();
            if (!zzj.zzbd(context)) {
                str4 = "offline";
            }
            ctz a3 = a2.a("device_connectivity", str4).a("event_timestamp", String.valueOf(zzr.zzlc().a()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a3.a(entry.getKey(), entry.getValue());
            }
            str3 = ctyVar.b(a3);
        } else {
            blh a4 = bliVar.a();
            a4.a("gqi", str);
            a4.a("action", str2);
            zzr.zzkv();
            if (!zzj.zzbd(context)) {
                str4 = "offline";
            }
            a4.a("device_connectivity", str4);
            a4.a("event_timestamp", String.valueOf(zzr.zzlc().a()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                a4.a(entry2.getKey(), entry2.getValue());
            }
            str3 = a4.b();
        }
        brsVar.a(new brz(zzr.zzlc().a(), str, str3, brp.f24957b));
    }

    private final void a(String str, String str2, Map<String, String> map) {
        a(this.f24986a, this.f24987b, this.e, this.f24989d, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.ql
    public final void a() {
        brs brsVar = this.f24989d;
        final zc zcVar = this.f24988c;
        brsVar.a(new css(zcVar) { // from class: com.google.android.gms.internal.ads.bru

            /* renamed from: a  reason: collision with root package name */
            private final zc f24966a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24966a = zcVar;
            }

            @Override // com.google.android.gms.internal.ads.css
            public final Object a(Object obj) {
                return brs.a((SQLiteDatabase) obj, this.f24966a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ql
    public final void a(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzr.zzkv();
            boolean zzbd = zzj.zzbd(this.f24986a);
            int i = bsi.f25007b;
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (zzbd) {
                    i = bsi.f25006a;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.f24986a;
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
            a(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.f24989d.getWritableDatabase();
                if (i == bsi.f25006a) {
                    this.f24989d.a(writableDatabase, this.f24988c, stringExtra2);
                } else {
                    brs.a(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                String valueOf = String.valueOf(e2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 51);
                sb.append("Failed to get writable offline buffering database: ");
                sb.append(valueOf);
                zzd.zzex(sb.toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ql
    public final void a(b bVar, String str, String str2) {
        Context context = (Context) d.a(bVar);
        zzr.zzkv();
        zzj.zzbe(context);
        int i = n.h() ? 1140850688 : 1073741824;
        Intent intent = new Intent();
        intent.setClass(context, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str);
        PendingIntent a2 = cxi.a(context, intent, i);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent a3 = cxi.a(context, intent2, i);
        Resources c2 = zzr.zzkz().c();
        g.e a4 = new g.e(context, "offline_notification_channel").a(c2 == null ? "View the ad you saved when you were offline" : c2.getString(R.string.offline_notification_title)).b(c2 == null ? "Tap to open ad" : c2.getString(R.string.offline_notification_text)).a(true).a(a3);
        a4.f = a2;
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, a4.a(context.getApplicationInfo().icon).b());
        a(str2, "offline_notification_impression", new HashMap());
    }
}
