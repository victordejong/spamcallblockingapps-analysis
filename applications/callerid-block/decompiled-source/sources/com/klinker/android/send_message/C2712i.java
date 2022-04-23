package com.klinker.android.send_message;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import android.widget.Toast;
import com.android.mms.transaction.C0693e;
import com.callerid.block.bean.EZBlackList;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.b;
import com.google.android.mms.c.e;
import com.google.android.mms.c.j;
import com.google.android.mms.c.o;
import com.google.android.mms.c.v;
import com.klinker.android.send_message.C2705c;
import e.a.b.e.g;
import e.a.b.e.i;
import e.a.b.e.k;
import e.a.b.f.c;
import e.d.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.klinker.android.send_message.i */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i.class */
public class C2712i {

    /* renamed from: h */
    public static C2709f f11313h;

    /* renamed from: i */
    public static String f11314i = ".NOTIFY_SMS_FAILURE";

    /* renamed from: a */
    private Context f11315a;

    /* renamed from: b */
    private Intent f11316b;

    /* renamed from: c */
    private Intent f11317c;

    /* renamed from: d */
    private Intent f11318d;

    /* renamed from: e */
    private boolean f11319e = true;

    /* renamed from: f */
    public String f11320f;

    /* renamed from: g */
    public String f11321g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.klinker.android.send_message.i$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i$a.class */
    public class RunnableC2713a implements Runnable {
        RunnableC2713a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(C2712i.this.f11315a, "Message could not be sent", 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.klinker.android.send_message.i$b */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i$b.class */
    public class RunnableC2714b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ int f11323b;

        /* renamed from: c */
        final /* synthetic */ Uri f11324c;

        /* renamed from: d */
        final /* synthetic */ SmsManager f11325d;

        /* renamed from: e */
        final /* synthetic */ String f11326e;

        /* renamed from: f */
        final /* synthetic */ ArrayList f11327f;

        /* renamed from: g */
        final /* synthetic */ ArrayList f11328g;

        /* renamed from: h */
        final /* synthetic */ ArrayList f11329h;

        RunnableC2714b(int i, Uri uri, SmsManager smsManager, String str, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
            this.f11323b = i;
            this.f11324c = uri;
            this.f11325d = smsManager;
            this.f11326e = str;
            this.f11327f = arrayList;
            this.f11328g = arrayList2;
            this.f11329h = arrayList3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(this.f11323b);
            } catch (Exception e) {
            }
            if (C2712i.this.m2051e(this.f11324c)) {
                a.k("send_transaction", "message sent after delay");
                try {
                    this.f11325d.sendMultipartTextMessage(this.f11326e, null, this.f11327f, this.f11328g, this.f11329h);
                } catch (Exception e2) {
                    a.c("Transaction", "exception thrown", e2);
                }
            } else {
                a.k("send_transaction", "message not sent after delay, no longer exists");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.klinker.android.send_message.i$c */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i$c.class */
    public class C2715c extends BroadcastReceiver {
        C2715c(C2712i iVar) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int intExtra = intent.getIntExtra("progress", -3);
            a.k("sending_mms_library", "progress: " + intExtra);
            Intent intent2 = new Intent("com.klinker.android.send_message.MMS_PROGRESS");
            intent2.putExtra("progress", intExtra);
            C2704b.m2107b(context, intent2, "com.klinker.android.send_message.MMS_PROGRESS");
            if (intExtra == 100) {
                C2704b.m2107b(context, new Intent(), "com.klinker.android.send_message.REFRESH");
                try {
                    context.unregisterReceiver(this);
                } catch (Exception e) {
                }
            } else if (intExtra == -2) {
                a.k("sending_mms_library", "sending aborted for some reason...");
            }
        }
    }

    /* renamed from: com.klinker.android.send_message.i$d */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i$d.class */
    public static class C2716d {

        /* renamed from: a */
        public long f11331a;

        /* renamed from: b */
        public Uri f11332b;

        /* renamed from: c */
        public byte[] f11333c;
    }

    public C2712i(Context context, C2709f fVar) {
        this.f11320f = ".SMS_SENT";
        this.f11321g = ".SMS_DELIVERED";
        f11313h = fVar;
        this.f11315a = context;
        this.f11320f = context.getPackageName() + this.f11320f;
        this.f11321g = context.getPackageName() + this.f11321g;
        if (f11314i.equals(".NOTIFY_SMS_FAILURE")) {
            f11314i = context.getPackageName() + f11314i;
        }
    }

    /* renamed from: c */
    private static int m2053c(j jVar, b bVar, int i) {
        String str = bVar.a;
        o oVar = new o();
        if (bVar.b.startsWith("text")) {
            oVar.m(106);
        }
        oVar.r(bVar.b.getBytes());
        oVar.p(str.getBytes());
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            str = str.substring(0, lastIndexOf);
        }
        oVar.o(str.getBytes());
        oVar.s(bVar.c);
        jVar.b(oVar);
        return oVar.h().length;
    }

    /* renamed from: d */
    private static v m2052d(Context context, String[] strArr, String str, List<b> list) {
        v vVar = new v();
        String h = C2717j.m2030h(context);
        if (!TextUtils.isEmpty(h)) {
            vVar.c(new e(h));
        }
        for (String str2 : strArr) {
            vVar.f(new e(str2));
        }
        if (!TextUtils.isEmpty(str)) {
            vVar.n(new e(str));
        }
        vVar.l(System.currentTimeMillis() / 1000);
        j jVar = new j();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            i += m2053c(jVar, list.get(i2), i2);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        e.a.b.b.g.m.a.a(com.google.android.mms.d.a.c(jVar), byteArrayOutputStream);
        o oVar = new o();
        oVar.o("smil".getBytes());
        oVar.p("smil.xml".getBytes());
        oVar.r("application/smil".getBytes());
        oVar.s(byteArrayOutputStream.toByteArray());
        jVar.a(0, oVar);
        vVar.k(jVar);
        vVar.A(i);
        vVar.z("personal".getBytes());
        vVar.y(604800L);
        try {
            vVar.m(129);
            vVar.x(129);
            vVar.B(129);
        } catch (InvalidHeaderValueException e) {
        }
        return vVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public boolean m2051e(Uri uri) {
        Cursor query = this.f11315a.getContentResolver().query(uri, new String[]{EZBlackList.f4115ID}, null, null, null);
        if (query == null || !query.moveToFirst()) {
            return false;
        }
        query.close();
        return true;
    }

    /* renamed from: g */
    private static Uri m2049g(Context context, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("address", str2);
        contentValues.put("charset", "106");
        contentValues.put("type", (Integer) 151);
        return context.getContentResolver().insert(Uri.parse("content://mms/" + str + "/addr"), contentValues);
    }

    /* renamed from: h */
    private static Uri m2048h(Context context, String str, byte[] bArr, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("mid", str);
        contentValues.put("ct", str2);
        contentValues.put("cid", "<" + System.currentTimeMillis() + ">");
        Uri insert = context.getContentResolver().insert(Uri.parse("content://mms/" + str + "/part"), contentValues);
        OutputStream openOutputStream = context.getContentResolver().openOutputStream(insert);
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        byte[] bArr2 = new byte[256];
        while (true) {
            int read = byteArrayInputStream.read(bArr2);
            if (read != -1) {
                openOutputStream.write(bArr2, 0, read);
            } else {
                openOutputStream.close();
                byteArrayInputStream.close();
                return insert;
            }
        }
    }

    /* renamed from: i */
    private static Uri m2047i(Context context, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("mid", str);
        contentValues.put("ct", "text/plain");
        contentValues.put("cid", "<" + System.currentTimeMillis() + ">");
        contentValues.put("text", str2);
        return context.getContentResolver().insert(Uri.parse("content://mms/" + str + "/part"), contentValues);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.klinker.android.send_message.C2712i.C2716d m2046j(android.content.Context r8, boolean r9, java.lang.String[] r10, com.google.android.mms.b[] r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2712i.m2046j(android.content.Context, boolean, java.lang.String[], com.google.android.mms.b[], java.lang.String):com.klinker.android.send_message.i$d");
    }

    /* renamed from: k */
    private static Uri m2045k(Context context, String[] strArr, b[] bVarArr, String str) {
        try {
            Uri parse = Uri.parse("content://mms");
            HashSet hashSet = new HashSet();
            hashSet.addAll(Arrays.asList(strArr));
            long k = C2717j.m2027k(context, hashSet);
            ContentValues contentValues = new ContentValues();
            contentValues.put("thread_id", Long.valueOf(k));
            contentValues.put("body", " ");
            Uri insert = context.getContentResolver().insert(Uri.parse("content://sms/sent"), contentValues);
            long currentTimeMillis = System.currentTimeMillis();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("thread_id", Long.valueOf(k));
            contentValues2.put("date", Long.valueOf(currentTimeMillis / 1000));
            contentValues2.put("msg_box", (Integer) 4);
            contentValues2.put("read", Boolean.TRUE);
            if (str == null) {
                str = "";
            }
            contentValues2.put("sub", str);
            contentValues2.put("sub_cs", (Integer) 106);
            contentValues2.put("ct_t", "application/vnd.wap.multipart.related");
            long j = 0;
            for (b bVar : bVarArr) {
                j += bVar.c.length;
            }
            contentValues2.put("exp", Long.valueOf(j));
            contentValues2.put("m_cls", "personal");
            contentValues2.put("m_type", (Integer) 128);
            contentValues2.put("v", (Integer) 19);
            contentValues2.put("pri", (Integer) 129);
            contentValues2.put("tr_id", "T" + Long.toHexString(currentTimeMillis));
            contentValues2.put("resp_st", (Integer) 128);
            Uri insert2 = context.getContentResolver().insert(parse, contentValues2);
            String trim = insert2.getLastPathSegment().trim();
            for (b bVar2 : bVarArr) {
                if (bVar2.b.startsWith("image")) {
                    m2048h(context, trim, bVar2.c, bVar2.b);
                } else if (bVar2.b.startsWith("text")) {
                    m2047i(context, trim, new String(bVar2.c, "UTF-8"));
                }
            }
            for (String str2 : strArr) {
                m2049g(context, trim, str2);
            }
            context.getContentResolver().delete(insert, null, null);
            return insert2;
        } catch (Exception e) {
            a.k("sending_mms_library", "still an error saving... :(");
            a.c("Transaction", "exception thrown", e);
            return null;
        }
    }

    /* renamed from: l */
    private void m2044l(SmsManager smsManager, String str, ArrayList<String> arrayList, ArrayList<PendingIntent> arrayList2, ArrayList<PendingIntent> arrayList3, int i, Uri uri) {
        new Thread(new RunnableC2714b(i, uri, smsManager, str, arrayList, arrayList2, arrayList3)).start();
    }

    /* renamed from: m */
    private void m2043m(String str, String[] strArr, Bitmap[] bitmapArr, String[] strArr2, List<C2705c.C2706a> list, String str2) {
        String str3;
        String str4 = "";
        for (int i = 0; i < strArr.length; i++) {
            str4 = str4 + strArr[i] + " ";
        }
        String trim = str4.trim();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < bitmapArr.length; i2++) {
            byte[] d = C2705c.m2103d(bitmapArr[i2]);
            b bVar = new b();
            bVar.b = "image/jpeg";
            bVar.a = strArr2 != null ? strArr2[i2] : "image_" + System.currentTimeMillis();
            bVar.c = d;
            arrayList.add(bVar);
        }
        if (list != null) {
            for (C2705c.C2706a aVar : list) {
                b bVar2 = new b();
                bVar2.a = aVar.m2091c() != null ? aVar.m2091c() : aVar.m2093a().split("/")[0];
                bVar2.b = aVar.m2093a();
                bVar2.c = aVar.m2092b();
                arrayList.add(bVar2);
            }
        }
        if (str != null && !str.equals("")) {
            b bVar3 = new b();
            bVar3.a = "text";
            bVar3.b = "text/plain";
            bVar3.c = str.getBytes();
            arrayList.add(bVar3);
        }
        if (Build.VERSION.SDK_INT <= 19) {
            try {
                C2716d j = m2046j(this.f11315a, this.f11319e, trim.split(" "), (b[]) arrayList.toArray(new b[arrayList.size()]), str2);
                new C0693e(this.f11315a, j.f11332b, j.f11333c.length).m11389a(j.f11331a);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("com.android.mms.PROGRESS_STATUS");
                this.f11315a.registerReceiver(new C2715c(this), intentFilter);
                return;
            } catch (Throwable th) {
                th = th;
                str3 = "exception thrown";
            }
        } else {
            a.k("Transaction", "using lollipop method for sending sms");
            if (f11313h.m2069p()) {
                a.k("Transaction", "using system method for sending");
                m2042n(this.f11315a, str2, arrayList, strArr, this.f11317c);
                return;
            }
            try {
                C2716d j2 = m2046j(this.f11315a, this.f11319e, trim.split(" "), (b[]) arrayList.toArray(new b[arrayList.size()]), str2);
                new k(new i(this.f11315a, j2.f11333c), C2717j.m2031g(), j2.f11332b, (String) null, (PendingIntent) null, (String) null, (Bundle) null).c(this.f11315a, new g(this.f11315a, C2717j.m2031g()));
                return;
            } catch (Exception e) {
                th = e;
                str3 = "error sending mms";
            }
        }
        a.c("Transaction", str3, th);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x015c A[Catch: Exception -> 0x01ae, TryCatch #1 {Exception -> 0x01ae, blocks: (B:2:0x0000, B:5:0x0077, B:7:0x008b, B:17:0x010f, B:28:0x0136, B:31:0x013c, B:33:0x015c, B:35:0x0165, B:37:0x0172, B:38:0x0184, B:40:0x018f, B:42:0x0197, B:45:0x01a8, B:47:0x01ad), top: B:56:0x0000, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0172 A[Catch: Exception -> 0x01ae, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x01ae, blocks: (B:2:0x0000, B:5:0x0077, B:7:0x008b, B:17:0x010f, B:28:0x0136, B:31:0x013c, B:33:0x015c, B:35:0x0165, B:37:0x0172, B:38:0x0184, B:40:0x018f, B:42:0x0197, B:45:0x01a8, B:47:0x01ad), top: B:56:0x0000, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0184 A[Catch: Exception -> 0x01ae, TRY_ENTER, TryCatch #1 {Exception -> 0x01ae, blocks: (B:2:0x0000, B:5:0x0077, B:7:0x008b, B:17:0x010f, B:28:0x0136, B:31:0x013c, B:33:0x015c, B:35:0x0165, B:37:0x0172, B:38:0x0184, B:40:0x018f, B:42:0x0197, B:45:0x01a8, B:47:0x01ad), top: B:56:0x0000, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v57, types: [android.telephony.SmsManager] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.net.Uri] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void m2042n(android.content.Context r7, java.lang.String r8, java.util.List<com.google.android.mms.b> r9, java.lang.String[] r10, android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2712i.m2042n(android.content.Context, java.lang.String, java.util.List, java.lang.String[], android.content.Intent):void");
    }

    /* renamed from: q */
    private void m2039q(String str, String[] strArr, long j, int i, Parcelable parcelable, Parcelable parcelable2) {
        boolean z;
        a.k("send_transaction", "message text: " + str);
        if (this.f11319e) {
            a.k("send_transaction", "saving message");
            String str2 = "";
            String str3 = str;
            if (!f11313h.m2075j().equals("")) {
                str3 = str + "\n" + f11313h.m2075j();
            }
            int i2 = 0;
            int i3 = 0;
            while (i3 < strArr.length) {
                Calendar instance = Calendar.getInstance();
                ContentValues contentValues = new ContentValues();
                contentValues.put("address", strArr[i3]);
                contentValues.put("body", f11313h.m2072m() ? C2711h.m2056a(str3) : str3);
                contentValues.put("date", instance.getTimeInMillis() + str2);
                contentValues.put("read", (Integer) 1);
                contentValues.put("type", (Integer) 4);
                if (j == 0 || strArr.length > 1) {
                    j = C2717j.m2028j(this.f11315a, strArr[i3]);
                }
                a.k("send_transaction", "saving message with thread id: " + j);
                contentValues.put("thread_id", Long.valueOf(j));
                Uri insert = this.f11315a.getContentResolver().insert(Uri.parse("content://sms/"), contentValues);
                a.k("send_transaction", "inserted to uri: " + insert);
                Cursor query = this.f11315a.getContentResolver().query(insert, new String[]{EZBlackList.f4115ID}, null, null, null);
                int i4 = i2;
                if (query != null) {
                    i4 = i2;
                    if (query.moveToFirst()) {
                        i4 = query.getInt(0);
                        query.close();
                    }
                }
                a.k("send_transaction", "message id: " + i4);
                Intent intent = this.f11316b;
                Intent intent2 = intent;
                if (intent == null) {
                    intent2 = new Intent(this.f11320f);
                    C2704b.m2108a(this.f11315a, intent2, this.f11320f);
                }
                intent2.putExtra("message_uri", insert == null ? str2 : insert.toString());
                intent2.putExtra("com.klinker.android.send_message.SENT_SMS_BUNDLE", parcelable);
                PendingIntent broadcast = PendingIntent.getBroadcast(this.f11315a, i4, intent2, 134217728);
                Intent intent3 = this.f11318d;
                Intent intent4 = intent3;
                if (intent3 == null) {
                    intent4 = new Intent(this.f11321g);
                    C2704b.m2108a(this.f11315a, intent4, this.f11321g);
                }
                intent4.putExtra("message_uri", insert == null ? str2 : insert.toString());
                intent4.putExtra("com.klinker.android.send_message.DELIVERED_SMS_BUNDLE", parcelable2);
                PendingIntent broadcast2 = PendingIntent.getBroadcast(this.f11315a, i4, intent4, 134217728);
                ArrayList<PendingIntent> arrayList = new ArrayList<>();
                ArrayList<PendingIntent> arrayList2 = new ArrayList<>();
                String a = f11313h.m2072m() ? C2711h.m2056a(str3) : str3;
                String str4 = a;
                if (!f11313h.m2079f().equals(str2)) {
                    str4 = f11313h.m2079f() + " " + a;
                }
                SmsManager b = C2710g.m2057b(f11313h);
                a.k("send_transaction", "found sms manager");
                if (f11313h.m2074k()) {
                    a.k("send_transaction", "splitting message");
                    int[] calculateLength = SmsMessage.calculateLength(str4, false);
                    int length = (str4.length() + calculateLength[2]) / calculateLength[0];
                    a.k("send_transaction", "length: " + length);
                    if (!f11313h.m2073l() || str4.length() <= length) {
                        z = false;
                    } else {
                        length -= 6;
                        z = true;
                    }
                    String[] r = m2038r(str4, length, z);
                    for (String str5 : r) {
                        ArrayList<String> divideMessage = b.divideMessage(str5);
                        for (int i5 = 0; i5 < divideMessage.size(); i5++) {
                            arrayList.add(this.f11319e ? broadcast : null);
                            arrayList2.add((!f11313h.m2083b() || !this.f11319e) ? null : broadcast2);
                        }
                        a.k("send_transaction", "sending split message");
                        m2044l(b, strArr[i3], divideMessage, arrayList, arrayList2, i, insert);
                    }
                } else {
                    a.k("send_transaction", "sending without splitting");
                    ArrayList<String> divideMessage2 = b.divideMessage(str4);
                    for (int i6 = 0; i6 < divideMessage2.size(); i6++) {
                        arrayList.add(this.f11319e ? broadcast : null);
                        arrayList2.add((!f11313h.m2083b() || !this.f11319e) ? null : broadcast2);
                    }
                    if (C2717j.m2023o(this.f11315a)) {
                        try {
                            a.k("send_transaction", "sent message");
                            m2044l(b, strArr[i3], divideMessage2, arrayList, arrayList2, i, insert);
                            str2 = str2;
                        } catch (Exception e) {
                            a.k("send_transaction", "error sending message");
                            a.c("Transaction", "exception thrown", e);
                            try {
                                ((Activity) this.f11315a).getWindow().getDecorView().findViewById(16908290).post(new RunnableC2713a());
                                str2 = str2;
                            } catch (Exception e2) {
                                str2 = str2;
                            }
                        }
                    } else {
                        b.sendMultipartTextMessage(strArr[i3], null, divideMessage2, arrayList, arrayList2);
                        str2 = str2;
                    }
                }
                i3++;
                i2 = i4;
            }
        }
    }

    /* renamed from: r */
    private String[] m2038r(String str, int i, boolean z) {
        double length = str.length();
        double d = i;
        Double.isNaN(length);
        Double.isNaN(d);
        int ceil = (int) Math.ceil(length / d);
        String[] strArr = new String[ceil];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < str.length()) {
            if (str.length() - i3 < i) {
                i4++;
                strArr[i4] = str.substring(i3);
            } else {
                i4++;
                strArr[i4] = str.substring(i3, i3 + i);
            }
            i3 += i;
        }
        if (z && ceil > 1) {
            while (i2 < ceil) {
                StringBuilder sb = new StringBuilder();
                sb.append("(");
                int i5 = i2 + 1;
                sb.append(i5);
                sb.append("/");
                sb.append(ceil);
                sb.append(") ");
                sb.append(strArr[i2]);
                strArr[i2] = sb.toString();
                i2 = i5;
            }
        }
        return strArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (com.klinker.android.send_message.C2712i.f11313h.m2082c() == false) goto L_0x0052;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (com.klinker.android.send_message.C2717j.m2029i(com.klinker.android.send_message.C2712i.f11313h, r4.m2095l()) <= com.klinker.android.send_message.C2712i.f11313h.m2076i()) goto L_0x003d;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m2050f(com.klinker.android.send_message.C2705c r4) {
        /*
            r3 = this;
            r0 = r4
            android.graphics.Bitmap[] r0 = r0.m2099h()
            int r0 = r0.length
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0062
            r0 = r6
            r7 = r0
            r0 = r4
            java.util.List r0 = r0.m2098i()
            int r0 = r0.size()
            if (r0 != 0) goto L_0x0062
            com.klinker.android.send_message.f r0 = com.klinker.android.send_message.C2712i.f11313h
            boolean r0 = r0.m2077h()
            if (r0 == 0) goto L_0x003d
            r0 = r6
            r7 = r0
            com.klinker.android.send_message.f r0 = com.klinker.android.send_message.C2712i.f11313h
            r1 = r4
            java.lang.String r1 = r1.m2095l()
            int r0 = com.klinker.android.send_message.C2717j.m2029i(r0, r1)
            com.klinker.android.send_message.f r1 = com.klinker.android.send_message.C2712i.f11313h
            int r1 = r1.m2076i()
            if (r0 > r1) goto L_0x0062
        L_0x003d:
            r0 = r4
            java.lang.String[] r0 = r0.m2102e()
            int r0 = r0.length
            r1 = 1
            if (r0 <= r1) goto L_0x0052
            r0 = r6
            r7 = r0
            com.klinker.android.send_message.f r0 = com.klinker.android.send_message.C2712i.f11313h
            boolean r0 = r0.m2082c()
            if (r0 != 0) goto L_0x0062
        L_0x0052:
            r0 = r4
            java.lang.String r0 = r0.m2096k()
            if (r0 == 0) goto L_0x005f
            r0 = r6
            r7 = r0
            goto L_0x0062
        L_0x005f:
            r0 = 0
            r7 = r0
        L_0x0062:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2712i.m2050f(com.klinker.android.send_message.c):boolean");
    }

    /* renamed from: o */
    public void m2041o(C2705c cVar, long j) {
        m2040p(cVar, j, new Bundle(), new Bundle());
    }

    /* renamed from: p */
    public void m2040p(C2705c cVar, long j, Parcelable parcelable, Parcelable parcelable2) {
        this.f11319e = cVar.m2097j();
        if (m2050f(cVar)) {
            try {
                Looper.prepare();
            } catch (Exception e) {
            }
            c.c(this.f11315a);
            e.a.b.f.a.g(this.f11315a);
            m2043m(cVar.m2095l(), cVar.m2102e(), cVar.m2099h(), cVar.m2100g(), cVar.m2098i(), cVar.m2096k());
            return;
        }
        m2039q(cVar.m2095l(), cVar.m2102e(), j, cVar.m2101f(), parcelable, parcelable2);
    }
}
