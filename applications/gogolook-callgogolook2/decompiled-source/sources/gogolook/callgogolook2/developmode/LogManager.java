package gogolook.callgogolook2.developmode;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.realm.obj.log.ReportLogRealmObject;
import gogolook.callgogolook2.util.OJni;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p471b1.p473b.C11511b;
import p459j.p460a.p471b1.p473b.C11512c;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13048c;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p541n0.C13085e;
import p459j.p460a.p541n0.C13096g;
import p459j.p460a.p541n0.C13103h;
import p459j.p460a.p541n0.C13110i;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p541n0.C13165k;
import p459j.p460a.p541n0.C13175m;
import p459j.p460a.p541n0.C13182n;
import p459j.p460a.p541n0.C13198r;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p564s.C13425c0;
import p459j.p460a.p564s.C13450i;
import p459j.p460a.p564s.C13453l;
import p459j.p460a.p564s.C13454m;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C13992e4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14036j2;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13981h;
import p626l.p640y.C15101l;
import p626l.p641z.p642c.AbstractC15118l;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Actions;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/developmode/LogManager.class */
public class LogManager {

    /* renamed from: a */
    public static final SimpleDateFormat f10780a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());

    /* renamed from: gogolook.callgogolook2.developmode.LogManager$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/developmode/LogManager$a.class */
    public static final class C4469a implements Single.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ String f10781a;

        /* renamed from: b */
        public final /* synthetic */ int f10782b;

        /* renamed from: c */
        public final /* synthetic */ long f10783c;

        public C4469a(String str, int i, long j) {
            this.f10781a = str;
            this.f10782b = i;
            this.f10783c = j;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            C13103h.m4614a(new ReportLogRealmObject(this.f10781a, this.f10782b, this.f10783c));
            C13103h.m4612c();
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: a */
    public static File m28586a(final Context context, String str) throws Throwable, IOException, ParseException {
        File file;
        File file2;
        File file3;
        File file4 = new File(C14217x3.m2140g(context) + "/user_report/");
        C11511b.m9418g(file4);
        File file5 = new File(file4 + str);
        String p = C14217x3.m2118p();
        File file6 = new File(file4 + "/" + p + ".db");
        File file7 = new File(file4 + "/" + p + "_messaging.db");
        File file8 = new File(file4 + "/" + p + "_sdk.db");
        File file9 = new File(file4 + "/" + p + "_sdk_num.db");
        File file10 = new File(file4 + "/" + p + ".txt");
        if (C13963d3.m2967d()) {
            file = new File(file4 + "/" + p + "_apps.txt");
        } else {
            file = null;
        }
        File file11 = new File(file4 + "/" + p + "_disk.txt");
        File file12 = new File(file4 + "/" + p + "_permissions.txt");
        File file13 = new File(file4 + "/" + p + "_keys.txt");
        File file14 = new File(file4 + "/" + p + "_BlockRealmDb.realm");
        File file15 = new File(file4 + "/" + p + "_BlockLogRealmDb.realm");
        File file16 = new File(file4 + "/" + p + "_LogRealmDb.realm");
        if (C13565v.m3921g().m23335b()) {
            file2 = new File(file4 + "/" + p + "_IndexRealmDb.realm");
        } else {
            file2 = null;
        }
        File file17 = new File(file4 + "/" + p + "_FavoriteRealmDb.realm");
        File file18 = new File(file4 + "/" + p + "_MySpamRealmDb.realm");
        File file19 = new File(file4 + "/" + p + "_NoteRealmDb.realm");
        File file20 = new File(file4 + "/" + p + "_TagRealmDb.realm");
        File file21 = new File(file4 + "/" + p + "_WhiteListRealmDb.realm");
        File file22 = new File(file4 + "/" + p + "_InAppLogRealmDb.realm");
        if (C13963d3.m2966e()) {
            file3 = new File(file4 + "/" + p + "_ContactRealmDb.realm");
        } else {
            file3 = null;
        }
        File file23 = new File(file4 + "/" + p + "_IapPlanRealmDb.realm");
        File file24 = new File(file4 + "/" + p + "_IapSubscriptionStatusRealmDb.realm");
        File file25 = new File(file4 + "/" + p + "_MessageUrlScanRealmDb.realm");
        File file26 = new File(file4 + "/" + p + "_native_call_logs.csv");
        File file27 = new File(file4 + "/" + p + "_native_sms_logs.csv");
        File file28 = new File(file4 + "/" + p + "_native_mms_logs.csv");
        C11511b.m9434a(context.getDatabasePath("whoscall.db"), file6);
        C11511b.m9434a(context.getDatabasePath("bugle_db"), file7);
        C11511b.m9434a(C6334a.m23211s().m23218l(), file8);
        C11511b.m9434a(C6334a.m23211s().m23217m(), file9);
        C13032a.m4747b();
        C13041b.m4722b();
        C13131j.m4539b();
        C13110i.m4581c();
        C13057d.m4678c();
        C13175m.m4469b();
        C13182n.m4455b();
        C13198r.m4425b();
        C13217t.m4397b();
        C13103h.m4613b();
        C13048c.m4710b();
        C13085e.m4640b();
        C13096g.m4622b();
        C13165k.m4485b();
        C11511b.m9434a(C13032a.m4736g(), file14);
        C11511b.m9434a(C13041b.m4718e(), file15);
        C11511b.m9434a(C13131j.m4523f(), file16);
        if (file2 != null) {
            C11511b.m9434a(C13110i.m4573e(), file2);
        }
        C11511b.m9434a(C13057d.m4675d(), file17);
        C11511b.m9434a(C13175m.m4468c(), file18);
        C11511b.m9434a(C13182n.m4454c(), file19);
        C11511b.m9434a(C13198r.m4424c(), file20);
        C11511b.m9434a(C13217t.m4396c(), file21);
        C11511b.m9434a(C13103h.m4611d(), file22);
        if (file3 != null) {
            C11511b.m9434a(C13048c.m4707d(), file3);
        }
        C11511b.m9434a(C13085e.m4635d(), file23);
        C11511b.m9434a(C13096g.m4621c(), file24);
        C11511b.m9434a(C13165k.m4484c(), file25);
        C11511b.m9423b(file10);
        C11511b.m9426a(C11511b.m9427a(new FileOutputStream(file10)), C13453l.f30228a);
        if (file != null) {
            C11511b.m9423b(file);
            C11511b.m9426a(new PrintStream(new FileOutputStream(file)), new AbstractC15118l() { // from class: j.a.s.g
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return LogManager.m28587a(context, (PrintStream) obj);
                }
            });
        }
        C11511b.m9423b(file11);
        C11511b.m9426a(C11511b.m9427a(new FileOutputStream(file11)), C13450i.f30225a);
        C11511b.m9423b(file12);
        C11511b.m9426a(C11511b.m9427a(new FileOutputStream(file12)), new AbstractC15118l() { // from class: j.a.s.h
            @Override // p626l.p641z.p642c.AbstractC15118l
            public final Object invoke(Object obj) {
                return LogManager.m28575b(context, (PrintStream) obj);
            }
        });
        C11511b.m9423b(file13);
        C11511b.m9426a(C11511b.m9427a(new FileOutputStream(file13)), C13454m.f30229a);
        m28583a(file26);
        m28570c(file27);
        m28574b(file28);
        ArrayList arrayList = new ArrayList(Arrays.asList(file6, file7, file8, file9, file10, file11, file12, file13, file14, file15, file17, file16, file18, file19, file20, file21, file22, file23, file24, file26, file27, file28, file25));
        if (file3 != null) {
            arrayList.add(file3);
        }
        if (file != null) {
            arrayList.add(file);
        }
        if (file2 != null) {
            arrayList.add(file2);
        }
        File[] fileArr = new File[arrayList.size()];
        arrayList.toArray(fileArr);
        C11512c.m9416a(C11512c.m9417a(new File(file4, str)), fileArr);
        return file5;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m28587a(Context context, PrintStream printStream) {
        try {
            PackageManager packageManager = context.getPackageManager();
            new Intent("android.intent.action.MAIN", (Uri) null).addCategory("android.intent.category.LAUNCHER");
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(0)) {
                if ((packageInfo.applicationInfo.flags & 1) == 0) {
                    printStream.println(((Object) packageInfo.applicationInfo.loadLabel(packageManager)) + " (" + packageInfo.packageName + ")");
                }
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m28582a(PrintStream printStream) {
        printStream.println("CountryCode : " + C14017g4.m2810n());
        printStream.print("\r\n===== Prefs default =====\r\n");
        printStream.print(m28577a(C13915b3.m3068a()));
        int h = C12810o.m5237h();
        printStream.print("\r\n===== Prefs sub:" + h + " =====\r\n");
        printStream.print(m28577a(C13981h.m2937a(h).m9470a()));
        printStream.print("\r\n===== Prefs SDK =====\r\n");
        printStream.print(m28577a(C6334a.m23211s().m23216n().getAll()));
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m28576a(String[] strArr, PrintStream printStream) {
        printStream.println("_id,number,date,type,duration,new,name");
        if (C13878a3.m3207k()) {
            try {
                Cursor query = MyApplication.m29013o().getContentResolver().query(CallLog.Calls.CONTENT_URI, strArr, "date > ?", new String[]{String.valueOf(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(3L))}, "date DESC");
                if (query != null) {
                    while (query.moveToNext()) {
                        printStream.println(query.getString(0) + "," + query.getString(1) + "," + query.getString(2) + "," + query.getString(3) + "," + query.getString(4) + "," + query.getString(5) + "," + query.getString(6));
                    }
                } else {
                    printStream.println("Cursor is null");
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Throwable th) {
                printStream.println("Exception occurs: " + th.getMessage());
                return null;
            }
        } else {
            printStream.println("No permission !");
            return null;
        }
    }

    /* renamed from: a */
    public static String m28585a(Context context, File... fileArr) throws Throwable, IOException, ParseException {
        File a = m28586a(context, "/user_report.rpt");
        File file = new File(C14217x3.m2140g(context) + "/user_report/");
        C15101l.m431a(a, C13992e4.m2921b(C15101l.m432a(a), C13992e4.m2922b(OJni.getEncryptKey(context)).getBytes()));
        if (fileArr != null) {
            for (int i = 0; i < fileArr.length; i++) {
                File file2 = new File(file + "/" + fileArr[i].getName());
                C11511b.m9434a(fileArr[i], file2);
                fileArr[i] = file2;
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(a);
        for (File file3 : fileArr) {
            arrayList.add(file3);
        }
        C11512c.m9416a(C11512c.m9417a(new File(file, "/whoscall_report.zip")), (File[]) arrayList.toArray(new File[0]));
        return new File(file + "//whoscall_report.zip").getAbsolutePath();
    }

    /* renamed from: a */
    public static String m28577a(Map<String, ?> map) {
        if (map == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append(" : ");
            sb.append(entry.getValue());
            sb.append("\r\n");
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m28584a(Intent intent) {
        m28568c(C14036j2.m2734a(intent));
    }

    /* renamed from: a */
    public static void m28583a(@NonNull File file) {
        try {
            C11511b.m9423b(file);
            final String[] strArr = {"_id", "number", "date", "type", "duration", "new", "name"};
            C11511b.m9426a(C11511b.m9420e(file), new AbstractC15118l() { // from class: j.a.s.k
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return LogManager.m28576a(strArr, (PrintStream) obj);
                }
            });
        } catch (Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: a */
    public static void m28581a(String str) {
        if (str != null) {
            m28580a(str, 1, System.currentTimeMillis());
        }
    }

    /* renamed from: a */
    public static void m28580a(String str, int i, long j) {
        try {
            Single.create(new C4469a(str, i, j)).subscribeOn(C14174u.m2292l()).subscribe(Actions.empty(), C14081m3.m2611a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m28579a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            m28580a(String.format("[%s] %s", str, str2), 2, System.currentTimeMillis());
        }
    }

    /* renamed from: a */
    public static void m28578a(String str, Date date) {
        if (C13565v.m3921g().m23335b()) {
            C13425c0.m4045i().m23320b("# " + f10780a.format(date) + "\n" + str);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ Object m28575b(Context context, PrintStream printStream) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            for (int i = 0; i < packageInfo.requestedPermissions.length; i++) {
                if ((packageInfo.requestedPermissionsFlags[i] & 2) != 0) {
                    printStream.println(packageInfo.requestedPermissions[i]);
                }
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ Object m28573b(PrintStream printStream) {
        try {
            long a = C11511b.m9431a(new File(MyApplication.m29013o().getApplicationInfo().dataDir), printStream);
            printStream.println((a / 1000) + "KB total");
            printStream.println("========================");
            long a2 = C11511b.m9431a(MyApplication.m29013o().getExternalCacheDir().getParentFile(), printStream);
            printStream.println((a2 / 1000) + "KB total");
            printStream.println("========================");
            long a3 = C11511b.m9431a(new File(C13008c.m4789j()), printStream);
            printStream.println((a3 / 1000) + "KB total");
            printStream.println("========================");
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ Object m28571b(String[] strArr, PrintStream printStream) {
        printStream.println("_id,tid,c_type,m_type,m_box,m_cls,m_id,m_size,read,read_status,seen,date,date_sent");
        if (C12810o.m5233l()) {
            try {
                Cursor query = MyApplication.m29013o().getContentResolver().query(Telephony.Mms.CONTENT_URI, strArr, "date > ?", new String[]{String.valueOf(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(3L))}, "date DESC");
                if (query != null) {
                    while (query.moveToNext()) {
                        printStream.println(query.getString(0) + "," + query.getString(1) + "," + query.getString(2) + "," + query.getString(3) + "," + query.getString(4) + "," + query.getString(5) + "," + query.getString(6) + "," + query.getString(7) + "," + query.getString(8) + "," + query.getString(9) + "," + query.getString(10) + "," + query.getString(11) + "," + query.getString(12));
                    }
                } else {
                    printStream.println("Cursor is null");
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Throwable th) {
                C14080m2.m2612a(th);
                printStream.println("Exception occurs: " + th.getMessage());
                return null;
            }
        } else {
            printStream.println("No permission !");
            return null;
        }
    }

    /* renamed from: b */
    public static void m28574b(@NonNull File file) {
        try {
            C11511b.m9423b(file);
            final String[] strArr = {"_id", "thread_id", "ct_t", "m_type", "msg_box", "m_cls", "m_id", "m_size", "read", "read_status", "seen", "date", "date_sent"};
            C11511b.m9426a(C11511b.m9420e(file), new AbstractC15118l() { // from class: j.a.s.n
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return LogManager.m28571b(strArr, (PrintStream) obj);
                }
            });
        } catch (Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: b */
    public static void m28572b(String str) {
        if (!TextUtils.isEmpty(str)) {
            m28580a(str, 2, System.currentTimeMillis());
        }
    }

    /* renamed from: c */
    public static /* synthetic */ Object m28569c(PrintStream printStream) {
        try {
            printStream.println("DB Passphrase : " + C6430c.m22634e());
            printStream.println("DB hex key 512 : " + C6430c.m22644a(512));
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static /* synthetic */ Object m28567c(String[] strArr, PrintStream printStream) {
        printStream.println("_id,address,date,type,body");
        if (C12810o.m5233l()) {
            try {
                Cursor query = MyApplication.m29013o().getContentResolver().query(Telephony.Sms.CONTENT_URI, strArr, "date > ?", new String[]{String.valueOf(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(3L))}, "date DESC");
                if (query != null) {
                    while (query.moveToNext()) {
                        String string = query.getString(4);
                        StringBuilder sb = new StringBuilder();
                        sb.append(query.getString(0));
                        sb.append(",");
                        sb.append(query.getString(1));
                        sb.append(",");
                        sb.append(query.getString(2));
                        sb.append(",");
                        sb.append(query.getString(3));
                        sb.append(",");
                        sb.append(Base64.encodeToString((string == null || string.length() <= 20) ? new byte[0] : string.substring(0, 20).getBytes("UTF-8"), 2));
                        printStream.println(sb.toString());
                    }
                } else {
                    printStream.println("Cursor is null");
                }
                if (query == null) {
                    return null;
                }
                query.close();
                return null;
            } catch (Throwable th) {
                C14080m2.m2612a(th);
                printStream.println("Exception occurs: " + th.getMessage());
                return null;
            }
        } else {
            printStream.println("No permission !");
            return null;
        }
    }

    /* renamed from: c */
    public static void m28570c(@NonNull File file) {
        try {
            C11511b.m9423b(file);
            final String[] strArr = {"_id", "address", "date", "type", "body"};
            C11511b.m9426a(C11511b.m9420e(file), new AbstractC15118l() { // from class: j.a.s.j
                @Override // p626l.p641z.p642c.AbstractC15118l
                public final Object invoke(Object obj) {
                    return LogManager.m28567c(strArr, (PrintStream) obj);
                }
            });
        } catch (Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: c */
    public static void m28568c(String str) {
        if (str != null) {
            m28578a(str, Calendar.getInstance().getTime());
            m28580a(str, 2, System.currentTimeMillis());
        }
    }

    public static void printSDKDebugLog(String str) {
        TextUtils.isEmpty(str);
    }

    public static void putEventDiaperLog(String str) {
        if (str != null && !str.equals("response data = ")) {
            m28580a(str, 0, System.currentTimeMillis());
        }
    }

    public static void putNotificationLog(String str) {
        if (str != null) {
            m28578a(str, Calendar.getInstance().getTime());
        }
    }
}
