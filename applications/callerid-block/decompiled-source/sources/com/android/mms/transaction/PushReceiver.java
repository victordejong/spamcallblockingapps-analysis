package com.android.mms.transaction;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.Telephony;
import com.callerid.block.bean.EZBlackList;
import com.google.android.mms.MmsException;
import com.google.android.mms.c.d;
import com.google.android.mms.c.f;
import com.google.android.mms.c.h;
import com.google.android.mms.c.n;
import com.google.android.mms.c.p;
import com.google.android.mms.c.r;
import com.klinker.android.send_message.C2704b;
import com.klinker.android.send_message.C2709f;
import com.klinker.android.send_message.C2712i;
import com.klinker.android.send_message.C2717j;
import e.a.b.e.b;
import e.a.b.e.g;
import e.a.b.e.i;
import e.d.a.a.a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p011c.p012a.p013a.C0614a;
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/PushReceiver.class */
public class PushReceiver extends BroadcastReceiver {

    /* renamed from: a */
    static final String[] f3334a = {"ct_l", "locked"};

    /* renamed from: b */
    private static Set<String> f3335b = new HashSet();

    /* renamed from: c */
    private static final ExecutorService f3336c = Executors.newSingleThreadExecutor();

    /* renamed from: com.android.mms.transaction.PushReceiver$a */
    /* loaded from: classes-dex2jar.jar:com/android/mms/transaction/PushReceiver$a.class */
    private class AsyncTaskC0688a extends AsyncTask<Intent, Void, Void> {

        /* renamed from: a */
        private Context f3337a;

        /* renamed from: b */
        private BroadcastReceiver.PendingResult f3338b;

        AsyncTaskC0688a(PushReceiver pushReceiver, Context context, BroadcastReceiver.PendingResult pendingResult) {
            this.f3337a = context;
            this.f3338b = pendingResult;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Intent... intentArr) {
            String str;
            RuntimeException e;
            boolean z;
            boolean z2;
            a.k("Mms", "receiving a new mms message");
            boolean z3 = false;
            h h = new n(intentArr[0].getByteArrayExtra("data")).h();
            if (h == null) {
                a.b("Mms", "Invalid PUSH data");
                return null;
            }
            p h2 = p.h(this.f3337a);
            ContentResolver contentResolver = this.f3337a.getContentResolver();
            int a = h.a();
            try {
            } catch (RuntimeException e2) {
                e = e2;
                str = "Unexpected RuntimeException.";
                a.c("Mms", str, e);
                a.k("Mms", "PUSH Intent processed.");
                return null;
            } catch (MmsException e3) {
                e = e3;
                str = "Failed to save the data from PUSH: type=" + a;
                a.c("Mms", str, e);
                a.k("Mms", "PUSH Intent processed.");
                return null;
            }
            if (a != 130) {
                if (a == 134 || a == 136) {
                    long d = PushReceiver.m11411d(this.f3337a, h, a);
                    if (d != -1) {
                        try {
                            z2 = C2712i.f11313h.m2082c();
                        } catch (Exception e4) {
                            z2 = PreferenceManager.getDefaultSharedPreferences(this.f3337a).getBoolean("group_message", true);
                        }
                        Uri o = h2.o(h, Uri.parse("content://mms/inbox"), true, z2, (HashMap) null);
                        ContentValues contentValues = new ContentValues(1);
                        contentValues.put("thread_id", Long.valueOf(d));
                        C0614a.m11569f(this.f3337a, contentResolver, o, contentValues, null, null);
                    }
                } else {
                    a.b("Mms", "Received unrecognized PDU.");
                }
                a.k("Mms", "PUSH Intent processed.");
                return null;
            }
            h hVar = h;
            if (e.a.b.a.h()) {
                byte[] f = hVar.f();
                if (61 == f[f.length - 1]) {
                    byte[] i = hVar.i();
                    byte[] bArr = new byte[f.length + i.length];
                    System.arraycopy(f, 0, bArr, 0, f.length);
                    System.arraycopy(i, 0, bArr, f.length, i.length);
                    hVar.j(bArr);
                }
            }
            if (!PushReceiver.m11409f(this.f3337a, hVar)) {
                try {
                    z = C2712i.f11313h.m2082c();
                } catch (Exception e5) {
                    z = PreferenceManager.getDefaultSharedPreferences(this.f3337a).getBoolean("group_message", true);
                }
                Uri o2 = h2.o(h, Telephony.Mms.Inbox.CONTENT_URI, !f.q(this.f3337a), z, (HashMap) null);
                String e6 = PushReceiver.m11410e(this.f3337a, o2);
                if (PushReceiver.f3335b.contains(e6)) {
                    a.k("Mms", "already added this download, don't download again");
                    return null;
                }
                PushReceiver.f3335b.add(e6);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 21) {
                    a.k("Mms", "receiving on a lollipop+ device");
                    C2709f fVar = C2712i.f11313h;
                    if (fVar != null ? fVar.m2069p() : PreferenceManager.getDefaultSharedPreferences(this.f3337a).getBoolean("system_mms_sending", true)) {
                        C0690c.m11399c().m11401a(this.f3337a, e6, o2, true);
                    } else {
                        a.k("Mms", "receiving with lollipop method");
                        new b(new i(this.f3337a), C2717j.m2031g(), e6, o2, (PendingIntent) null, (String) null, (Bundle) null, this.f3337a).c(this.f3337a, new g(this.f3337a, C2717j.m2031g()));
                    }
                } else if (f.q(this.f3337a)) {
                    Intent intent = new Intent(this.f3337a, TransactionService.class);
                    intent.putExtra("uri", o2.toString());
                    intent.putExtra("type", 0);
                    if (i2 >= 21) {
                        z3 = true;
                    }
                    intent.putExtra("receive_with_new_method", z3);
                    this.f3337a.startService(intent);
                } else {
                    Intent intent2 = new Intent("com.klinker.android.messaging.NEW_MMS_DOWNLOADED");
                    intent2.putExtra("receive_through_stock", true);
                    C2704b.m2107b(this.f3337a, intent2, "com.klinker.android.messaging.NEW_MMS_DOWNLOADED");
                }
            } else {
                a.k("Mms", "Skip downloading duplicate message: " + new String(hVar.f()));
            }
            a.k("Mms", "PUSH Intent processed.");
            return null;
        }

        /* renamed from: b */
        public void onPostExecute(Void r3) {
            this.f3338b.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static long m11411d(Context context, f fVar, int i) {
        String str = i == 134 ? new String(((d) fVar).f()) : new String(((r) fVar).f());
        StringBuilder sb = new StringBuilder(40);
        sb.append("m_id");
        sb.append('=');
        sb.append(DatabaseUtils.sqlEscapeString(str));
        sb.append(" AND ");
        sb.append("m_type");
        sb.append('=');
        sb.append(128);
        Cursor e = C0614a.m11570e(context, context.getContentResolver(), Telephony.Mms.CONTENT_URI, new String[]{"thread_id"}, sb.toString(), null, null);
        if (e == null) {
            return -1L;
        }
        try {
            if (e.getCount() != 1 || !e.moveToFirst()) {
                return -1L;
            }
            long j = e.getLong(0);
            e.close();
            return j;
        } finally {
            e.close();
        }
    }

    /* renamed from: e */
    public static String m11410e(Context context, Uri uri) {
        Cursor e = C0614a.m11570e(context, context.getContentResolver(), uri, f3334a, null, null, null);
        if (e != null) {
            try {
                if (e.getCount() == 1 && e.moveToFirst()) {
                    String string = e.getString(0);
                    e.close();
                    return string;
                }
            } finally {
                e.close();
            }
        }
        throw new MmsException("Cannot get X-Mms-Content-Location from: " + uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static boolean m11409f(Context context, h hVar) {
        byte[] f = hVar.f();
        if (f == null) {
            return false;
        }
        Cursor e = C0614a.m11570e(context, context.getContentResolver(), Telephony.Mms.CONTENT_URI, new String[]{EZBlackList.f4115ID}, "ct_l = ?", new String[]{new String(f)}, null);
        if (e == null) {
            return false;
        }
        try {
            if (e.getCount() > 0) {
                e.close();
            }
            return false;
        } finally {
            e.close();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        StringBuilder sb;
        a.k("Mms", intent.getAction() + " " + intent.getType());
        if ((intent.getAction().equals("android.provider.Telephony.WAP_PUSH_DELIVER") || intent.getAction().equals("android.provider.Telephony.WAP_PUSH_RECEIVED")) && "application/vnd.wap.mms-message".equals(intent.getType())) {
            a.k("Mms", "Received PUSH Intent: " + intent);
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            if ((defaultSharedPreferences.getBoolean("receive_with_stock", false) || Build.VERSION.SDK_INT >= 19 || !defaultSharedPreferences.getBoolean("override", true)) && Build.VERSION.SDK_INT < 19) {
                clearAbortBroadcast();
                Intent intent2 = new Intent("com.klinker.android.messaging.NEW_MMS_DOWNLOADED");
                intent2.putExtra("receive_through_stock", true);
                C2704b.m2107b(context, intent2, "com.klinker.android.messaging.NEW_MMS_DOWNLOADED");
                StringBuilder sb2 = new StringBuilder();
                sb2.append(context.getPackageName());
                str = " received and not aborted";
                sb = sb2;
            } else {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                e.a.b.a.l(context);
                new AsyncTaskC0688a(this, context, goAsync).executeOnExecutor(f3336c, intent);
                StringBuilder sb3 = new StringBuilder();
                sb3.append(context.getPackageName());
                str = " received and aborted";
                sb = sb3;
            }
            sb.append(str);
            a.k("mms_receiver", sb.toString());
        }
    }
}
