package com.android.mms.transaction;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Telephony;
import android.telephony.SmsManager;
import android.text.TextUtils;
import com.callerid.block.bean.EZBlackList;
import com.klinker.android.send_message.C2704b;
import e.d.a.a.a;
import java.io.File;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import p011c.p012a.p013a.C0614a;
/* renamed from: com.android.mms.transaction.c */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/c.class */
public class C0690c {

    /* renamed from: a */
    private static C0690c f3343a = new C0690c();

    /* renamed from: b */
    private static final ConcurrentHashMap<String, C0691a> f3344b = new ConcurrentHashMap<>();

    /* renamed from: com.android.mms.transaction.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/mms/transaction/c$a.class */
    private static class C0691a extends BroadcastReceiver {

        /* renamed from: a */
        private final String f3345a = "com.android.mms.transaction.DownloadManager$MmsDownloadReceiver." + UUID.randomUUID().toString();

        C0691a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            context.unregisterReceiver(this);
            ((PowerManager) context.getSystemService("power")).newWakeLock(1, "MMS DownloadReceiver").acquire(60000L);
            Intent intent2 = (Intent) intent.clone();
            intent2.setAction("com.klinker.android.messaging.MMS_RECEIVED");
            C2704b.m2107b(context, intent2, "com.klinker.android.messaging.MMS_RECEIVED");
        }
    }

    private C0690c() {
    }

    /* renamed from: b */
    public static void m11400b(String str) {
        if (str != null) {
            f3344b.remove(str);
        }
    }

    /* renamed from: c */
    public static C0690c m11399c() {
        return f3343a;
    }

    /* renamed from: d */
    private void m11398d(Context context, Uri uri) {
        context.grantUriPermission(context.getPackageName() + ".MmsFileProvider", uri, 2);
    }

    /* renamed from: e */
    private static boolean m11397e(Context context, String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return true;
        }
        Cursor e = C0614a.m11570e(context, context.getContentResolver(), Telephony.Mms.CONTENT_URI, new String[]{EZBlackList.f4115ID}, "ct_l = ?", new String[]{str}, null);
        if (e == null) {
            return false;
        }
        try {
            return e.getCount() > 0;
        } finally {
            e.close();
        }
    }

    /* renamed from: a */
    public void m11401a(Context context, String str, Uri uri, boolean z) {
        if (str != null) {
            ConcurrentHashMap<String, C0691a> concurrentHashMap = f3344b;
            if (concurrentHashMap.get(str) == null && m11397e(context, str)) {
                C0691a aVar = new C0691a();
                concurrentHashMap.put(str, aVar);
                context.getApplicationContext().registerReceiver(aVar, new IntentFilter(aVar.f3345a));
                a.k("DownloadManager", "receiving with system method");
                String str2 = "download." + String.valueOf(Math.abs(new Random().nextLong())) + ".dat";
                File file = new File(context.getCacheDir(), str2);
                Uri build = new Uri.Builder().authority(context.getPackageName() + ".MmsFileProvider").path(str2).scheme("content").build();
                Intent intent = new Intent(aVar.f3345a);
                intent.putExtra("file_path", file.getPath());
                intent.putExtra("location_url", str);
                intent.putExtra("trigger_push", z);
                intent.putExtra("notification_ind_uri", uri);
                PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 268435456);
                Bundle bundle = new Bundle();
                String b = e.a.b.a.b();
                if (!TextUtils.isEmpty(b)) {
                    bundle.putString("httpParams", b);
                }
                m11398d(context, build);
                SmsManager.getDefault().downloadMultimediaMessage(context, str, build, bundle, broadcast);
            }
        }
    }
}
