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
import androidx.core.app.C0745g;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.impl.C11679R;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bsc.class */
public final class bsc extends AbstractBinderC12857qo {

    /* renamed from: a */
    private final Context f44607a;

    /* renamed from: b */
    private final bli f44608b;

    /* renamed from: c */
    private final C13090zc f44609c;

    /* renamed from: d */
    private final brs f44610d;

    /* renamed from: e */
    private final cty f44611e;

    public bsc(Context context, brs brsVar, C13090zc c13090zc, bli bliVar, cty ctyVar) {
        this.f44607a = context;
        this.f44608b = bliVar;
        this.f44609c = c13090zc;
        this.f44610d = brsVar;
        this.f44611e = ctyVar;
    }

    /* renamed from: a */
    public static void m17624a(Activity activity, zze zzeVar, zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2) {
        zzr.zzkv();
        AlertDialog.Builder zzc = zzj.zzc(activity, zzr.zzkx().zzzy());
        Resources m13976c = zzr.zzkz().m13976c();
        zzc.setTitle(m13976c == null ? "Open ad when you're back online." : m13976c.getString(C11679R.C11680string.offline_opt_in_title)).setMessage(m13976c == null ? "We'll send you a notification with a link to the advertiser site." : m13976c.getString(C11679R.C11680string.offline_opt_in_message)).setPositiveButton(m13976c == null ? Payload.RESPONSE_OK : m13976c.getString(C11679R.C11680string.offline_opt_in_confirm), new DialogInterface.OnClickListener(bliVar, activity, ctyVar, brsVar, str, zzbgVar, str2, m13976c, zzeVar) { // from class: com.google.android.gms.internal.ads.bsb

            /* renamed from: a */
            private final bli f44598a;

            /* renamed from: b */
            private final Activity f44599b;

            /* renamed from: c */
            private final cty f44600c;

            /* renamed from: d */
            private final brs f44601d;

            /* renamed from: e */
            private final String f44602e;

            /* renamed from: f */
            private final zzbg f44603f;

            /* renamed from: g */
            private final String f44604g;

            /* renamed from: h */
            private final Resources f44605h;

            /* renamed from: i */
            private final zze f44606i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44598a = bliVar;
                this.f44599b = activity;
                this.f44600c = ctyVar;
                this.f44601d = brsVar;
                this.f44602e = str;
                this.f44603f = zzbgVar;
                this.f44604g = str2;
                this.f44605h = m13976c;
                this.f44606i = zzeVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                boolean z;
                bli bliVar2 = this.f44598a;
                Activity activity2 = this.f44599b;
                cty ctyVar2 = this.f44600c;
                brs brsVar2 = this.f44601d;
                String str3 = this.f44602e;
                zzbg zzbgVar2 = this.f44603f;
                String str4 = this.f44604g;
                Resources resources = this.f44605h;
                final zze zzeVar2 = this.f44606i;
                if (bliVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "confirm");
                    bsc.m17622a(activity2, bliVar2, ctyVar2, brsVar2, str3, "dialog_click", hashMap);
                }
                try {
                    z = zzbgVar2.zzd(BinderC12129d.m18979a(activity2), str4, str3);
                } catch (RemoteException e) {
                    zzd.zzc("Failed to schedule offline notification poster.", e);
                    z = false;
                }
                if (!z) {
                    brsVar2.m17626a(str3);
                    if (bliVar2 != null) {
                        bsc.m17623a(activity2, bliVar2, ctyVar2, brsVar2, str3, "offline_notification_worker_not_scheduled");
                    }
                }
                zzr.zzkv();
                AlertDialog.Builder zzc2 = zzj.zzc(activity2, zzr.zzkx().zzzy());
                zzc2.setMessage(resources == null ? "You'll get a notification with the link when you're back online" : resources.getString(C11679R.C11680string.offline_opt_in_confirmation)).setOnCancelListener(new DialogInterface.OnCancelListener(zzeVar2) { // from class: com.google.android.gms.internal.ads.bsg

                    /* renamed from: a */
                    private final zze f44627a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44627a = zzeVar2;
                    }

                    @Override // android.content.DialogInterface.OnCancelListener
                    public final void onCancel(DialogInterface dialogInterface2) {
                        zze zzeVar3 = this.f44627a;
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
        }).setNegativeButton(m13976c == null ? "No thanks" : m13976c.getString(C11679R.C11680string.offline_opt_in_decline), new DialogInterface.OnClickListener(brsVar, str, bliVar, activity, ctyVar, zzeVar) { // from class: com.google.android.gms.internal.ads.bse

            /* renamed from: a */
            private final brs f44618a;

            /* renamed from: b */
            private final String f44619b;

            /* renamed from: c */
            private final bli f44620c;

            /* renamed from: d */
            private final Activity f44621d;

            /* renamed from: e */
            private final cty f44622e;

            /* renamed from: f */
            private final zze f44623f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44618a = brsVar;
                this.f44619b = str;
                this.f44620c = bliVar;
                this.f44621d = activity;
                this.f44622e = ctyVar;
                this.f44623f = zzeVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                brs brsVar2 = this.f44618a;
                String str3 = this.f44619b;
                bli bliVar2 = this.f44620c;
                Activity activity2 = this.f44621d;
                cty ctyVar2 = this.f44622e;
                zze zzeVar2 = this.f44623f;
                brsVar2.m17626a(str3);
                if (bliVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    bsc.m17622a(activity2, bliVar2, ctyVar2, brsVar2, str3, "dialog_click", hashMap);
                }
                if (zzeVar2 != null) {
                    zzeVar2.close();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(brsVar, str, bliVar, activity, ctyVar, zzeVar) { // from class: com.google.android.gms.internal.ads.bsd

            /* renamed from: a */
            private final brs f44612a;

            /* renamed from: b */
            private final String f44613b;

            /* renamed from: c */
            private final bli f44614c;

            /* renamed from: d */
            private final Activity f44615d;

            /* renamed from: e */
            private final cty f44616e;

            /* renamed from: f */
            private final zze f44617f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44612a = brsVar;
                this.f44613b = str;
                this.f44614c = bliVar;
                this.f44615d = activity;
                this.f44616e = ctyVar;
                this.f44617f = zzeVar;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                brs brsVar2 = this.f44612a;
                String str3 = this.f44613b;
                bli bliVar2 = this.f44614c;
                Activity activity2 = this.f44615d;
                cty ctyVar2 = this.f44616e;
                zze zzeVar2 = this.f44617f;
                brsVar2.m17626a(str3);
                if (bliVar2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    bsc.m17622a(activity2, bliVar2, ctyVar2, brsVar2, str3, "dialog_click", hashMap);
                }
                if (zzeVar2 != null) {
                    zzeVar2.close();
                }
            }
        });
        zzc.create().show();
    }

    /* renamed from: a */
    public static void m17623a(Context context, bli bliVar, cty ctyVar, brs brsVar, String str, String str2) {
        m17622a(context, bliVar, ctyVar, brsVar, str, str2, new HashMap());
    }

    /* renamed from: a */
    public static void m17622a(Context context, bli bliVar, cty ctyVar, brs brsVar, String str, String str2, Map<String, String> map) {
        String str3;
        String str4 = "online";
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42933fe)).booleanValue()) {
            ctz m17225a = ctz.m17226a(str2).m17225a("gqi", str);
            zzr.zzkv();
            if (!zzj.zzbd(context)) {
                str4 = "offline";
            }
            ctz m17225a2 = m17225a.m17225a("device_connectivity", str4).m17225a("event_timestamp", String.valueOf(zzr.zzlc().mo19039a()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                m17225a2.m17225a(entry.getKey(), entry.getValue());
            }
            str3 = ctyVar.mo17214b(m17225a2);
        } else {
            blh m17765a = bliVar.m17765a();
            m17765a.m17767a("gqi", str);
            m17765a.m17767a("action", str2);
            zzr.zzkv();
            if (!zzj.zzbd(context)) {
                str4 = "offline";
            }
            m17765a.m17767a("device_connectivity", str4);
            m17765a.m17767a("event_timestamp", String.valueOf(zzr.zzlc().mo19039a()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                m17765a.m17767a(entry2.getKey(), entry2.getValue());
            }
            str3 = m17765a.m17766b();
        }
        brsVar.m17630a(new brz(zzr.zzlc().mo19039a(), str, str3, brp.f44573b));
    }

    /* renamed from: a */
    private final void m17621a(String str, String str2, Map<String, String> map) {
        m17622a(this.f44607a, this.f44608b, this.f44611e, this.f44610d, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12854ql
    /* renamed from: a */
    public final void mo14234a() {
        this.f44610d.m17628a(new css(this.f44609c) { // from class: com.google.android.gms.internal.ads.bru

            /* renamed from: a */
            private final C13090zc f44582a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44582a = c13090zc;
            }

            @Override // com.google.android.gms.internal.ads.css
            /* renamed from: a */
            public final Object mo17263a(Object obj) {
                return brs.m17634a((SQLiteDatabase) obj, this.f44582a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12854ql
    /* renamed from: a */
    public final void mo14233a(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzr.zzkv();
            boolean zzbd = zzj.zzbd(this.f44607a);
            int i = bsi.f44634b;
            HashMap hashMap = new HashMap();
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (zzbd) {
                    i = bsi.f44633a;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.f44607a;
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
            m17621a(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.f44610d.getWritableDatabase();
                if (i == bsi.f44633a) {
                    this.f44610d.m17633a(writableDatabase, this.f44609c, stringExtra2);
                } else {
                    brs.m17632a(writableDatabase, stringExtra2);
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

    @Override // com.google.android.gms.internal.ads.AbstractC12854ql
    /* renamed from: a */
    public final void mo14232a(AbstractC12126b abstractC12126b, String str, String str2) {
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        zzr.zzkv();
        zzj.zzbe(context);
        int i = C12110n.m19014h() ? 1140850688 : 1073741824;
        Intent intent = new Intent();
        intent.setClass(context, AdService.class);
        intent.setAction("offline_notification_clicked");
        intent.putExtra("offline_notification_action", "offline_notification_clicked");
        intent.putExtra("gws_query_id", str2);
        intent.putExtra("uri", str);
        PendingIntent m17079a = cxi.m17079a(context, intent, i);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent m17079a2 = cxi.m17079a(context, intent2, i);
        Resources m13976c = zzr.zzkz().m13976c();
        C0745g.C0751e m44577a = new C0745g.C0751e(context, "offline_notification_channel").m44571a(m13976c == null ? "View the ad you saved when you were offline" : m13976c.getString(C11679R.C11680string.offline_notification_title)).m44567b(m13976c == null ? "Tap to open ad" : m13976c.getString(C11679R.C11680string.offline_notification_text)).m44570a(true).m44577a(m17079a2);
        m44577a.f3335f = m17079a;
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, m44577a.m44581a(context.getApplicationInfo().icon).m44569b());
        m17621a(str2, "offline_notification_impression", new HashMap());
    }
}
