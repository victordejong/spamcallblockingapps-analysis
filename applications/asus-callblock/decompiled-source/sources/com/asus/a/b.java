package com.asus.a;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Patterns;
import com.android.contacts.activities.CallGuardAddToContactsActivity;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/a/b.class */
public final class b {
    private static boolean f = false;

    /* renamed from: a  reason: collision with root package name */
    public static boolean f2363a = true;

    /* renamed from: b  reason: collision with root package name */
    public static boolean f2364b = false;
    public static List<e> c = new ArrayList();
    public static List<f> d = new ArrayList();
    public static String e = "ASUS_TIME_BLOCK_MODE_FREQUENT_GROUP_ID";

    /* loaded from: classes-dex2jar.jar:com/asus/a/b$a.class */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2365a = Uri.parse("content://com.asus.asuscallerid" + File.separator + "init");

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2366b = Uri.parse("content://com.asus.asuscallerid" + File.separator + "asuscallerid");
        public static final Uri c = Uri.parse("content://com.asus.asuscallerid" + File.separator + "businesscard");
        public static final Uri d = Uri.parse("content://com.asus.asuscallerid" + File.separator + "gradeinfo");
        public static final Uri e = Uri.parse("content://com.asus.asuscallerid" + File.separator + "onlinestratery");
        public static final Uri f = Uri.parse("content://com.asus.asuscallerid" + File.separator + "isspammessage");
        public static final Uri g = Uri.parse("content://com.asus.asuscallerid" + File.separator + "tag");
        public static final Uri h = Uri.parse("content://com.asus.asuscallerid" + File.separator + "user_tag");
    }

    /* renamed from: com.asus.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/a/b$b.class */
    public interface AbstractC0062b {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2367a = Uri.parse("content://com.asus.blocklabel.provider");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/b$c.class */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2368a = Uri.parse("content://blocklist" + File.separator + "blocklist");

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2369b = Uri.parse("content://blocklist" + File.separator + "blocktag");
        public static final Uri c = Uri.parse("content://blocklist" + File.separator + "tagname");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/b$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public String f2370a;

        /* renamed from: b  reason: collision with root package name */
        public String f2371b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public int j;
        public int k;
        public boolean l;
        public boolean m;
        public byte[] n;
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/b$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public String f2372a;

        /* renamed from: b  reason: collision with root package name */
        public String f2373b;
        public String c;
        public String d;
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/b$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public String f2374a;

        /* renamed from: b  reason: collision with root package name */
        public float f2375b;
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/b$g.class */
    private static final class g extends AsyncTask<String, Void, d> {

        /* renamed from: a  reason: collision with root package name */
        private Bitmap f2376a;

        g(Bitmap bitmap) {
            this.f2376a = bitmap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public d doInBackground(String... strArr) {
            String str = strArr[0];
            if (this.f2376a == null) {
                return null;
            }
            try {
                File file = new File("sdcard/ASUS/Callguard/");
                if (!file.exists()) {
                    file.mkdirs();
                }
                FileOutputStream fileOutputStream = new FileOutputStream("sdcard/ASUS/Callguard/" + str + ".png");
                this.f2376a.compress(Bitmap.CompressFormat.PNG, 85, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return null;
            } catch (Exception e) {
                Log.d("AsusCallerID", "[downloadLogoTask] Fail to save bitmap,Exception : " + e.toString());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(d dVar) {
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0238  */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap a(android.content.Context r7, com.asus.a.b.d r8) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.a(android.content.Context, com.asus.a.b$d):android.graphics.Bitmap");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap a(com.asus.a.b.d r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.a(com.asus.a.b$d):android.graphics.Bitmap");
    }

    public static String a(String str) {
        return (str == null || str.contains("#") || str.contains("*")) ? new String(BuildConfig.FLAVOR) : str.replaceAll("\\s", BuildConfig.FLAVOR);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5  */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> a(android.content.Context r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r7
            boolean r0 = f(r0)
            if (r0 == 0) goto L_0x0037
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0027
            android.net.Uri r1 = com.asus.a.b.AbstractC0062b.f2367a     // Catch: Exception -> 0x0027
            java.lang.String r2 = "getAllBlockTag"
            r3 = 0
            r4 = 0
            android.os.Bundle r0 = r0.call(r1, r2, r3, r4)     // Catch: Exception -> 0x0027
            java.lang.String r1 = "result"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)     // Catch: Exception -> 0x0027
            r7 = r0
        L_0x0025:
            r0 = r7
            return r0
        L_0x0027:
            r7 = move-exception
            java.lang.String r0 = "AsusCallerID"
            r1 = r7
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = r8
            r7 = r0
            goto L_0x0025
        L_0x0037:
            android.net.Uri r0 = com.asus.a.b.c.f2369b
            r9 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x009c, Exception -> 0x00b3
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x009c, Exception -> 0x00b3
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x008f
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0.moveToPrevious()     // Catch: Exception -> 0x0073, all -> 0x00ad
        L_0x0055:
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0.moveToNext()     // Catch: Exception -> 0x0073, all -> 0x00ad
            if (r0 == 0) goto L_0x008f
            r0 = r9
            r7 = r0
            r0 = r8
            r1 = r9
            r2 = 0
            java.lang.String r1 = r1.getString(r2)     // Catch: Exception -> 0x0073, all -> 0x00ad
            boolean r0 = r0.add(r1)     // Catch: Exception -> 0x0073, all -> 0x00ad
            goto L_0x0055
        L_0x0073:
            r10 = move-exception
        L_0x0074:
            r0 = r9
            r7 = r0
            java.lang.String r0 = "AsusCallerID"
            r1 = r10
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00ad
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x00ad
            r0 = r9
            if (r0 == 0) goto L_0x008a
            r0 = r9
            r0.close()
        L_0x008a:
            r0 = r8
            r7 = r0
            goto L_0x0025
        L_0x008f:
            r0 = r9
            if (r0 == 0) goto L_0x008a
            r0 = r9
            r0.close()
            goto L_0x008a
        L_0x009c:
            r7 = move-exception
            r0 = 0
            r8 = r0
            r0 = r7
            r9 = r0
        L_0x00a1:
            r0 = r8
            if (r0 == 0) goto L_0x00ab
            r0 = r8
            r0.close()
        L_0x00ab:
            r0 = r9
            throw r0
        L_0x00ad:
            r9 = move-exception
            r0 = r7
            r8 = r0
            goto L_0x00a1
        L_0x00b3:
            r10 = move-exception
            r0 = 0
            r9 = r0
            goto L_0x0074
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.a(android.content.Context):java.util.List");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(4:4|(1:6)|37|38)|65|(5:9|(2:11|63)(1:64)|12|58|7)|61|13|(4:15|59|16|(2:(15:18|19|20|21|22|23|24|25|26|27|28|29|30|31|32)|66))|34|(1:36)|37|38|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00cf, code lost:
        r12 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d1, code lost:
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0106, code lost:
        r8 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0107, code lost:
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010a, code lost:
        if (r7 != 0) goto L_0x010d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010d, code lost:
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0114, code lost:
        throw r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.asus.a.b.e> a(android.content.Context r7, java.lang.String[] r8) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.a(android.content.Context, java.lang.String[]):java.util.List");
    }

    public static void a(Context context, String str) {
        Intent intent = new Intent();
        intent.setAction("com.asus.app.CallGuardAddToContacts");
        intent.putExtra(CallGuardAddToContactsActivity.ASUS_CALL_GUARD_ADD_TO_CONTACTS_NUMBER, str);
        intent.putExtra(CallGuardAddToContactsActivity.ASUS_CALL_GUARD_ADD_TO_CONTACTS_NAME, (String) null);
        if (context != null) {
            ImplicitIntentsUtil.startActivityInApp(context, intent);
        } else {
            Log.d("AsusCallerID", "addToContacts Fail: context is null");
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction("com.asus.app.CallGuardAddToContacts");
        intent.putExtra(CallGuardAddToContactsActivity.ASUS_CALL_GUARD_ADD_TO_CONTACTS_NUMBER, str);
        intent.putExtra(CallGuardAddToContactsActivity.ASUS_CALL_GUARD_ADD_TO_CONTACTS_NAME, str2);
        intent.putExtra(CallGuardAddToContactsActivity.ASUS_CALL_GUARD_ADD_TO_CONTACTS_EMAIL, str3);
        if (context != null) {
            ImplicitIntentsUtil.startActivityInApp(context, intent);
        } else {
            Log.d("AsusCallerID", "addToContacts Fail: context is null");
        }
    }

    public static boolean a() {
        return false;
    }

    public static boolean a(Context context, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.clear();
        contentValues.put("caller_type", str2);
        String a2 = a(str);
        boolean z = false;
        if (!a2.isEmpty()) {
            c(context);
            try {
                z = false;
                if (context.getContentResolver().insert(Uri.withAppendedPath(a.g, a2), contentValues).getLastPathSegment().equals("true")) {
                    z = true;
                }
            } catch (Exception e2) {
                Log.d("AsusCallerID", e2.toString());
                z = false;
            }
        }
        if (z) {
            k(context, a2);
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.asus.a.b.d b(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.b(android.content.Context, java.lang.String):com.asus.a.b$d");
    }

    public static void b(Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.ASUS_ENTER_CALLGUARD_SETTING");
        intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        if (context != null) {
            context.startActivity(intent);
        } else {
            Log.d("AsusCallerID", "startCallGuardSetting Fail: context is null");
        }
    }

    public static boolean b() {
        return false;
    }

    public static boolean b(String str) {
        return c(str);
    }

    public static int c(Context context) {
        int i = 2;
        try {
            int i2 = context.getPackageManager().getPackageInfo("com.android.server.telecom", 0).versionCode;
            Log.d("AsusCallerID", "Telecom versionCode = " + i2);
            if (i2 >= 22) {
                i = 3;
            }
        } catch (Exception e2) {
            Log.d("AsusCallerID", "Fail to get app version, Exception: " + e2.toString());
            i = 2;
        }
        try {
            Settings.Global.putInt(context.getContentResolver(), "callerIDVersion", i);
        } catch (Exception e3) {
            Log.d("AsusCallerID", "Fail to write callerIDVersion, Exception: " + e3.toString());
        }
        int i3 = Settings.Global.getInt(context.getContentResolver(), "callerIDVersion", i);
        Log.d("AsusCallerID", "CallerIDVersion= " + i3);
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.asus.a.b.e> c(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.c(android.content.Context, java.lang.String):java.util.List");
    }

    public static boolean c() {
        return false;
    }

    public static boolean c(String str) {
        return TextUtils.isEmpty(str) ? false : Patterns.PHONE.matcher(str).matches();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    public static List<f> d(Context context, String str) {
        Exception e2;
        Cursor cursor;
        boolean d2 = d(context);
        e(context);
        d.clear();
        if (!d2 || f) {
            String a2 = a(str);
            try {
                if (!a2.isEmpty()) {
                    try {
                        c((Context) context);
                        cursor = context.getContentResolver().query(Uri.withAppendedPath(a.d, a2), null, null, null, null);
                        if (cursor != null) {
                            try {
                                if (cursor.moveToFirst()) {
                                    do {
                                        f fVar = new f();
                                        fVar.f2375b = cursor.getFloat(0);
                                        fVar.f2374a = cursor.getString(1);
                                        d.add(fVar);
                                    } while (cursor.moveToNext());
                                }
                            } catch (Exception e3) {
                                e2 = e3;
                                Log.d("AsusCallerID", "Fail to gardeInfo Exception = " + e2.toString());
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return d;
                            }
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Exception e4) {
                        e2 = e4;
                        cursor = null;
                    } catch (Throwable th) {
                        th = th;
                        context = 0;
                        if (context != 0) {
                            context.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return d;
    }

    private static boolean d(Context context) {
        boolean z = false;
        int i = Settings.Global.getInt(context.getContentResolver(), "TOUCH_PAL_IS_ONLINE", 0);
        c(context);
        if (i == 0) {
            z = true;
        }
        return z;
    }

    private static boolean e(Context context) {
        boolean z = true;
        int i = Settings.Global.getInt(context.getContentResolver(), "callguard_connection_type", 1);
        Log.d("AsusCallerID", "queryWifiOnly = " + i);
        if (i != 1) {
            z = false;
        }
        return z;
    }

    public static boolean e(Context context, String str) {
        r10 = true;
        String a2 = a(str);
        boolean z = false;
        if (!a2.isEmpty()) {
            c(context);
            try {
                if (context.getContentResolver().delete(Uri.withAppendedPath(a.g, str), null, null) != 1) {
                    z = false;
                }
            } catch (Exception e2) {
                Log.d("AsusCallerID", e2.toString());
                z = false;
            }
        }
        if (z) {
            j(context, a2);
        }
        return z;
    }

    public static void f(Context context, String str) {
        if (f(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("tag_name", str);
            try {
                context.getContentResolver().call(AbstractC0062b.f2367a, "addBlockTag", (String) null, bundle);
            } catch (Exception e2) {
                Log.d("AsusCallerID", e2.toString());
            }
        } else {
            Uri withAppendedPath = Uri.withAppendedPath(c.c, str);
            try {
                context.getContentResolver().delete(withAppendedPath, null, null);
                ContentValues contentValues = new ContentValues();
                contentValues.put("tag_name", str);
                context.getContentResolver().insert(withAppendedPath, contentValues);
            } catch (Exception e3) {
                Log.d("AsusCallerID", e3.toString());
            }
        }
    }

    private static boolean f(Context context) {
        boolean z = false;
        try {
            if (context.getPackageManager().resolveContentProvider("com.asus.blocklabel.provider", 0) != null) {
                z = true;
            }
        } catch (Exception e2) {
            Log.d("AsusCallerID", "Fail to get app version, Exception: " + e2.toString());
        }
        Log.d("AsusCallerID", "isBlockInterfaceExist = " + z);
        return z;
    }

    public static void g(Context context, String str) {
        if (f(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("tag_name", str);
            try {
                context.getContentResolver().call(AbstractC0062b.f2367a, "removeBlockTag", (String) null, bundle);
            } catch (Exception e2) {
                Log.d("AsusCallerID", e2.toString());
            }
        } else {
            try {
                context.getContentResolver().delete(Uri.withAppendedPath(c.c, str), null, null);
            } catch (Exception e3) {
                Log.d("AsusCallerID", e3.toString());
            }
        }
    }

    public static void h(Context context, String str) {
        c(context);
        try {
            Cursor query = context.getContentResolver().query(Uri.withAppendedPath(a.e, str), null, null, null, null);
            if (query != null) {
                query.close();
            }
        } catch (Exception e2) {
            Log.d("AsusCallerID", e2.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean i(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.b.i(android.content.Context, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void j(Context context, String str) {
        String a2 = a(str);
        if (a2.isEmpty()) {
            return;
        }
        if (f(context)) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("number", str);
                context.getContentResolver().call(AbstractC0062b.f2367a, "removeFromUserTagList", (String) null, bundle);
            } catch (Exception e2) {
                Log.d("AsusCallerID", e2.toString());
            }
        } else {
            try {
                context.getContentResolver().delete(Uri.withAppendedPath(a.h, a2), null, null);
            } catch (Exception e3) {
                Log.d("AsusCallerID", e3.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void k(Context context, String str) {
        String a2 = a(str);
        if (a2.isEmpty()) {
            return;
        }
        if (f(context)) {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("number", str);
                context.getContentResolver().call(AbstractC0062b.f2367a, "insertIntoUserTagList", (String) null, bundle);
            } catch (Exception e2) {
                Log.d("AsusCallerID", e2.toString());
            }
        } else {
            Uri withAppendedPath = Uri.withAppendedPath(a.h, a2);
            try {
                context.getContentResolver().delete(withAppendedPath, null, null);
                ContentValues contentValues = new ContentValues();
                contentValues.put("number", a2);
                context.getContentResolver().insert(withAppendedPath, contentValues);
            } catch (Exception e3) {
                Log.d("AsusCallerID", e3.toString());
            }
        }
    }
}
