package com.asus.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.a.b;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/a/a.class */
public final class a {
    private static boolean e = false;

    /* renamed from: a  reason: collision with root package name */
    public static boolean f2350a = false;

    /* renamed from: b  reason: collision with root package name */
    public static List<e> f2351b = new ArrayList();
    public static List<f> c = new ArrayList();
    public static String d = "ASUS_TIME_BLOCK_MODE_FREQUENT_GROUP_ID";

    /* renamed from: com.asus.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/a/a$a.class */
    public interface AbstractC0061a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2352a = Uri.parse("content://com.asus.asuscallguard");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/a$b.class */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2353a = Uri.parse("content://com.asus.blocklist.provider" + File.separator + "blocklist");

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2354b = Uri.parse("content://com.asus.blocklist.provider" + File.separator + "blocktags");
        public static final Uri c = Uri.parse("content://com.asus.blocklist.provider" + File.separator + "usertags");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public String f2355a;

        /* renamed from: b  reason: collision with root package name */
        public String f2356b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public int k;
        public int l;
        public boolean m;
        public boolean n;
        public byte[] o;
        public int p;

        public final boolean equals(Object obj) {
            boolean equals;
            if (obj instanceof c) {
                c cVar = (c) obj;
                if (this.f2356b == null ? cVar.f2356b == null || cVar.f2356b.equals(this.f2356b) : this.f2356b.equals(cVar.f2356b)) {
                    if (this.c == null ? cVar.c == null || cVar.c.equals(this.c) : this.c.equals(cVar.c)) {
                        if (this.e == null ? cVar.e == null || cVar.e.equals(this.e) : this.e.equals(cVar.e)) {
                            if (this.f == null ? cVar.f == null || cVar.f.equals(this.f) : this.f.equals(cVar.f)) {
                                if (this.g == null ? cVar.g == null || cVar.g.equals(this.g) : this.g.equals(cVar.g)) {
                                    if (this.h == null ? cVar.h == null || cVar.h.equals(this.h) : this.h.equals(cVar.h)) {
                                        if (this.i == null ? cVar.i == null || cVar.i.equals(this.i) : this.i.equals(cVar.i)) {
                                            if (this.o == null ? cVar.o == null || cVar.o.equals(this.o) : this.o.equals(cVar.o)) {
                                                if (cVar.k == this.k && cVar.l == this.l && cVar.m == this.m && cVar.n == this.n && cVar.p == this.p) {
                                                    Log.d("AsusCallGuard", "equals: t");
                                                    equals = true;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Log.d("AsusCallGuard", "equals: f");
                equals = false;
            } else {
                Log.d("AsusCallGuard", "equals: super");
                equals = super.equals(obj);
            }
            return equals;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/a$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public String f2357a;

        /* renamed from: b  reason: collision with root package name */
        public String f2358b;
        public String c;
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/a$e.class */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public String f2359a;

        /* renamed from: b  reason: collision with root package name */
        public String f2360b;
        public String c;
        public String d;
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/a$f.class */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public String f2361a;

        /* renamed from: b  reason: collision with root package name */
        public float f2362b;
    }

    public static Bitmap a(Context context, c cVar) {
        Bitmap bitmap = null;
        d i = i(context);
        if (i != null && ("touchpal".equals(i.f2357a) || b())) {
            b.d dVar = new b.d();
            dVar.f2370a = cVar.f2355a;
            dVar.f2371b = cVar.f2356b;
            dVar.c = cVar.c;
            dVar.d = cVar.d;
            dVar.j = cVar.k;
            dVar.k = cVar.l;
            dVar.m = cVar.n;
            dVar.l = cVar.m;
            dVar.n = cVar.o;
            dVar.e = cVar.e;
            dVar.f = cVar.f;
            dVar.g = cVar.h;
            dVar.h = cVar.i;
            dVar.i = cVar.j;
            bitmap = com.asus.a.b.a(context, dVar);
        }
        return bitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0230  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.asus.a.a.c a(android.content.Context r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.a.a(android.content.Context, java.lang.String, java.lang.String):com.asus.a.a$c");
    }

    public static String a(String str) {
        return com.asus.a.b.a(str);
    }

    public static List<String> a(Context context) {
        return com.asus.a.b.a(context);
    }

    public static List<e> a(Context context, String[] strArr) {
        ArrayList arrayList = null;
        d i = i(context);
        if (i != null && ("touchpal".equals(i.f2357a) || b())) {
            arrayList = new ArrayList();
            for (b.e eVar : com.asus.a.b.a(context, strArr)) {
                e eVar2 = new e();
                eVar2.f2359a = eVar.f2372a;
                eVar2.f2360b = eVar.f2373b;
                eVar2.c = eVar.c;
                eVar2.d = eVar.d;
                arrayList.add(eVar2);
            }
        }
        return arrayList;
    }

    public static void a(Context context, String str) {
        com.asus.a.b.a(context, str);
    }

    public static void a(Context context, String str, String str2, String str3) {
        com.asus.a.b.a(context, str, str2, str3);
    }

    public static boolean a() {
        return com.asus.a.b.b();
    }

    public static int b(Context context) {
        List<String> a2 = com.asus.a.b.a(context);
        return a2 != null ? a2.size() : 0;
    }

    public static List<e> b(Context context, String str) {
        ArrayList arrayList = null;
        d i = i(context);
        if (i != null && ("touchpal".equals(i.f2357a) || b())) {
            arrayList = new ArrayList();
            for (b.e eVar : com.asus.a.b.c(context, str)) {
                e eVar2 = new e();
                eVar2.f2359a = eVar.f2372a;
                eVar2.f2360b = eVar.f2373b;
                eVar2.c = eVar.c;
                eVar2.d = eVar.d;
                arrayList.add(eVar2);
            }
        }
        return arrayList;
    }

    public static boolean b() {
        return com.asus.a.b.f2363a ? com.asus.a.c.a() : com.asus.a.b.c();
    }

    public static boolean b(Context context, String str, String str2, String str3) {
        boolean z = false;
        boolean z2 = false;
        z2 = false;
        Log.d("AsusCallGuard", "markNumber: phoneNumber:" + c(str) + ", tagName:" + str2 + ", tagValue:" + str3);
        d i = i(context);
        if (i != null) {
            if ("touchpal".equals(i.f2357a) || b()) {
                z2 = com.asus.a.b.a(context, str, str2);
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("caller_type", str2);
                contentValues.put("caller_type_value", str3);
                String a2 = com.asus.a.b.a(str);
                if (!a2.isEmpty()) {
                    try {
                        if (context.getContentResolver().insert(Uri.withAppendedPath(Uri.parse("content://" + i.f2358b + File.separator + i.c + File.separator + "tag"), a2), contentValues).getLastPathSegment().equals("true")) {
                            z = true;
                        }
                        z2 = z;
                        if (z) {
                            z2 = z;
                            d i2 = i(context);
                            z2 = z;
                            if (i2 != null) {
                                if ("touchpal".equals(i2.f2357a) || b()) {
                                    z2 = z;
                                    com.asus.a.b.k(context, a2);
                                    z2 = z;
                                } else {
                                    String a3 = com.asus.a.b.a(a2);
                                    z2 = z;
                                    z2 = z;
                                    if (!a3.isEmpty()) {
                                        z2 = z;
                                        Uri withAppendedPath = Uri.withAppendedPath(b.c, a3);
                                        try {
                                            context.getContentResolver().delete(withAppendedPath, null, null);
                                            ContentValues contentValues2 = new ContentValues();
                                            contentValues2.put("number", a3);
                                            context.getContentResolver().insert(withAppendedPath, contentValues2);
                                            z2 = z;
                                        } catch (Exception e2) {
                                            z2 = z;
                                            Log.d("AsusCallGuard", e2.toString());
                                            z2 = z;
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e3) {
                        Log.d("AsusCallGuard", e3.toString());
                    }
                }
            }
        }
        return z2;
    }

    public static boolean b(String str) {
        return com.asus.a.b.b(str);
    }

    public static String c(String str) {
        return TextUtils.isEmpty(str) ? new String(BuildConfig.FLAVOR) : str.length() > 3 ? new String("*****" + str.substring(str.length() - 3)) : new String("*****" + str.substring(str.length() - 1));
    }

    public static List<f> c(Context context, String str) {
        ArrayList arrayList = null;
        d i = i(context);
        if (i != null && ("touchpal".equals(i.f2357a) || b())) {
            arrayList = new ArrayList();
            for (b.f fVar : com.asus.a.b.d(context, str)) {
                f fVar2 = new f();
                fVar2.f2361a = fVar.f2374a;
                fVar2.f2362b = fVar.f2375b;
                arrayList.add(fVar2);
            }
        }
        return arrayList;
    }

    public static boolean c() {
        return b();
    }

    public static boolean c(Context context) {
        com.asus.a.b.b();
        return h(context);
    }

    public static boolean d() {
        return com.asus.a.b.a();
    }

    public static boolean d(Context context) {
        boolean z;
        boolean z2 = true;
        try {
            Bundle call = context.getContentResolver().call(AbstractC0061a.f2352a, "isCallGuardEnable", String.valueOf(b()), (Bundle) null);
            z = call == null ? false : call.getBoolean("isCallGuardEnable", false);
        } catch (Exception e2) {
            Log.d("AsusCallGuard", "fail to get EnableInfo due to:" + e2.toString());
            z = false;
        }
        com.asus.a.b.b();
        boolean z3 = h(context) && z && e(context);
        Log.d("AsusCallGuard", "Is AsusCallerID/AsusCallGuard on = false/" + z3);
        if (!z3) {
            z2 = false;
        }
        return z2;
    }

    public static boolean d(Context context, String str) {
        boolean z = false;
        boolean z2 = false;
        z2 = false;
        Log.d("AsusCallGuard", "unMarkNumber");
        d i = i(context);
        if (i != null) {
            if ("touchpal".equals(i.f2357a) || b()) {
                z2 = com.asus.a.b.e(context, str);
            } else {
                String a2 = com.asus.a.b.a(str);
                if (!a2.isEmpty()) {
                    try {
                        if (context.getContentResolver().delete(Uri.withAppendedPath(Uri.parse("content://" + i.f2358b + File.separator + i.c + File.separator + "tag"), a2), null, null) == 1) {
                            z = true;
                        }
                        z2 = z;
                        if (z) {
                            z2 = z;
                            d i2 = i(context);
                            z2 = z;
                            if (i2 != null) {
                                if ("touchpal".equals(i2.f2357a) || b()) {
                                    z2 = z;
                                    com.asus.a.b.j(context, a2);
                                    z2 = z;
                                } else {
                                    String a3 = com.asus.a.b.a(a2);
                                    z2 = z;
                                    z2 = z;
                                    if (!a3.isEmpty()) {
                                        z2 = z;
                                        try {
                                            context.getContentResolver().delete(Uri.withAppendedPath(b.c, a3), null, null);
                                            z2 = z;
                                        } catch (Exception e2) {
                                            z2 = z;
                                            Log.d("AsusCallGuard", e2.toString());
                                            z2 = z;
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e3) {
                        Log.d("AsusCallGuard", e3.toString());
                    }
                }
            }
        }
        return z2;
    }

    public static void e(Context context, String str) {
        com.asus.a.b.f(context, str);
    }

    public static boolean e(Context context) {
        UserHandle myUserHandle = Process.myUserHandle();
        UserManager userManager = (UserManager) context.getApplicationContext().getSystemService("user");
        return userManager != null ? 0 == userManager.getSerialNumberForUser(myUserHandle) : false;
    }

    public static void f(Context context) {
        com.asus.a.b.b(context);
    }

    public static void f(Context context, String str) {
        com.asus.a.b.g(context, str);
    }

    public static int g(Context context) {
        return com.asus.a.b.c(context);
    }

    public static void g(Context context, String str) {
        d i = i(context);
        if (i != null) {
            if ("touchpal".equals(i.f2357a) || b()) {
                com.asus.a.b.h(context, str);
                return;
            }
            context.getContentResolver().update(Uri.withAppendedPath(Uri.parse("content://" + i.f2358b + File.separator + i.c + File.separator + "onlinestratery"), str), null, null, null);
        }
    }

    public static boolean h(Context context) {
        boolean z = false;
        Bundle bundle = null;
        if (!com.asus.a.b.f2363a || !f2350a) {
            try {
                bundle = context.getContentResolver().call(AbstractC0061a.f2352a, "isSupportAsusEngine", (String) null, (Bundle) null);
            } catch (Exception e2) {
                Log.d("AsusCallGuard", "fail to get engineInfo due to provider not exist.");
            }
            if (bundle != null) {
                z = bundle.getBoolean("isSupportAsusEngine", false);
            }
            com.asus.a.c.b(z);
            f2350a = true;
            Log.d("AsusCallGuard", "isSupportAsus=" + z);
        } else {
            Log.d("AsusCallGuard", "CallguardUtil isSupportAsus=" + com.asus.a.c.b());
            z = com.asus.a.c.b();
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.a.h(android.content.Context, java.lang.String):boolean");
    }

    public static d i(Context context) {
        d dVar;
        d dVar2 = new d();
        try {
            Bundle call = context.getContentResolver().call(AbstractC0061a.f2352a, "query_engine_info", (String) null, (Bundle) null);
            dVar2.f2358b = call.getString("asus_engine_authority");
            dVar2.f2357a = call.getString("asus_engine_name");
            dVar2.c = call.getString("asus_engine_path");
        } catch (Exception e2) {
            Log.d("AsusCallGuard", "exception in queryEngineInfo: " + e2.toString());
        }
        if (dVar2.f2358b == null || dVar2.f2357a == null || dVar2.c == null) {
            dVar = dVar2;
            if (!b()) {
                dVar = null;
            }
        } else {
            dVar = dVar2;
        }
        return dVar;
    }

    public static c[] i(Context context, String str) {
        c[] cVarArr;
        d i = i(context);
        if (i == null) {
            cVarArr = null;
        } else {
            cVarArr = null;
            if (!"touchpal".equals(i.f2357a)) {
                cVarArr = null;
                if (!b()) {
                    Uri parse = Uri.parse("content://" + i.f2358b + File.separator + i.c + File.separator + "recommand_tag");
                    boolean j = j(context);
                    ArrayList arrayList = new ArrayList();
                    String a2 = com.asus.a.b.a(str);
                    if (!a2.equals(BuildConfig.FLAVOR)) {
                        Cursor query = context.getContentResolver().query(Uri.withAppendedPath(parse, a2), null, null, null, String.valueOf(j));
                        try {
                            if (query != null) {
                                try {
                                    if (query.moveToFirst()) {
                                        do {
                                            c cVar = new c();
                                            cVar.f2355a = query.getString(query.getColumnIndex("number"));
                                            cVar.d = query.getString(query.getColumnIndex(ContactDetailCallogActivity.EXTRA_NAME));
                                            cVar.c = query.getString(query.getColumnIndex("type"));
                                            cVar.p = query.getInt(query.getColumnIndex("weight"));
                                            arrayList.add(cVar);
                                        } while (query.moveToNext());
                                    }
                                } catch (Exception e2) {
                                    Log.d("AsusCallGuard", "Fail to getRecommandResult Exception = " + e2.toString());
                                    if (query != null) {
                                        query.close();
                                    }
                                }
                            }
                            query.close();
                            if (query != null) {
                                query.close();
                            }
                        } catch (Throwable th) {
                            if (query != null) {
                                query.close();
                            }
                            throw th;
                        }
                    }
                    if (arrayList.size() != 0) {
                        Collections.sort(arrayList, new Comparator<c>() { // from class: com.asus.a.a.1
                            @Override // java.util.Comparator
                            public final /* bridge */ /* synthetic */ int compare(c cVar2, c cVar3) {
                                return cVar3.p - cVar2.p;
                            }
                        });
                    }
                    List subList = arrayList.size() > 5 ? arrayList.subList(0, 5) : arrayList.subList(0, arrayList.size());
                    cVarArr = (c[]) subList.toArray(new c[subList.size()]);
                }
            }
        }
        return cVarArr;
    }

    private static boolean j(Context context) {
        int i;
        boolean z = true;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            Log.d("AsusCallGuard", "CALLGUARD_IS_ONLINE = true, ConnectivityManager is Null ");
        } else {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                Log.d("AsusCallGuard", "CALLGUARD_IS_ONLINE = true, Netwok not connected");
            } else if (!activeNetworkInfo.isAvailable()) {
                Log.d("AsusCallGuard", "CALLGUARD_IS_ONLINE = true, Netwok not available");
            } else {
                try {
                    Bundle call = context.getContentResolver().call(AbstractC0061a.f2352a, "getConnectionType", (String) null, (Bundle) null);
                    i = call == null ? 1 : call.getInt("getConnectionType");
                } catch (Exception e2) {
                    Log.d("AsusCallGuard", "fail to get connectionInfo due to:" + e2.toString());
                    i = 1;
                }
                if (i != 1) {
                    Log.d("AsusCallGuard", "CALLGUARD_IS_ONLINE = true");
                    z = false;
                } else if (activeNetworkInfo.getTypeName().equalsIgnoreCase("wifi")) {
                    Log.d("AsusCallGuard", "CALLGUARD_IS_ONLINE = true");
                    z = false;
                } else {
                    Log.d("AsusCallGuard", "CALLGUARD_IS_ONLINE = true, Network type is wifi only");
                }
            }
        }
        return z;
    }
}
