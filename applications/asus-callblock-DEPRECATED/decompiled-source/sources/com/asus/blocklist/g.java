package com.asus.blocklist;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationManager;
import android.app.TaskStackBuilder;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.provider.BlockedNumberContract;
import android.provider.Settings;
import android.support.v4.app.x;
import android.telecom.TelecomManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.q;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.android.contacts.w;
import com.android.vcard.VCardConfig;
import com.asus.blocklist.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/g.class */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2521a = g.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/g$a.class */
    public static final class a extends AsyncTask<Void, Void, Integer> {

        /* renamed from: a  reason: collision with root package name */
        private Context f2522a;

        /* renamed from: b  reason: collision with root package name */
        private int f2523b;
        private String c;
        private long d;
        private Uri e;

        private a(Context context, int i) {
            this.f2522a = context;
            this.f2523b = i;
        }

        public a(Context context, int i, long j) {
            this(context, i);
            this.d = j;
        }

        public a(Context context, int i, String str) {
            this(context, i);
            this.c = str;
        }

        public a(Context context, Uri uri) {
            this(context, 6);
            this.e = uri;
        }

        private Integer a() {
            int valueOf;
            int i = 1;
            int i2 = -5;
            switch (this.f2523b) {
                case 0:
                    Log.d(g.f2521a, "BlockListAsyncTask ADD_CONTACT");
                    Iterator<String> it = g.c(this.f2522a, this.d).iterator();
                    while (it.hasNext()) {
                        String next = it.next();
                        i2 = g.a(next) ? Math.max(i2, g.i(this.f2522a, next)) : Math.max(i2, g.h(this.f2522a, next));
                    }
                    valueOf = Integer.valueOf(i2);
                    break;
                case 1:
                    Log.d(g.f2521a, "BlockListAsyncTask ADD_SIPNUMBER");
                    valueOf = Integer.valueOf(g.i(this.f2522a, this.c));
                    break;
                case 2:
                    Log.d(g.f2521a, "BlockListAsyncTask ADD_PHONENUMBER");
                    valueOf = Integer.valueOf(g.h(this.f2522a, this.c));
                    break;
                case 3:
                    Log.d(g.f2521a, "BlockListAsyncTask DELETE_CONTACT");
                    ArrayList<String> c = g.c(this.f2522a, this.d);
                    ArrayList arrayList = new ArrayList();
                    String str = new String(BuildConfig.FLAVOR);
                    if (c.size() > 0) {
                        if (CompatUtils.isNCompatible()) {
                            Iterator<String> it2 = c.iterator();
                            int i3 = 0;
                            while (it2.hasNext()) {
                                try {
                                    i3 = g.m(this.f2522a, g.a(this.f2522a, it2.next())) + i3;
                                } catch (Exception e) {
                                    Log.e(g.f2521a, "fail to unblock due to: " + e.toString());
                                }
                            }
                            if (i3 > 0 && PhoneCapabilityTester.isDebug()) {
                                Log.d(g.f2521a, "delete from BlockedNumberProvider for contact, count: " + i3);
                            }
                        }
                        for (int i4 = 0; i4 < c.size(); i4++) {
                            String str2 = c.get(i4);
                            if (g.a(str2)) {
                                str = TextUtils.isEmpty(str) ? "number='" + str2 + "' " : str + " OR number='" + str2 + "' ";
                            } else {
                                str = TextUtils.isEmpty(str) ? "PHONE_NUMBERS_EQUAL( number, ?, 0)" : str + " OR PHONE_NUMBERS_EQUAL( number, ?, 0)";
                                arrayList.add(str2);
                            }
                        }
                        String[] strArr = new String[arrayList.size()];
                        for (int i5 = 0; i5 < arrayList.size(); i5++) {
                            strArr[i5] = (String) arrayList.get(i5);
                        }
                        try {
                            if (this.f2522a == null || this.f2522a.getContentResolver() == null) {
                                Log.e(g.f2521a, "Fail to delete due to the context is null.");
                            } else if (TextUtils.isEmpty(str)) {
                                Log.e(g.f2521a, "Fail to delete due to the selection is null or empty.");
                            } else if ((strArr.length > 0 ? this.f2522a.getContentResolver().delete(c.b.f2507a, str, strArr) : this.f2522a.getContentResolver().delete(c.b.f2507a, str, null)) > 0) {
                                i2 = 1;
                            }
                        } catch (Exception e2) {
                            Log.e(g.f2521a, e2.toString());
                        }
                    } else {
                        Log.d(g.f2521a, "There's no any phonenumber or sipnumber in this contact.");
                    }
                    valueOf = Integer.valueOf(i2);
                    break;
                case 4:
                    Log.d(g.f2521a, "BlockListAsyncTask DELETE_SIPNUMBER");
                    valueOf = Integer.valueOf(g.r(this.f2522a, this.c));
                    break;
                case 5:
                    Log.d(g.f2521a, "BlockListAsyncTask DELETE_PHONENUMBER");
                    valueOf = Integer.valueOf(g.q(this.f2522a, this.c));
                    break;
                case 6:
                    Log.d(g.f2521a, "BlockListAsyncTask DELETE_URI");
                    if (this.f2522a == null || this.f2522a.getContentResolver() == null) {
                        Log.e(g.f2521a, "Fail to delete due to the context is null.");
                        i = -4;
                    } else if (this.e != null) {
                        try {
                            if (this.f2522a.getContentResolver().delete(this.e, null, null) <= 0) {
                                Log.e(g.f2521a, "Fail to delete a row from blocklist");
                                i = -5;
                            }
                        } catch (Exception e3) {
                            Log.e(g.f2521a, "Fail to delete a row from blocklist due to: " + e3.toString());
                            i = -3;
                        }
                    } else {
                        Log.e(g.f2521a, "Fail to delete due to the URI is null.");
                        i = -2;
                    }
                    valueOf = Integer.valueOf(i);
                    break;
                default:
                    valueOf = -5;
                    break;
            }
            return valueOf;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            return a();
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0105  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x012a  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected final /* synthetic */ void onPostExecute(java.lang.Integer r6) {
            /*
                Method dump skipped, instructions count: 338
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.a.onPostExecute(java.lang.Object):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/g$b.class */
    public static final class b extends AsyncTask<Void, Void, Integer> {

        /* renamed from: a  reason: collision with root package name */
        Context f2524a;

        /* renamed from: b  reason: collision with root package name */
        int f2525b;
        String c;
        long d;
        MenuItem e;
        MenuItem f;
        c g;

        public b(Context context, long j, MenuItem menuItem, MenuItem menuItem2) {
            this.f2524a = null;
            this.f2525b = -1;
            this.c = null;
            this.d = Long.MIN_VALUE;
            this.e = null;
            this.f = null;
            this.g = null;
            this.f2524a = context;
            this.f2525b = 0;
            this.d = j;
            this.e = menuItem;
            this.f = menuItem2;
        }

        public b(Context context, long j, c cVar) {
            this.f2524a = null;
            this.f2525b = -1;
            this.c = null;
            this.d = Long.MIN_VALUE;
            this.e = null;
            this.f = null;
            this.g = null;
            this.f2524a = context;
            this.f2525b = 2;
            this.d = j;
            this.g = cVar;
        }

        public b(Context context, String str, MenuItem menuItem, MenuItem menuItem2) {
            this.f2524a = null;
            this.f2525b = -1;
            this.c = null;
            this.d = Long.MIN_VALUE;
            this.e = null;
            this.f = null;
            this.g = null;
            this.f2524a = context;
            this.f2525b = 1;
            this.c = str;
            this.e = menuItem;
            this.f = menuItem2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            int i = 1;
            Log.d(g.f2521a, "IsInBlockListAsyncTask doInBackground mType:" + this.f2525b);
            switch (this.f2525b) {
                case 0:
                case 2:
                    if (this.d > 0) {
                        if (!g.h(this.f2524a)) {
                            i = g.e(this.f2524a, this.d);
                            break;
                        } else {
                            i = com.asus.blocklist.backwardcompatible.a.a(this.f2524a, this.d);
                            break;
                        }
                    }
                    i = 0;
                    break;
                case 1:
                    if (!TextUtils.isEmpty(this.c)) {
                        if (!g.a(this.c)) {
                            if (!g.h(this.f2524a)) {
                                if (!g.c(this.f2524a, this.c)) {
                                    i = 0;
                                    break;
                                }
                            } else if (!com.asus.blocklist.backwardcompatible.a.a(this.f2524a, this.c)) {
                                i = 0;
                                break;
                            }
                        } else if (!g.h(this.f2524a)) {
                            if (!g.d(this.f2524a, this.c)) {
                                i = 0;
                                break;
                            }
                        } else if (!com.asus.blocklist.backwardcompatible.a.b(this.f2524a, this.c)) {
                            i = 0;
                            break;
                        }
                    } else {
                        i = -1;
                        break;
                    }
                    break;
                default:
                    Log.d(g.f2521a, "IsInBlockListAsyncTask: type not defined.");
                    i = 0;
                    break;
            }
            return Integer.valueOf(i);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            Log.d(g.f2521a, "IsInBlockListAsyncTask onPostExecute mType:" + this.f2525b);
            switch (this.f2525b) {
                case 0:
                case 1:
                    if (num2.intValue() == 0) {
                        if (this.e != null) {
                            this.e.setVisible(true);
                        }
                        if (this.f != null) {
                            this.f.setVisible(false);
                            return;
                        }
                        return;
                    } else if (num2.intValue() == 1) {
                        if (this.e != null) {
                            this.e.setVisible(false);
                        }
                        if (this.f != null) {
                            this.f.setVisible(true);
                            return;
                        }
                        return;
                    } else {
                        if (this.e != null) {
                            this.e.setVisible(false);
                        }
                        if (this.f != null) {
                            this.f.setVisible(false);
                            return;
                        }
                        return;
                    }
                case 2:
                    if (this.g != null) {
                        this.g.setResult(num2.intValue());
                        return;
                    }
                    return;
                default:
                    Log.d(g.f2521a, "IsInBlockListAsyncTask: type not defined.");
                    return;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/g$c.class */
    public interface c {
        void setResult(int i);
    }

    public static String a(Context context, String str) {
        String a2 = q.a(context);
        new String(BuildConfig.FLAVOR);
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (a2 != null) {
                try {
                    str2 = PhoneNumberUtils.formatNumber(str, a2);
                } catch (Exception e) {
                    str2 = str;
                }
                if (str2 == null) {
                    str2 = str;
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> a(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.a(android.content.Context):java.util.ArrayList");
    }

    public static void a(Activity activity) {
        if (CompatUtils.isNCompatible() && !TelecomUtil.isDefaultDialer(activity.getApplicationContext()) && PhoneCapabilityTester.isPhone(activity.getApplicationContext())) {
            if (!w.b() || !"default_dialer_checker".equals(w.c())) {
                w.a().show(activity.getFragmentManager(), "default_dialer_checker");
            }
        }
    }

    public static void a(Context context, long j) {
        Log.d(f2521a, "addBlockListByContactAsync with contactid > 0 ? " + (j > 0));
        new a(context, 0, j).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void a(Context context, long j, c cVar) {
        new b(context, j, cVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void a(Context context, Uri uri) {
        Log.d(f2521a, "deleteBlockListByUriAsync with uri");
        new a(context, uri).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static void a(Context context, MenuItem menuItem, MenuItem menuItem2, long j) {
        if (com.asus.blocklist.a.a(context)) {
            new b(context, j, menuItem, menuItem2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public static void a(Context context, MenuItem menuItem, MenuItem menuItem2, String str) {
        if (com.asus.blocklist.a.a(context)) {
            new b(context, str, menuItem, menuItem2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01fd A[Catch: Exception -> 0x0206, all -> 0x034b, TRY_ENTER, TryCatch #8 {Exception -> 0x0206, blocks: (B:23:0x0088, B:29:0x0096, B:31:0x009f, B:95:0x01ea, B:100:0x01fd, B:102:0x0205, B:153:0x0332, B:157:0x0342, B:159:0x034a), top: B:191:0x0088 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 964
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.a(android.content.Context, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r3.contains("\"") != false) goto L_0x002a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = com.android.contacts.util.CallUtil.isUriNumber(r0)
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002c
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x002c
            r0 = r3
            java.lang.String r1 = "'"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x002a
            r0 = r4
            r5 = r0
            r0 = r3
            java.lang.String r1 = "\""
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x002c
        L_0x002a:
            r0 = 0
            r5 = r0
        L_0x002c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.a(java.lang.String):boolean");
    }

    private static boolean a(Set<String> set, String str) {
        r6 = false;
        boolean z = false;
        if (!set.isEmpty()) {
            Iterator<String> it = set.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                boolean compare = PhoneNumberUtils.compare(it.next(), str);
                z = compare;
                if (compare) {
                    z = compare;
                    break;
                }
            }
        }
        return z;
    }

    public static String b(String str) {
        return TextUtils.isEmpty(str) ? new String(BuildConfig.FLAVOR) : str.length() > 3 ? new String("*****" + str.substring(str.length() - 3)) : new String("*****" + str.substring(str.length() - 1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    public static HashMap<String, Integer> b(Context context) {
        Exception e;
        Cursor cursor;
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (context != 0) {
            try {
                if (context.getContentResolver() != null) {
                    try {
                        cursor = context.getContentResolver().query(c.b.f2507a, null, null, null, null);
                        if (cursor != null) {
                            try {
                                if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                                    do {
                                        hashMap.put(cursor.getString(cursor.getColumnIndex("number")), Integer.valueOf(cursor.getInt(cursor.getColumnIndex("block_type"))));
                                    } while (cursor.moveToNext());
                                }
                            } catch (Exception e2) {
                                e = e2;
                                Log.e(f2521a, "Fail to getAllBlockedNumbersInfo due to: " + e.toString());
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return hashMap;
                            }
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Exception e3) {
                        e = e3;
                        cursor = null;
                    } catch (Throwable th) {
                        th = th;
                        context = 0;
                        if (context != 0) {
                            context.close();
                        }
                        throw th;
                    }
                    return hashMap;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Log.e(f2521a, "Fail to query due to the context is null.");
        return hashMap;
    }

    public static void b(Context context, long j) {
        Log.d(f2521a, "deleteBlockListByContactAsync with contactid > 0 ? " + (j > 0));
        new a(context, 3, j).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public static boolean b(Context context, String str) {
        String trim = str.trim();
        return a(trim) ? h(context) ? com.asus.blocklist.backwardcompatible.a.b(context, trim) : c(context, trim, 0) : h(context) ? com.asus.blocklist.backwardcompatible.a.a(context, trim) : a(context, trim, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.content.Context r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.b(android.content.Context, java.lang.String, int):boolean");
    }

    public static String c(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str.replaceAll("'", "Apostrophe");
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> c(android.content.Context r7) {
        /*
            boolean r0 = com.android.contacts.util.CompatUtils.isNCompatible()     // Catch: Exception -> 0x006d, all -> 0x00ab
            if (r0 == 0) goto L_0x0068
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: Exception -> 0x006d, all -> 0x00ab
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: Exception -> 0x006d, all -> 0x00ab
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x006d, all -> 0x00ab
            android.net.Uri r1 = android.provider.BlockedNumberContract.BlockedNumbers.CONTENT_URI     // Catch: Exception -> 0x006d, all -> 0x00ab
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x006d, all -> 0x00ab
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x005a
            r0 = r9
            r7 = r0
            r0 = r9
            int r0 = r0.getCount()     // Catch: all -> 0x00ba, Exception -> 0x00be
            if (r0 <= 0) goto L_0x005a
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00ba, Exception -> 0x00be
            if (r0 == 0) goto L_0x005a
        L_0x0037:
            r0 = r9
            r7 = r0
            r0 = r8
            r1 = r9
            r2 = r9
            java.lang.String r3 = "original_number"
            int r2 = r2.getColumnIndex(r3)     // Catch: all -> 0x00ba, Exception -> 0x00be
            java.lang.String r1 = r1.getString(r2)     // Catch: all -> 0x00ba, Exception -> 0x00be
            boolean r0 = r0.add(r1)     // Catch: all -> 0x00ba, Exception -> 0x00be
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x00ba, Exception -> 0x00be
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0037
        L_0x005a:
            r0 = r9
            if (r0 == 0) goto L_0x0064
            r0 = r9
            r0.close()
        L_0x0064:
            r0 = r8
            r7 = r0
        L_0x0066:
            r0 = r7
            return r0
        L_0x0068:
            r0 = 0
            r7 = r0
            goto L_0x0066
        L_0x006d:
            r8 = move-exception
            r0 = 0
            r9 = r0
        L_0x0070:
            r0 = r9
            r7 = r0
            java.lang.String r0 = com.asus.blocklist.g.f2521a     // Catch: all -> 0x00ba
            r11 = r0
            r0 = r9
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00ba
            r12 = r0
            r0 = r9
            r7 = r0
            r0 = r12
            java.lang.String r1 = "Fail to getAllNumbersForBlockedNumberProvider due to: "
            r0.<init>(r1)     // Catch: all -> 0x00ba
            r0 = r9
            r7 = r0
            r0 = r11
            r1 = r12
            r2 = r8
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00ba
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00ba
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00ba
            int r0 = android.util.Log.e(r0, r1)     // Catch: all -> 0x00ba
            r0 = r9
            if (r0 == 0) goto L_0x00a6
            r0 = r9
            r0.close()
        L_0x00a6:
            r0 = 0
            r7 = r0
            goto L_0x0066
        L_0x00ab:
            r9 = move-exception
            r0 = 0
            r7 = r0
        L_0x00ae:
            r0 = r7
            if (r0 == 0) goto L_0x00b8
            r0 = r7
            r0.close()
        L_0x00b8:
            r0 = r9
            throw r0
        L_0x00ba:
            r9 = move-exception
            goto L_0x00ae
        L_0x00be:
            r8 = move-exception
            goto L_0x0070
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.c(android.content.Context):java.util.ArrayList");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0150  */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v23, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> c(android.content.Context r7, long r8) {
        /*
            Method dump skipped, instructions count: 915
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.c(android.content.Context, long):java.util.ArrayList");
    }

    public static boolean c(Context context, String str) {
        return a(context, str, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(android.content.Context r7, java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.c(android.content.Context, java.lang.String, int):boolean");
    }

    public static void d(Context context) {
        if (!com.asus.a.c.a(context, "notification_touchpal", "drawable")) {
            Log.d(f2521a, "showBlockedCallNotification, resorce not found, return");
            return;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        int i = defaultSharedPreferences.getInt("PREF_BLOCK_CALL_NOTIFICATION_COUNT", 0) + 1;
        defaultSharedPreferences.edit().putInt("PREF_BLOCK_CALL_NOTIFICATION_COUNT", i).apply();
        Log.d(f2521a, "showBlockedCallNotification: You have " + i + " blocked calls");
        x.d b2 = new x.d(context).a(2131165905).a(context.getResources().getString(2131755211)).b(context.getResources().getString(2131755210, String.valueOf(i)));
        TaskStackBuilder create = TaskStackBuilder.create(context);
        Intent intent = new Intent(context, MainDialtactsActivity.class);
        intent.setAction("android.intent.action.ASUS_ENTER_BLOCKED_HISTORY");
        create.addNextIntent(intent);
        b2.d = create.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
        ((NotificationManager) context.getSystemService("notification")).notify(5599, b2.b());
    }

    public static boolean d(Context context, String str) {
        return c(context, str, 0);
    }

    public static boolean d(String str) {
        return com.asus.a.b.c(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0215  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int e(android.content.Context r7, long r8) {
        /*
            Method dump skipped, instructions count: 567
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.e(android.content.Context, long):int");
    }

    public static void e(Context context) {
        Log.d(f2521a, "clearBlockedCallNotification");
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt("PREF_BLOCK_CALL_NOTIFICATION_COUNT", 0).apply();
        ((NotificationManager) context.getSystemService("notification")).cancel(5599);
    }

    public static void e(Context context, String str) {
        Log.d(f2521a, "addBlockListByNumberAsync with number:" + b(str));
        if (a(str)) {
            new a(context, 1, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            new a(context, 2, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public static void f(Context context) {
        int i = 1;
        Log.d(f2521a, "initBlockListVersion");
        boolean isInterfaceExist = PhoneCapabilityTester.isInterfaceExist(context, "blocklist");
        boolean isInterfaceExist2 = PhoneCapabilityTester.isInterfaceExist(context, "com.asus.blocklist.provider");
        boolean isInterfaceExist3 = PhoneCapabilityTester.isInterfaceExist(context, "com.asus.blocklabel.provider");
        int i2 = CompatUtils.isNCompatible() ? 3 : isInterfaceExist ? 1 : (isInterfaceExist || !isInterfaceExist2) ? 0 : 2;
        if (isInterfaceExist) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("PREF_SUPPORT_BUNDLED_BLOCKLIST", true).commit();
        } else {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("PREF_SUPPORT_BUNDLED_BLOCKLIST", false).commit();
        }
        Log.d(f2521a, "BlockList Version: " + i2 + ", (" + isInterfaceExist + ", " + isInterfaceExist2 + ")");
        try {
            Settings.Global.putInt(context.getContentResolver(), "AsusContactsBlockListVersion", i2);
        } catch (Exception e) {
            Log.e(f2521a, "Fail to set blocklist version, Exception: " + e.toString());
            Log.e(f2521a, "Run unbundle blocklist.");
        }
        if (isInterfaceExist3) {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("PREF_SUPPORT_BLOCKINTERFACE", true).commit();
        } else {
            PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("PREF_SUPPORT_BLOCKINTERFACE", false).commit();
            i = 0;
        }
        Log.d(f2521a, "Block Interface Version: " + i);
        try {
            Settings.Global.putInt(context.getContentResolver(), "isBlockInterfaceExist", i);
        } catch (Exception e2) {
            Log.e(f2521a, "Fail to set blocklist provider, Exception: " + e2.toString());
        }
    }

    public static void f(Context context, String str) {
        Log.d(f2521a, "deleteBlockListByNumberAsync with number:" + b(str));
        if (a(str)) {
            new a(context, 4, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            new a(context, 5, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public static int g(Context context) {
        int i = 1;
        if (PhoneCapabilityTester.IsSystemApp()) {
            i = Settings.Global.getInt(context.getContentResolver(), "AsusContactsBlockListVersion", 1);
        } else if (!h(context)) {
            i = CompatUtils.isNCompatible() ? 3 : 2;
        }
        Log.d(f2521a, "BlckList Version= " + i);
        return i;
    }

    public static void g(Context context, String str) {
        Log.d(f2521a, "deleteBlockListByNumber with number:" + b(str));
        if (a(str)) {
            r(context, str);
        } else {
            q(context, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int h(android.content.Context r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.h(android.content.Context, java.lang.String):int");
    }

    public static boolean h(Context context) {
        boolean z = false;
        if (!CompatUtils.isNCompatible()) {
            z = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("PREF_SUPPORT_BUNDLED_BLOCKLIST", false);
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011f  */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int i(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.i(android.content.Context, java.lang.String):int");
    }

    public static Intent i(Context context) {
        return CompatUtils.isNCompatible() ? ((TelecomManager) context.getSystemService("telecom")).createManageBlockedNumbersIntent() : new Intent("com.asus.app.blocklist.LAUNCH");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long j(android.content.Context r3, java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = r5
            r7 = r0
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0029
            r0 = r4
            boolean r0 = a(r0)
            if (r0 == 0) goto L_0x002c
            r0 = r3
            r1 = r4
            java.lang.Long[] r0 = k(r0, r1)
            r3 = r0
            r0 = r5
            r7 = r0
            r0 = r3
            int r0 = r0.length
            if (r0 <= 0) goto L_0x0029
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            long r0 = r0.longValue()
            r7 = r0
        L_0x0029:
            r0 = r7
            return r0
        L_0x002c:
            r0 = r3
            r1 = r4
            java.lang.Long[] r0 = p(r0, r1)
            r3 = r0
            r0 = r5
            r7 = r0
            r0 = r3
            int r0 = r0.length
            if (r0 <= 0) goto L_0x0029
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            long r0 = r0.longValue()
            r7 = r0
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.j(android.content.Context, java.lang.String):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Long[] k(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.k(android.content.Context, java.lang.String):java.lang.Long[]");
    }

    @TargetApi(24)
    public static Uri l(Context context, String str) {
        String stripSeparators = a(str) ? str : PhoneNumberUtils.stripSeparators(str);
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("original_number", stripSeparators);
            Uri insert = context.getContentResolver().insert(BlockedNumberContract.BlockedNumbers.CONTENT_URI, contentValues);
            if (PhoneCapabilityTester.isDebug()) {
                Log.d(f2521a, "insertNumberToBlockedNumberProvider number:" + str + ", strippedNumber: " + stripSeparators + ", resultUri:" + insert);
            }
            return insert;
        } catch (Exception e) {
            Log.e(f2521a, "fail to insertNumberToBlockedNumberProvider due to: " + e.toString());
            throw e;
        }
    }

    @TargetApi(24)
    public static int m(Context context, String str) {
        int i = 0;
        String stripSeparators = PhoneNumberUtils.stripSeparators(str);
        try {
            int delete = context.getContentResolver().delete(BlockedNumberContract.BlockedNumbers.CONTENT_URI, "PHONE_NUMBERS_EQUAL( original_number, ?, 0)", new String[]{str});
            i = delete;
            if (PhoneCapabilityTester.isDebug()) {
                i = delete;
                Log.d(f2521a, "deleteNumberFromBlockedNumberProvider number:" + str + ", strippedNumber: " + stripSeparators + ", deleteCount:" + delete);
                i = delete;
            }
        } catch (Exception e) {
            Log.e(f2521a, "fail to deleteNumberFromBlockedNumberProvider due to: " + e.toString());
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Long[] p(android.content.Context r7, java.lang.String r8) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x006c, all -> 0x00aa
            android.net.Uri r1 = android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI     // Catch: Exception -> 0x006c, all -> 0x00aa
            r2 = r8
            java.lang.String r2 = android.net.Uri.encode(r2)     // Catch: Exception -> 0x006c, all -> 0x00aa
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)     // Catch: Exception -> 0x006c, all -> 0x00aa
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x006c, all -> 0x00aa
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0053
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00be, Exception -> 0x00c5
            if (r0 == 0) goto L_0x0053
        L_0x002d:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = r8
            r2 = r8
            java.lang.String r3 = "_id"
            int r2 = r2.getColumnIndex(r3)     // Catch: all -> 0x00be, Exception -> 0x00c5
            long r1 = r1.getLong(r2)     // Catch: all -> 0x00be, Exception -> 0x00c5
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x00be, Exception -> 0x00c5
            boolean r0 = r0.add(r1)     // Catch: all -> 0x00be, Exception -> 0x00c5
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x00be, Exception -> 0x00c5
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x002d
        L_0x0053:
            r0 = r8
            if (r0 == 0) goto L_0x005d
            r0 = r8
            r0.close()
        L_0x005d:
            r0 = r9
            r1 = r9
            int r1 = r1.size()
            java.lang.Long[] r1 = new java.lang.Long[r1]
            java.lang.Object[] r0 = r0.toArray(r1)
            java.lang.Long[] r0 = (java.lang.Long[]) r0
            return r0
        L_0x006c:
            r11 = move-exception
            r0 = 0
            r8 = r0
        L_0x0070:
            r0 = r8
            r7 = r0
            java.lang.String r0 = com.asus.blocklist.g.f2521a     // Catch: all -> 0x00be
            r12 = r0
            r0 = r8
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00be
            r13 = r0
            r0 = r8
            r7 = r0
            r0 = r13
            java.lang.String r1 = "Fail to query contacts db: "
            r0.<init>(r1)     // Catch: all -> 0x00be
            r0 = r8
            r7 = r0
            r0 = r12
            r1 = r13
            r2 = r11
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00be
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00be
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00be
            int r0 = android.util.Log.e(r0, r1)     // Catch: all -> 0x00be
            r0 = r8
            if (r0 == 0) goto L_0x005d
            r0 = r8
            r0.close()
            goto L_0x005d
        L_0x00aa:
            r7 = move-exception
            r0 = 0
            r11 = r0
            r0 = r7
            r8 = r0
        L_0x00b0:
            r0 = r11
            if (r0 == 0) goto L_0x00bc
            r0 = r11
            r0.close()
        L_0x00bc:
            r0 = r8
            throw r0
        L_0x00be:
            r8 = move-exception
            r0 = r7
            r11 = r0
            goto L_0x00b0
        L_0x00c5:
            r11 = move-exception
            goto L_0x0070
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.g.p(android.content.Context, java.lang.String):java.lang.Long[]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0106 -> B:55:0x008d). Please submit an issue!!! */
    public static int q(Context context, String str) {
        int i;
        Log.d(f2521a, "deleteBlockListByPhoneNumber with number:" + b(str));
        String str2 = str;
        if (CompatUtils.isNCompatible()) {
            str2 = str;
            try {
                String a2 = a(context, str);
                str2 = a2;
                if (m(context, a2) > 0) {
                    str2 = a2;
                    if (PhoneCapabilityTester.isDebug()) {
                        str2 = a2;
                        Log.d(f2521a, "delete success from BlockedNumberProvider");
                        str2 = a2;
                    }
                }
            } catch (Exception e) {
                Log.w(f2521a, "fail to delete number due to:" + e.toString());
            }
        }
        if (context == null || context.getContentResolver() == null) {
            Log.e(f2521a, "Fail to delete due to the context is null.");
            i = -4;
        } else if (TextUtils.isEmpty(str2)) {
            Log.e(f2521a, "Fail to delete number due to the number is empty or null.");
            i = -2;
        } else if (!a(str2)) {
            try {
                if (context.getContentResolver().delete(c.b.f2507a, "PHONE_NUMBERS_EQUAL( number, ?, 0)", new String[]{str2}) > 0) {
                    Log.d(f2521a, "deleteBlockListByPhoneNumber result:SUCCESS");
                    i = 1;
                } else {
                    Log.d(f2521a, "deleteBlockListByPhoneNumber resultcode:-5");
                    i = -5;
                }
            } catch (Exception e2) {
                Log.e(f2521a, "Fail to delete number due to: " + e2.toString());
                i = -3;
            }
        } else {
            Log.e(f2521a, "Fail to delete number due to the number is SIP number.");
            i = -2;
        }
        if (i == 1 && com.asus.a.a.d(context) && com.asus.a.a.h(context) && !com.asus.a.c.e()) {
            com.asus.a.a.d(context, str2);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(Context context, String str) {
        Log.d(f2521a, "deleteBlockListBySIPNumber with number:" + b(str));
        int i = -5;
        if (CompatUtils.isNCompatible()) {
            try {
                if (m(context, str) > 0 && PhoneCapabilityTester.isDebug()) {
                    Log.d(f2521a, "delete success from BlockedNumberProvider");
                }
            } catch (Exception e) {
                Log.w(f2521a, "fail to delete number due to:" + e.toString());
            }
        }
        if (context == null || context.getContentResolver() == null) {
            Log.e(f2521a, "Fail to delete due to the context is null.");
            i = -4;
        } else if (TextUtils.isEmpty(str)) {
            Log.e(f2521a, "Fail to delete number due to the number is empty or null.");
            i = -2;
        } else if (a(str)) {
            try {
                if (context.getContentResolver().delete(c.b.f2507a, "number='" + str + "' ", null) > 0) {
                    i = 1;
                    Log.d(f2521a, "deleteBlockListBySIPNumber result:SUCCESS");
                } else {
                    Log.d(f2521a, "deleteBlockListBySIPNumber resultcode:-5");
                }
            } catch (Exception e2) {
                Log.e(f2521a, "Fail to delete number due to: " + e2.toString());
                i = -3;
            }
        } else {
            Log.e(f2521a, "Fail to delete number due to the number is not SIP number.");
            i = -2;
        }
        return i;
    }
}
