package com.asus.prefersim;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.MenuItem;
import com.android.contacts.ContactsApplication;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.g;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/prefersim/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f2949a = Uri.parse("content://com.asus.prefersim.provider/prefersim_number");

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f2950b = Uri.parse("content://com.asus.prefersim.provider/prefersim_contact");
    private static boolean c = PhoneCapabilityTester.isSimActive(ContactsApplication.b().getApplicationContext(), 1);
    private static boolean d = PhoneCapabilityTester.isSimActive(ContactsApplication.b().getApplicationContext(), 2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098  */
    /* JADX WARN: Type inference failed for: r10v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r10, long r11) {
        /*
            r0 = r10
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0058, all -> 0x0091
            android.net.Uri r1 = com.asus.prefersim.c.f2950b     // Catch: Exception -> 0x0058, all -> 0x0091
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0058, all -> 0x0091
            r3 = r2
            r4 = 0
            java.lang.String r5 = "sim"
            r3[r4] = r5     // Catch: Exception -> 0x0058, all -> 0x0091
            java.lang.String r3 = "contact_id = ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x0058, all -> 0x0091
            r5 = r4
            r6 = 0
            r7 = r11
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: Exception -> 0x0058, all -> 0x0091
            r5[r6] = r7     // Catch: Exception -> 0x0058, all -> 0x0091
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0058, all -> 0x0091
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x00af
            r0 = r13
            r10 = r0
            r0 = r13
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00a0, Exception -> 0x00a4
            if (r0 == 0) goto L_0x00af
            r0 = r13
            r10 = r0
            r0 = r13
            r1 = r13
            java.lang.String r2 = "sim"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x00a0, Exception -> 0x00a4
            int r0 = r0.getInt(r1)     // Catch: all -> 0x00a0, Exception -> 0x00a4
            r14 = r0
        L_0x0043:
            r0 = r14
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0055
            r0 = r13
            r0.close()
            r0 = r14
            r15 = r0
        L_0x0055:
            r0 = r15
            return r0
        L_0x0058:
            r16 = move-exception
            r0 = 0
            r13 = r0
        L_0x005c:
            r0 = r13
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a0
            r17 = r0
            r0 = r13
            r10 = r0
            r0 = r17
            java.lang.String r1 = "query number prefer sim error: "
            r0.<init>(r1)     // Catch: all -> 0x00a0
            r0 = r13
            r10 = r0
            java.lang.String r0 = "PreferSimUtil"
            r1 = r17
            r2 = r16
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00a0
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00a0
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a0
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x00a0
            r0 = r13
            if (r0 == 0) goto L_0x00a9
            r0 = r13
            r0.close()
            r0 = -1
            r15 = r0
            goto L_0x0055
        L_0x0091:
            r13 = move-exception
            r0 = 0
            r10 = r0
        L_0x0094:
            r0 = r10
            if (r0 == 0) goto L_0x009e
            r0 = r10
            r0.close()
        L_0x009e:
            r0 = r13
            throw r0
        L_0x00a0:
            r13 = move-exception
            goto L_0x0094
        L_0x00a4:
            r16 = move-exception
            goto L_0x005c
        L_0x00a9:
            r0 = -1
            r15 = r0
            goto L_0x0055
        L_0x00af:
            r0 = -1
            r14 = r0
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.a(android.content.Context, long):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009a  */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r9, java.lang.String r10) {
        /*
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x005f, all -> 0x0093
            r11 = r0
            android.net.Uri r0 = com.asus.prefersim.c.f2949a     // Catch: Exception -> 0x005f, all -> 0x0093
            r12 = r0
            r0 = r9
            r1 = r10
            java.lang.String r0 = com.asus.blocklist.g.a(r0, r1)     // Catch: Exception -> 0x005f, all -> 0x0093
            r9 = r0
            r0 = r11
            r1 = r12
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x005f, all -> 0x0093
            r3 = r2
            r4 = 0
            java.lang.String r5 = "sim"
            r3[r4] = r5     // Catch: Exception -> 0x005f, all -> 0x0093
            java.lang.String r3 = "PHONE_NUMBERS_EQUAL( number, ?, 0)"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x005f, all -> 0x0093
            r5 = r4
            r6 = 0
            r7 = r9
            r5[r6] = r7     // Catch: Exception -> 0x005f, all -> 0x0093
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x005f, all -> 0x0093
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00b0
            r0 = r10
            r9 = r0
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x00a2, Exception -> 0x00a6
            if (r0 == 0) goto L_0x00b0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r10
            java.lang.String r2 = "sim"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x00a2, Exception -> 0x00a6
            int r0 = r0.getInt(r1)     // Catch: all -> 0x00a2, Exception -> 0x00a6
            r13 = r0
        L_0x004a:
            r0 = r13
            r14 = r0
            r0 = r10
            if (r0 == 0) goto L_0x005c
            r0 = r10
            r0.close()
            r0 = r13
            r14 = r0
        L_0x005c:
            r0 = r14
            return r0
        L_0x005f:
            r12 = move-exception
            r0 = 0
            r10 = r0
        L_0x0062:
            r0 = r10
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a2
            r11 = r0
            r0 = r10
            r9 = r0
            r0 = r11
            java.lang.String r1 = "query number prefer sim error: "
            r0.<init>(r1)     // Catch: all -> 0x00a2
            r0 = r10
            r9 = r0
            java.lang.String r0 = "PreferSimUtil"
            r1 = r11
            r2 = r12
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00a2
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00a2
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a2
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x00a2
            r0 = r10
            if (r0 == 0) goto L_0x00aa
            r0 = r10
            r0.close()
            r0 = -1
            r14 = r0
            goto L_0x005c
        L_0x0093:
            r10 = move-exception
            r0 = 0
            r9 = r0
        L_0x0096:
            r0 = r9
            if (r0 == 0) goto L_0x00a0
            r0 = r9
            r0.close()
        L_0x00a0:
            r0 = r10
            throw r0
        L_0x00a2:
            r10 = move-exception
            goto L_0x0096
        L_0x00a6:
            r12 = move-exception
            goto L_0x0062
        L_0x00aa:
            r0 = -1
            r14 = r0
            goto L_0x005c
        L_0x00b0:
            r0 = -1
            r13 = r0
            goto L_0x004a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.a(android.content.Context, java.lang.String):int");
    }

    public static int a(Context context, ArrayList<String> arrayList, long j) {
        Iterator<String> it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = e(context, it.next()) + i;
        }
        int i2 = 0;
        if (a(context, j) != -1) {
            try {
                i2 = context.getContentResolver().delete(f2950b, "contact_id = ?", new String[]{String.valueOf(j)});
            } catch (Exception e) {
                Log.d("PreferSimUtil", "delete contact prefer sim error: " + e.toString());
                i2 = 0;
            }
        }
        return i + i2;
    }

    public static void a(int i) {
        if (i == 1) {
            c = PhoneCapabilityTester.isSimActive(ContactsApplication.b().getApplicationContext(), 1);
        } else {
            d = PhoneCapabilityTester.isSimActive(ContactsApplication.b().getApplicationContext(), 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(android.content.Context r10, long r11, int r13) {
        /*
            r0 = r10
            r1 = r11
            android.database.Cursor r0 = b(r0, r1)
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x00a9
            r0 = r14
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x009a
            if (r0 == 0) goto L_0x00a9
            r0 = r14
            r1 = r14
            java.lang.String r2 = "isdiff"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x009a
            int r0 = r0.getInt(r1)     // Catch: all -> 0x009a
            if (r0 != 0) goto L_0x006c
            r0 = r14
            r1 = r14
            java.lang.String r2 = "sim"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x009a
            int r0 = r0.getInt(r1)     // Catch: all -> 0x009a
            r1 = r13
            if (r0 == r1) goto L_0x006c
            android.content.ContentValues r0 = new android.content.ContentValues     // Catch: all -> 0x009a
            r15 = r0
            r0 = r15
            r0.<init>()     // Catch: all -> 0x009a
            r0 = r15
            java.lang.String r1 = "isdiff"
            r2 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: all -> 0x009a
            r0.put(r1, r2)     // Catch: all -> 0x009a
            r0 = r10
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0079, all -> 0x009a
            android.net.Uri r1 = com.asus.prefersim.c.f2950b     // Catch: Exception -> 0x0079, all -> 0x009a
            r2 = r15
            java.lang.String r3 = "contact_id = ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x0079, all -> 0x009a
            r5 = r4
            r6 = 0
            r7 = r11
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: Exception -> 0x0079, all -> 0x009a
            r5[r6] = r7     // Catch: Exception -> 0x0079, all -> 0x009a
            int r0 = r0.update(r1, r2, r3, r4)     // Catch: Exception -> 0x0079, all -> 0x009a
        L_0x006c:
            r0 = r14
            if (r0 == 0) goto L_0x0078
            r0 = r14
            r0.close()
        L_0x0078:
            return
        L_0x0079:
            r15 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x009a
            r10 = r0
            r0 = r10
            java.lang.String r1 = "update contact prefer sim error: "
            r0.<init>(r1)     // Catch: all -> 0x009a
            java.lang.String r0 = "PreferSimUtil"
            r1 = r10
            r2 = r15
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x009a
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x009a
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x009a
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x009a
            goto L_0x006c
        L_0x009a:
            r10 = move-exception
            r0 = r14
            if (r0 == 0) goto L_0x00a7
            r0 = r14
            r0.close()
        L_0x00a7:
            r0 = r10
            throw r0
        L_0x00a9:
            java.lang.String r0 = "PreferSimUtil"
            java.lang.String r1 = "get is diff cursor is null"
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x009a
            goto L_0x006c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.a(android.content.Context, long, int):void");
    }

    public static void a(Context context, Intent intent) {
        if (!a(context) || intent.getDataString() == null) {
            ImplicitIntentsUtil.startActivityOutsideApp(context, intent, false);
            return;
        }
        try {
            new a(8).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context, intent);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "set Prefer Sim Call task error: " + e.toString());
        }
    }

    public static void a(Context context, MenuItem menuItem, MenuItem menuItem2, long j) {
        try {
            new a(2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context, Long.valueOf(j), menuItem, menuItem2);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "set Contact SIM1 SIM2 call Menu Item Visible task error: " + e.toString());
        }
    }

    public static void a(Context context, MenuItem menuItem, MenuItem menuItem2, String str) {
        try {
            new a(1).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context, str, menuItem, menuItem2);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "set Number SIM1 SIM2 call Menu Item Visible task error: " + e.toString());
        }
    }

    public static void a(Context context, String str, String str2) {
        int a2 = a(context, g(context, str));
        if (a2 != -1) {
            a(context, str2, a2);
        }
    }

    public static boolean a(Context context) {
        return b.a(context) && !PhoneCapabilityTester.isUsingTwoPanes(context) && c && d;
    }

    public static boolean a(Context context, long j, ArrayList<String> arrayList, int i) {
        boolean z;
        boolean z2;
        Uri uri;
        int i2;
        try {
            Iterator<String> it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (!a(context, it.next(), i)) {
                        z2 = false;
                        break;
                    }
                } else {
                    z2 = true;
                    break;
                }
            }
            z = z2;
        } catch (Exception e) {
            Log.d("PreferSimUtil", "set contact prefer sim error: " + e.toString());
            z = false;
        }
        if (z2) {
            int a2 = a(context, j);
            ContentValues contentValues = new ContentValues();
            contentValues.put(ContactDetailCallogActivity.EXTRA_CONTACT_ID, Long.valueOf(j));
            contentValues.put("sim", Integer.valueOf(i));
            contentValues.put("isdiff", (Integer) 0);
            if (a2 == -1) {
                try {
                    uri = context.getContentResolver().insert(f2950b, contentValues);
                } catch (Exception e2) {
                    Log.d("PreferSimUtil", "insert contact prefer sim error: " + e2.toString());
                    uri = null;
                }
                z = z2;
                if (uri == null) {
                    z = false;
                }
            } else {
                z = z2;
                if (a2 >= 0) {
                    try {
                        i2 = context.getContentResolver().update(f2950b, contentValues, "contact_id = ?", new String[]{String.valueOf(j)});
                        z = z2;
                    } catch (Exception e3) {
                        Log.d("PreferSimUtil", "update contact prefer sim error: " + e3.toString());
                        i2 = 0;
                        z = false;
                    }
                    if (i2 == 0) {
                        z = false;
                    }
                }
            }
            Log.d("PreferSimUtil", "set contact prefer sim error: " + e.toString());
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0045, code lost:
        if (r11 == 0) goto L_0x0048;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(android.content.Context r9, java.lang.String r10, int r11) {
        /*
            r0 = 0
            r12 = r0
            android.content.ContentValues r0 = new android.content.ContentValues
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r9
            r1 = r10
            java.lang.String r0 = com.asus.blocklist.g.a(r0, r1)
            r10 = r0
            r0 = r13
            java.lang.String r1 = "number"
            r2 = r10
            r0.put(r1, r2)
            r0 = r13
            java.lang.String r1 = "sim"
            r2 = r11
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            r0 = r9
            r1 = r10
            int r0 = a(r0, r1)
            if (r0 < 0) goto L_0x006a
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x004a
            android.net.Uri r1 = com.asus.prefersim.c.f2949a     // Catch: Exception -> 0x004a
            r2 = r13
            java.lang.String r3 = "number= ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x004a
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x004a
            int r0 = r0.update(r1, r2, r3, r4)     // Catch: Exception -> 0x004a
            r11 = r0
        L_0x0044:
            r0 = r11
            if (r0 != 0) goto L_0x00a7
        L_0x0048:
            r0 = r12
            return r0
        L_0x004a:
            r9 = move-exception
            java.lang.String r0 = "PreferSimUtil"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "update number prefer sim error: "
            r2.<init>(r3)
            r2 = r9
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = 0
            r11 = r0
            goto L_0x0044
        L_0x006a:
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0087
            android.net.Uri r1 = com.asus.prefersim.c.f2949a     // Catch: Exception -> 0x0087
            r2 = r13
            android.net.Uri r0 = r0.insert(r1, r2)     // Catch: Exception -> 0x0087
            r9 = r0
        L_0x0077:
            r0 = r9
            if (r0 != 0) goto L_0x00a7
            java.lang.String r0 = "PreferSimUtil"
            java.lang.String r1 = "insert get null"
            int r0 = android.util.Log.d(r0, r1)
            goto L_0x0048
        L_0x0087:
            r9 = move-exception
            java.lang.String r0 = "PreferSimUtil"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "insert fail exception: "
            r2.<init>(r3)
            r2 = r9
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = 0
            r9 = r0
            goto L_0x0077
        L_0x00a7:
            r0 = 1
            r12 = r0
            goto L_0x0048
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.a(android.content.Context, java.lang.String, int):boolean");
    }

    public static boolean a(Context context, String str, long j) {
        boolean d2 = d(context, str);
        if (d2) {
            a(context, j, -1);
        }
        return d2;
    }

    public static boolean a(Context context, String str, long j, int i) {
        boolean a2 = a(context, str, i);
        if (a2) {
            a(context, j, i);
        }
        return a2;
    }

    public static Cursor b(Context context) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(f2950b, new String[]{"isdiff"}, null, null, null);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "get all contact prefer sim data error:" + e.toString());
            cursor = null;
        }
        return cursor;
    }

    public static Cursor b(Context context, long j) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(f2950b, new String[]{"sim", "isdiff"}, "contact_id = ?", new String[]{String.valueOf(j)}, null);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "query contact prefer sim detail error: " + e.toString());
            cursor = null;
        }
        return cursor;
    }

    public static void b(Context context, String str) {
        c(context, g.a(context, f(context, str)));
    }

    public static void b(Context context, String str, String str2) {
        b(context, str);
        a(context, String.valueOf(Long.valueOf(h(context, str))), str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r9, java.util.ArrayList<java.lang.String> r10, long r11) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.b(android.content.Context, java.util.ArrayList, long):void");
    }

    public static Cursor c(Context context) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(f2949a, new String[]{"sim"}, null, null, null);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "get all number prefer sim data error:" + e.toString());
            cursor = null;
        }
        return cursor;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r9, long r10) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.c(android.content.Context, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
        if (r9 == false) goto L_0x007a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(android.content.Context r3, java.lang.String r4) {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r3
            r1 = r4
            int r0 = a(r0, r1)     // Catch: all -> 0x0093
            if (r0 < 0) goto L_0x0086
            r0 = r6
            r8 = r0
            r0 = r3
            r1 = r4
            android.database.Cursor r0 = i(r0, r1)     // Catch: all -> 0x0093
            r6 = r0
            r0 = r5
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x005e
            r0 = r5
            r9 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0093
            if (r0 == 0) goto L_0x005e
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = r0.getInt(r1)     // Catch: all -> 0x0093
            r10 = r0
        L_0x003d:
            r0 = r5
            r9 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x0093
            if (r0 == 0) goto L_0x005e
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = r0.getInt(r1)     // Catch: all -> 0x0093
            r1 = r10
            if (r0 == r1) goto L_0x003d
            r0 = 1
            r9 = r0
        L_0x005e:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0086
            r0 = r6
            r8 = r0
            r0 = r6
            int r0 = r0.getCount()     // Catch: all -> 0x0093
            r1 = 1
            if (r0 == r1) goto L_0x007a
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0086
        L_0x007a:
            r0 = r6
            r8 = r0
            r0 = r3
            r1 = r4
            boolean r0 = d(r0, r1)     // Catch: all -> 0x0093
            r0 = r6
            r7 = r0
        L_0x0086:
            r0 = r7
            if (r0 == 0) goto L_0x0092
            r0 = r7
            r0.close()
        L_0x0092:
            return
        L_0x0093:
            r3 = move-exception
            r0 = r8
            if (r0 == 0) goto L_0x00a0
            r0 = r8
            r0.close()
        L_0x00a0:
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.c(android.content.Context, java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long d(android.content.Context r10, long r11) {
        /*
            r0 = 0
            r13 = r0
            r0 = r10
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0056, all -> 0x0088
            android.net.Uri r1 = android.provider.ContactsContract.Contacts.CONTENT_URI     // Catch: Exception -> 0x0056, all -> 0x0088
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0056, all -> 0x0088
            r3 = r2
            r4 = 0
            java.lang.String r5 = "name_raw_contact_id"
            r3[r4] = r5     // Catch: Exception -> 0x0056, all -> 0x0088
            java.lang.String r3 = "_id = ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x0056, all -> 0x0088
            r5 = r4
            r6 = 0
            r7 = r11
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch: Exception -> 0x0056, all -> 0x0088
            r5[r6] = r7     // Catch: Exception -> 0x0056, all -> 0x0088
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0056, all -> 0x0088
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00b3
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0095, Exception -> 0x00a9
            if (r0 == 0) goto L_0x00b3
            r0 = r10
            r1 = r10
            java.lang.String r2 = "name_raw_contact_id"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x0095, Exception -> 0x00a9
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0095, Exception -> 0x00a9
            r11 = r0
        L_0x0043:
            r0 = r11
            r14 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0053
            r0 = r10
            r0.close()
            r0 = r11
            r14 = r0
        L_0x0053:
            r0 = r14
            return r0
        L_0x0056:
            r13 = move-exception
            r0 = 0
            r10 = r0
        L_0x0059:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x009f
            r16 = r0
            r0 = r16
            java.lang.String r1 = "get ContactId error: "
            r0.<init>(r1)     // Catch: all -> 0x009f
            java.lang.String r0 = "PreferSimUtil"
            r1 = r16
            r2 = r13
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x009f
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x009f
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x009f
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x009f
            r0 = r10
            if (r0 == 0) goto L_0x00ad
            r0 = r10
            r0.close()
            r0 = 0
            r14 = r0
            goto L_0x0053
        L_0x0088:
            r10 = move-exception
        L_0x0089:
            r0 = r13
            if (r0 == 0) goto L_0x0093
            r0 = r13
            r0.close()
        L_0x0093:
            r0 = r10
            throw r0
        L_0x0095:
            r16 = move-exception
            r0 = r10
            r13 = r0
            r0 = r16
            r10 = r0
            goto L_0x0089
        L_0x009f:
            r16 = move-exception
            r0 = r10
            r13 = r0
            r0 = r16
            r10 = r0
            goto L_0x0089
        L_0x00a9:
            r13 = move-exception
            goto L_0x0059
        L_0x00ad:
            r0 = 0
            r14 = r0
            goto L_0x0053
        L_0x00b3:
            r0 = 0
            r11 = r0
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.d(android.content.Context, long):long");
    }

    private static boolean d(Context context, String str) {
        int i;
        boolean z = true;
        if (a(context, str) != -1) {
            try {
                i = context.getContentResolver().delete(f2949a, "number = ?", new String[]{g.a(context, str)});
            } catch (Exception e) {
                Log.d("PreferSimUtil", "delete number prefer sim error: " + e.toString());
                i = 0;
            }
            if (i == 0) {
                z = false;
            }
        }
        return z;
    }

    private static int e(Context context, String str) {
        int i;
        if (a(context, str) == -1) {
            i = 0;
        } else {
            try {
                i = context.getContentResolver().delete(f2949a, "number = ?", new String[]{g.a(context, str)});
            } catch (Exception e) {
                Log.d("PreferSimUtil", "delete number prefer sim error: " + e.toString());
                i = 0;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String f(android.content.Context r9, java.lang.String r10) {
        /*
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0052, all -> 0x0086
            android.net.Uri r1 = android.provider.ContactsContract.Data.CONTENT_URI     // Catch: Exception -> 0x0052, all -> 0x0086
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0052, all -> 0x0086
            r3 = r2
            r4 = 0
            java.lang.String r5 = "data1"
            r3[r4] = r5     // Catch: Exception -> 0x0052, all -> 0x0086
            java.lang.String r3 = "_id = ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x0052, all -> 0x0086
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x0052, all -> 0x0086
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0052, all -> 0x0086
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x00a2
            r0 = r9
            r10 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0095, Exception -> 0x0099
            if (r0 == 0) goto L_0x00a2
            r0 = r9
            r10 = r0
            r0 = r9
            r1 = r9
            java.lang.String r2 = "data1"
            int r1 = r1.getColumnIndex(r2)     // Catch: all -> 0x0095, Exception -> 0x0099
            java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x0095, Exception -> 0x0099
            r11 = r0
        L_0x0042:
            r0 = r11
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0050
            r0 = r9
            r0.close()
            r0 = r11
            r10 = r0
        L_0x0050:
            r0 = r10
            return r0
        L_0x0052:
            r11 = move-exception
            r0 = 0
            r9 = r0
        L_0x0055:
            r0 = r9
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0095
            r12 = r0
            r0 = r9
            r10 = r0
            r0 = r12
            java.lang.String r1 = "get data cursor error: "
            r0.<init>(r1)     // Catch: all -> 0x0095
            r0 = r9
            r10 = r0
            java.lang.String r0 = "PreferSimUtil"
            r1 = r12
            r2 = r11
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x0095
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x0095
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0095
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x0095
            r0 = r9
            if (r0 == 0) goto L_0x009d
            r0 = r9
            r0.close()
            r0 = 0
            r10 = r0
            goto L_0x0050
        L_0x0086:
            r9 = move-exception
            r0 = 0
            r10 = r0
        L_0x0089:
            r0 = r10
            if (r0 == 0) goto L_0x0093
            r0 = r10
            r0.close()
        L_0x0093:
            r0 = r9
            throw r0
        L_0x0095:
            r9 = move-exception
            goto L_0x0089
        L_0x0099:
            r11 = move-exception
            goto L_0x0055
        L_0x009d:
            r0 = 0
            r10 = r0
            goto L_0x0050
        L_0x00a2:
            r0 = 0
            r11 = r0
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.f(android.content.Context, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093  */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long g(android.content.Context r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.g(android.content.Context, java.lang.String):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0095  */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long h(android.content.Context r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.c.h(android.content.Context, java.lang.String):long");
    }

    private static Cursor i(Context context, String str) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"raw_contact_id"}, "PHONE_NUMBERS_EQUAL( data1, ?, 0)", new String[]{str}, null);
        } catch (Exception e) {
            Log.d("PreferSimUtil", "get data cursor error: " + e.toString());
            cursor = null;
        }
        return cursor;
    }
}
