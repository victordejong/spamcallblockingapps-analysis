package com.klinker.android.send_message;

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
import android.text.TextUtils;
import android.widget.Toast;
import com.android.mms.transaction.C0693e;
import com.callerid.block.bean.EZBlackList;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.MmsException;
import com.google.android.mms.b;
import com.google.android.mms.c.e;
import com.google.android.mms.c.j;
import com.google.android.mms.c.k;
import com.google.android.mms.c.o;
import com.google.android.mms.c.p;
import com.google.android.mms.c.v;
import com.klinker.android.send_message.C2705c;
import e.a.b.e.g;
import e.a.b.e.i;
import e.a.b.f.c;
import e.d.a.a.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
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

    /* renamed from: com.klinker.android.send_message.i$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i$a.class */
    public class RunnableC2713a implements Runnable {
        RunnableC2713a() {
            C2712i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(C2712i.this.f11315a, "Message could not be sent", 1).show();
        }
    }

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
            C2712i.this = r4;
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
            if (!C2712i.this.m2051e(this.f11324c)) {
                a.k("send_transaction", "message not sent after delay, no longer exists");
                return;
            }
            a.k("send_transaction", "message sent after delay");
            try {
                this.f11325d.sendMultipartTextMessage(this.f11326e, null, this.f11327f, this.f11328g, this.f11329h);
            } catch (Exception e2) {
                a.c("Transaction", "exception thrown", e2);
            }
        }
    }

    /* renamed from: com.klinker.android.send_message.i$c */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/i$c.class */
    public class C2715c extends BroadcastReceiver {
        C2715c(C2712i c2712i) {
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
            } else if (intExtra != -2) {
            } else {
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

    public C2712i(Context context, C2709f c2709f) {
        this.f11320f = ".SMS_SENT";
        this.f11321g = ".SMS_DELIVERED";
        f11313h = c2709f;
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
        String m2030h = C2717j.m2030h(context);
        if (!TextUtils.isEmpty(m2030h)) {
            vVar.c(new e(m2030h));
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
            if (read == -1) {
                openOutputStream.close();
                byteArrayInputStream.close();
                return insert;
            }
            openOutputStream.write(bArr2, 0, read);
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

    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: j */
    public static C2716d m2046j(Context context, boolean z, String[] strArr, b[] bVarArr, String str) {
        String substring;
        v vVar = new v();
        for (String str2 : strArr) {
            e[] d = e.d(str2);
            if (d != null && d.length > 0) {
                vVar.f(d[0]);
            }
        }
        if (str != null) {
            vVar.n(new e(str));
        }
        vVar.l(Calendar.getInstance().getTimeInMillis() / 1000);
        try {
            vVar.c(new e(C2717j.m2030h(context)));
        } catch (Exception e) {
            a.c("Transaction", "error getting from address", e);
        }
        j jVar = new j();
        char c = 0;
        char c2 = 0;
        if (bVarArr != null) {
            int i = 0;
            while (true) {
                c2 = c;
                if (i >= bVarArr.length) {
                    break;
                }
                b bVar = bVarArr[i];
                char c3 = c;
                if (bVar != null) {
                    try {
                        o oVar = new o();
                        oVar.v(bVar.a.getBytes());
                        oVar.r(bVar.b.getBytes());
                        if (bVar.b.startsWith("text")) {
                            oVar.m(106);
                        }
                        oVar.p(bVar.a.getBytes());
                        int lastIndexOf = bVar.a.lastIndexOf(".");
                        oVar.o((lastIndexOf == -1 ? bVar.a : bVar.a.substring(0, lastIndexOf)).getBytes());
                        oVar.s(bVar.c);
                        jVar.b(oVar);
                        int length = bVar.a.getBytes().length;
                        c3 = c + (length * 2) + bVar.b.getBytes().length + bVar.c.length + substring.getBytes().length;
                    } catch (Exception e2) {
                        c3 = c;
                    }
                }
                i++;
                c = c3;
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        e.a.b.b.g.m.a.a(com.google.android.mms.d.a.c(jVar), byteArrayOutputStream);
        o oVar2 = new o();
        oVar2.o("smil".getBytes());
        oVar2.p("smil.xml".getBytes());
        oVar2.r("application/smil".getBytes());
        oVar2.s(byteArrayOutputStream.toByteArray());
        jVar.a(0, oVar2);
        vVar.k(jVar);
        a.k("Transaction", "setting message size to " + ((long) c2) + " bytes");
        vVar.A(c2);
        vVar.m(129);
        vVar.x(129);
        vVar.y(604800000L);
        vVar.z("personal".getBytes());
        vVar.B(129);
        try {
            byte[] s = new k(context, vVar).s();
            C2716d c2716d = new C2716d();
            c2716d.f11333c = s;
            if (z) {
                try {
                    c2716d.f11332b = p.h(context).o(vVar, Uri.parse("content://mms/outbox"), true, f11313h.m2082c(), (HashMap) null);
                } catch (Exception e3) {
                    a.k("sending_mms_library", "error saving mms message");
                    a.c("Transaction", "exception thrown", e3);
                    m2045k(context, strArr, bVarArr, str);
                }
            }
            try {
                Cursor query = context.getContentResolver().query(c2716d.f11332b, new String[]{"thread_id"}, null, null, null);
                if (query == null || !query.moveToFirst()) {
                    c2716d.f11331a = 4444L;
                } else {
                    c2716d.f11331a = query.getLong(query.getColumnIndex("thread_id"));
                    query.close();
                }
            } catch (Exception e4) {
                a.c("Transaction", "exception thrown", e4);
                c2716d.f11331a = 4444L;
            }
            return c2716d;
        } catch (OutOfMemoryError e5) {
            throw new MmsException("Out of memory!");
        }
    }

    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* renamed from: k */
    private static Uri m2045k(Context context, String[] strArr, b[] bVarArr, String str) {
        try {
            Uri parse = Uri.parse("content://mms");
            HashSet hashSet = new HashSet();
            hashSet.addAll(Arrays.asList(strArr));
            long m2027k = C2717j.m2027k(context, hashSet);
            ContentValues contentValues = new ContentValues();
            contentValues.put("thread_id", Long.valueOf(m2027k));
            contentValues.put("body", " ");
            Uri insert = context.getContentResolver().insert(Uri.parse("content://sms/sent"), contentValues);
            long currentTimeMillis = System.currentTimeMillis();
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("thread_id", Long.valueOf(m2027k));
            contentValues2.put("date", Long.valueOf(currentTimeMillis / 1000));
            contentValues2.put("msg_box", (Integer) 4);
            contentValues2.put("read", Boolean.TRUE);
            if (str == null) {
                str = "";
            }
            contentValues2.put("sub", str);
            contentValues2.put("sub_cs", (Integer) 106);
            contentValues2.put("ct_t", "application/vnd.wap.multipart.related");
            char c = 0;
            for (b bVar : bVarArr) {
                c += bVar.c.length;
            }
            contentValues2.put("exp", Long.valueOf(c));
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
            byte[] m2103d = C2705c.m2103d(bitmapArr[i2]);
            b bVar = new b();
            bVar.b = "image/jpeg";
            bVar.a = strArr2 != null ? strArr2[i2] : "image_" + System.currentTimeMillis();
            bVar.c = m2103d;
            arrayList.add(bVar);
        }
        if (list != null) {
            for (C2705c.C2706a c2706a : list) {
                b bVar2 = new b();
                bVar2.a = c2706a.m2091c() != null ? c2706a.m2091c() : c2706a.m2093a().split("/")[0];
                bVar2.b = c2706a.m2093a();
                bVar2.c = c2706a.m2092b();
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
                C2716d m2046j = m2046j(this.f11315a, this.f11319e, trim.split(" "), (b[]) arrayList.toArray(new b[arrayList.size()]), str2);
                new C0693e(this.f11315a, m2046j.f11332b, m2046j.f11333c.length).m11389a(m2046j.f11331a);
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
                C2716d m2046j2 = m2046j(this.f11315a, this.f11319e, trim.split(" "), (b[]) arrayList.toArray(new b[arrayList.size()]), str2);
                new e.a.b.e.k(new i(this.f11315a, m2046j2.f11333c), C2717j.m2031g(), m2046j2.f11332b, (String) null, (PendingIntent) null, (String) null, (Bundle) null).c(this.f11315a, new g(this.f11315a, C2717j.m2031g()));
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
    /* JADX WARN: Type inference failed for: r0v43, types: [java.io.FileOutputStream] */
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

    /* JADX WARN: Code restructure failed: missing block: B:17:0x010f, code lost:
        if (r11.length > 1) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v224, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m2039q(java.lang.String r10, java.lang.String[] r11, long r12, int r14, android.os.Parcelable r15, android.os.Parcelable r16) {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2712i.m2039q(java.lang.String, java.lang.String[], long, int, android.os.Parcelable, android.os.Parcelable):void");
    }

    /* renamed from: r */
    private String[] m2038r(String str, int i, boolean z) {
        int i2;
        double length = str.length();
        double d = i;
        Double.isNaN(length);
        Double.isNaN(d);
        int ceil = (int) Math.ceil(length / d);
        String[] strArr = new String[ceil];
        int i3 = 0;
        int i4 = 0;
        while (i3 < str.length()) {
            if (str.length() - i3 < i) {
                i2 = i4 + 1;
                strArr[i4] = str.substring(i3);
            } else {
                i2 = i4 + 1;
                strArr[i4] = str.substring(i3, i3 + i);
            }
            i4 = i2;
            i3 += i;
        }
        if (z && ceil > 1) {
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 >= ceil) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("(");
                int i7 = i6 + 1;
                sb.append(i7);
                sb.append("/");
                sb.append(ceil);
                sb.append(") ");
                sb.append(strArr[i6]);
                strArr[i6] = sb.toString();
                i5 = i7;
            }
        }
        return strArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
        if (com.klinker.android.send_message.C2712i.f11313h.m2082c() == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (com.klinker.android.send_message.C2717j.m2029i(com.klinker.android.send_message.C2712i.f11313h, r4.m2095l()) <= com.klinker.android.send_message.C2712i.f11313h.m2076i()) goto L10;
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
            if (r0 != 0) goto L62
            r0 = r6
            r7 = r0
            r0 = r4
            java.util.List r0 = r0.m2098i()
            int r0 = r0.size()
            if (r0 != 0) goto L62
            com.klinker.android.send_message.f r0 = com.klinker.android.send_message.C2712i.f11313h
            boolean r0 = r0.m2077h()
            if (r0 == 0) goto L3d
            r0 = r6
            r7 = r0
            com.klinker.android.send_message.f r0 = com.klinker.android.send_message.C2712i.f11313h
            r1 = r4
            java.lang.String r1 = r1.m2095l()
            int r0 = com.klinker.android.send_message.C2717j.m2029i(r0, r1)
            com.klinker.android.send_message.f r1 = com.klinker.android.send_message.C2712i.f11313h
            int r1 = r1.m2076i()
            if (r0 > r1) goto L62
        L3d:
            r0 = r4
            java.lang.String[] r0 = r0.m2102e()
            int r0 = r0.length
            r1 = 1
            if (r0 <= r1) goto L52
            r0 = r6
            r7 = r0
            com.klinker.android.send_message.f r0 = com.klinker.android.send_message.C2712i.f11313h
            boolean r0 = r0.m2082c()
            if (r0 != 0) goto L62
        L52:
            r0 = r4
            java.lang.String r0 = r0.m2096k()
            if (r0 == 0) goto L5f
            r0 = r6
            r7 = r0
            goto L62
        L5f:
            r0 = 0
            r7 = r0
        L62:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2712i.m2050f(com.klinker.android.send_message.c):boolean");
    }

    /* renamed from: o */
    public void m2041o(C2705c c2705c, long j) {
        m2040p(c2705c, j, new Bundle(), new Bundle());
    }

    /* renamed from: p */
    public void m2040p(C2705c c2705c, long j, Parcelable parcelable, Parcelable parcelable2) {
        this.f11319e = c2705c.m2097j();
        if (!m2050f(c2705c)) {
            m2039q(c2705c.m2095l(), c2705c.m2102e(), j, c2705c.m2101f(), parcelable, parcelable2);
            return;
        }
        try {
            Looper.prepare();
        } catch (Exception e) {
        }
        c.c(this.f11315a);
        e.a.b.f.a.g(this.f11315a);
        m2043m(c2705c.m2095l(), c2705c.m2102e(), c2705c.m2099h(), c2705c.m2100g(), c2705c.m2098i(), c2705c.m2096k());
    }
}
