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
import androidx.core.app.C0565h;
import com.google.android.gms.ads.AdService;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.overlay.BinderC5650l;
import com.google.android.gms.ads.internal.util.AbstractC5739u0;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.p264w.C5858a;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lw1.class */
public final class lw1 extends za0 {

    /* renamed from: d */
    private final Context f26298d;

    /* renamed from: e */
    private final rn1 f26299e;

    /* renamed from: f */
    private final ii0 f26300f;

    /* renamed from: g */
    private final dw1 f26301g;

    /* renamed from: h */
    private final jo2 f26302h;

    public lw1(Context context, dw1 dw1Var, ii0 ii0Var, rn1 rn1Var, jo2 jo2Var) {
        this.f26298d = context;
        this.f26299e = rn1Var;
        this.f26300f = ii0Var;
        this.f26301g = dw1Var;
        this.f26302h = jo2Var;
    }

    /* renamed from: F6 */
    public static void m13410F6(Activity activity, BinderC5650l binderC5650l, AbstractC5739u0 abstractC5739u0, dw1 dw1Var, rn1 rn1Var, jo2 jo2Var, String str, String str2) {
        C5667s.m18160d();
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, C5667s.m18158f().mo18014m());
        Resources m12236j = C5667s.m18156h().m12236j();
        builder.setTitle(m12236j == null ? "Open ad when you're back online." : m12236j.getString(C5858a.offline_opt_in_title)).setMessage(m12236j == null ? "We'll send you a notification with a link to the advertiser site." : m12236j.getString(C5858a.offline_opt_in_message)).setPositiveButton(m12236j == null ? "OK" : m12236j.getString(C5858a.offline_opt_in_confirm), new DialogInterface.OnClickListener(rn1Var, activity, jo2Var, dw1Var, str, abstractC5739u0, str2, m12236j, binderC5650l) { // from class: com.google.android.gms.internal.ads.gw1

            /* renamed from: d */
            private final rn1 f23719d;

            /* renamed from: e */
            private final Activity f23720e;

            /* renamed from: f */
            private final jo2 f23721f;

            /* renamed from: g */
            private final dw1 f23722g;

            /* renamed from: h */
            private final String f23723h;

            /* renamed from: i */
            private final AbstractC5739u0 f23724i;

            /* renamed from: j */
            private final String f23725j;

            /* renamed from: k */
            private final Resources f23726k;

            /* renamed from: l */
            private final BinderC5650l f23727l;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23719d = rn1Var;
                this.f23720e = activity;
                this.f23721f = jo2Var;
                this.f23722g = dw1Var;
                this.f23723h = str;
                this.f23724i = abstractC5739u0;
                this.f23725j = str2;
                this.f23726k = m12236j;
                this.f23727l = binderC5650l;
            }

            @Override // android.content.DialogInterface.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.content.DialogInterface r9, int r10) {
                /*
                    Method dump skipped, instructions count: 254
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.gw1.onClick(android.content.DialogInterface, int):void");
            }
        }).setNegativeButton(m12236j == null ? "No thanks" : m12236j.getString(C5858a.offline_opt_in_decline), new DialogInterface.OnClickListener(dw1Var, str, rn1Var, activity, jo2Var, binderC5650l) { // from class: com.google.android.gms.internal.ads.hw1

            /* renamed from: d */
            private final dw1 f24056d;

            /* renamed from: e */
            private final String f24057e;

            /* renamed from: f */
            private final rn1 f24058f;

            /* renamed from: g */
            private final Activity f24059g;

            /* renamed from: h */
            private final jo2 f24060h;

            /* renamed from: i */
            private final BinderC5650l f24061i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24056d = dw1Var;
                this.f24057e = str;
                this.f24058f = rn1Var;
                this.f24059g = activity;
                this.f24060h = jo2Var;
                this.f24061i = binderC5650l;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dw1 dw1Var2 = this.f24056d;
                String str3 = this.f24057e;
                rn1 rn1Var2 = this.f24058f;
                Activity activity2 = this.f24059g;
                jo2 jo2Var2 = this.f24060h;
                BinderC5650l binderC5650l2 = this.f24061i;
                dw1Var2.m15670g(str3);
                if (rn1Var2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    lw1.m13408H6(activity2, rn1Var2, jo2Var2, dw1Var2, str3, "dialog_click", hashMap);
                }
                if (binderC5650l2 != null) {
                    binderC5650l2.m18189b();
                }
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener(dw1Var, str, rn1Var, activity, jo2Var, binderC5650l) { // from class: com.google.android.gms.internal.ads.iw1

            /* renamed from: d */
            private final dw1 f24505d;

            /* renamed from: e */
            private final String f24506e;

            /* renamed from: f */
            private final rn1 f24507f;

            /* renamed from: g */
            private final Activity f24508g;

            /* renamed from: h */
            private final jo2 f24509h;

            /* renamed from: i */
            private final BinderC5650l f24510i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24505d = dw1Var;
                this.f24506e = str;
                this.f24507f = rn1Var;
                this.f24508g = activity;
                this.f24509h = jo2Var;
                this.f24510i = binderC5650l;
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                dw1 dw1Var2 = this.f24505d;
                String str3 = this.f24506e;
                rn1 rn1Var2 = this.f24507f;
                Activity activity2 = this.f24508g;
                jo2 jo2Var2 = this.f24509h;
                BinderC5650l binderC5650l2 = this.f24510i;
                dw1Var2.m15670g(str3);
                if (rn1Var2 != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("dialog_action", "dismiss");
                    lw1.m13408H6(activity2, rn1Var2, jo2Var2, dw1Var2, str3, "dialog_click", hashMap);
                }
                if (binderC5650l2 != null) {
                    binderC5650l2.m18189b();
                }
            }
        });
        builder.create().show();
    }

    /* renamed from: G6 */
    public static void m13409G6(Context context, rn1 rn1Var, jo2 jo2Var, dw1 dw1Var, String str, String str2) {
        m13408H6(context, rn1Var, jo2Var, dw1Var, str, str2, new HashMap());
    }

    /* renamed from: H6 */
    public static void m13408H6(Context context, rn1 rn1Var, jo2 jo2Var, dw1 dw1Var, String str, String str2, Map<String, String> map) {
        String str3;
        String str4 = "offline";
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25717i6)).booleanValue()) {
            io2 m14338a = io2.m14338a(str2);
            m14338a.m14336c("gqi", str);
            C5667s.m18160d();
            if (true == C5679c2.m18066i(context)) {
                str4 = "online";
            }
            m14338a.m14336c("device_connectivity", str4);
            m14338a.m14336c("event_timestamp", String.valueOf(C5667s.m18153k().mo16807a()));
            for (Map.Entry<String, String> entry : map.entrySet()) {
                m14338a.m14336c(entry.getKey(), entry.getValue());
            }
            str3 = jo2Var.mo9503a(m14338a);
        } else {
            qn1 m11371d = rn1Var.m11371d();
            m11371d.m11845d("gqi", str);
            m11371d.m11845d("action", str2);
            C5667s.m18160d();
            if (true == C5679c2.m18066i(context)) {
                str4 = "online";
            }
            m11371d.m11845d("device_connectivity", str4);
            m11371d.m11845d("event_timestamp", String.valueOf(C5667s.m18153k().mo16807a()));
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                m11371d.m11845d(entry2.getKey(), entry2.getValue());
            }
            str3 = m11371d.m11843f();
        }
        dw1Var.m15669k(new fw1(C5667s.m18153k().mo16807a(), str, str3, 2));
    }

    /* renamed from: I6 */
    private final void m13407I6(String str, String str2, Map<String, String> map) {
        m13408H6(this.f26298d, this.f26299e, this.f26302h, this.f26301g, str, str2, map);
    }

    @Override // com.google.android.gms.internal.ads.ab0
    /* renamed from: K0 */
    public final void mo8877K0(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            C5667s.m18160d();
            boolean m18066i = C5679c2.m18066i(this.f26298d);
            HashMap hashMap = new HashMap();
            boolean z = true;
            if (stringExtra.equals("offline_notification_clicked")) {
                hashMap.put("offline_notification_action", "offline_notification_clicked");
                if (true == m18066i) {
                    z = true;
                }
                hashMap.put("obvs", String.valueOf(Build.VERSION.SDK_INT));
                hashMap.put("olaih", String.valueOf(stringExtra3.startsWith("http")));
                try {
                    Context context = this.f26298d;
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
            m13407I6(stringExtra2, "offline_notification_action", hashMap);
            try {
                SQLiteDatabase writableDatabase = this.f26301g.getWritableDatabase();
                if (z) {
                    this.f26301g.m15672e(writableDatabase, this.f26300f, stringExtra2);
                } else {
                    dw1.m15665y(writableDatabase, stringExtra2);
                }
            } catch (SQLiteException e2) {
                ei0.m15467c("Failed to get writable offline buffering database: ".concat(e2.toString()));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ab0
    /* renamed from: O0 */
    public final void mo8876O0(AbstractC6253a abstractC6253a, String str, String str2) {
        Context context = (Context) BinderC6255b.m16745J0(abstractC6253a);
        C5667s.m18160d();
        if (C6237o.m16773k()) {
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
        int i = du2.f21868a;
        PendingIntent m15684a = du2.m15684a(context, 0, intent, i | 1073741824, 0);
        Intent intent2 = new Intent();
        intent2.setClass(context, AdService.class);
        intent2.setAction("offline_notification_dismissed");
        intent2.putExtra("offline_notification_action", "offline_notification_dismissed");
        intent2.putExtra("gws_query_id", str2);
        PendingIntent m15684a2 = du2.m15684a(context, 0, intent2, i | 1073741824, 0);
        Resources m12236j = C5667s.m18156h().m12236j();
        ((NotificationManager) context.getSystemService("notification")).notify(str2, 54321, new C0565h.C0574e(context, "offline_notification_channel").m33419k(m12236j == null ? "View the ad you saved when you were offline" : m12236j.getString(C5858a.offline_notification_title)).m33420j(m12236j == null ? "Tap to open ad" : m12236j.getString(C5858a.offline_notification_text)).m33424f(true).m33417m(m15684a2).m33421i(m15684a).m33408v(context.getApplicationInfo().icon).m33428b());
        m13407I6(str2, "offline_notification_impression", new HashMap());
    }

    @Override // com.google.android.gms.internal.ads.ab0
    public final void zzg() {
        this.f26301g.m15673a(new cn2(this.f26300f) { // from class: com.google.android.gms.internal.ads.xv1

            /* renamed from: a */
            private final ii0 f32312a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32312a = ii0Var;
            }

            @Override // com.google.android.gms.internal.ads.cn2
            /* renamed from: a */
            public final Object mo8162a(Object obj) {
                dw1.m15664z((SQLiteDatabase) obj, this.f32312a);
                return null;
            }
        });
    }
}
