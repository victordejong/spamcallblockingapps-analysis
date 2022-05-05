package com.asus.privatecontacts.b;

import android.content.Context;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b/f.class */
public class f {
    private static final HashMap<String, Integer> d;

    /* renamed from: b  reason: collision with root package name */
    public int f3008b = 0;

    /* renamed from: a  reason: collision with root package name */
    public static final String f3007a = f.class.getSimpleName();
    private static int c = 3;
    private static f e = null;

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        d = hashMap;
        hashMap.put(TelephonyManager.EXTRA_STATE_IDLE, 0);
        d.put(TelephonyManager.EXTRA_STATE_OFFHOOK, 2);
        d.put(TelephonyManager.EXTRA_STATE_RINGING, 1);
    }

    private f() {
    }

    public static f a() {
        if (e == null) {
            e = new f();
        }
        return e;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[EDGE_INSN: B:57:0x00b0->B:22:0x00b0 ?: BREAK  ] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b0 A[ADDED_TO_REGION, EDGE_INSN: B:57:0x00b0->B:22:0x00b0 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b0 A[EDGE_INSN: B:57:0x00b0->B:22:0x00b0 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.b.f.a(android.content.Context, java.lang.String, boolean):void");
    }

    public static void a(Context context, boolean z) {
        if (context != null) {
            try {
                PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("key_private_not_close_private_contacts", z).commit();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static boolean a(Context context) {
        boolean z = false;
        if (context != null && 1 > PreferenceManager.getDefaultSharedPreferences(context).getInt("key_private_wrong_res_fix", 0)) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r7, java.lang.String r8) {
        /*
            r0 = r8
            if (r0 == 0) goto L_0x00ac
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00ac
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x007c, all -> 0x0095
            android.net.Uri r1 = com.asus.privatecontacts.provider.a.c.f3063a     // Catch: Exception -> 0x007c, all -> 0x0095
            r2 = r8
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)     // Catch: Exception -> 0x007c, all -> 0x0095
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x007c, all -> 0x0095
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0047
            r0 = r9
            r7 = r0
            r0 = r9
            int r0 = r0.getCount()     // Catch: all -> 0x00a4, Exception -> 0x00a8
            r10 = r0
            r0 = r10
            if (r0 <= 0) goto L_0x0047
            r0 = 1
            r11 = r0
        L_0x0032:
            r0 = r11
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r0.close()
            r0 = r11
            r12 = r0
        L_0x0044:
            r0 = r12
            return r0
        L_0x0047:
            r0 = r9
            if (r0 == 0) goto L_0x0076
            r0 = r9
            r7 = r0
            java.lang.String r0 = com.asus.privatecontacts.b.f.f3007a     // Catch: all -> 0x00a4, Exception -> 0x00a8
            r13 = r0
            r0 = r9
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a4, Exception -> 0x00a8
            r14 = r0
            r0 = r9
            r7 = r0
            r0 = r14
            java.lang.String r1 = "No matche data in phone_lookup table for number: "
            r0.<init>(r1)     // Catch: all -> 0x00a4, Exception -> 0x00a8
            r0 = r9
            r7 = r0
            r0 = r13
            r1 = r14
            r2 = r8
            java.lang.String r2 = com.asus.privatecontacts.b.b.b(r2)     // Catch: all -> 0x00a4, Exception -> 0x00a8
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00a4, Exception -> 0x00a8
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a4, Exception -> 0x00a8
            int r0 = android.util.Log.d(r0, r1)     // Catch: all -> 0x00a4, Exception -> 0x00a8
        L_0x0076:
            r0 = 0
            r11 = r0
            goto L_0x0032
        L_0x007c:
            r8 = move-exception
            r0 = 0
            r9 = r0
        L_0x007f:
            r0 = r9
            r7 = r0
            r0 = r8
            r0.printStackTrace()     // Catch: all -> 0x00a4
            r0 = r9
            if (r0 == 0) goto L_0x00ac
            r0 = r9
            r0.close()
            r0 = 0
            r12 = r0
            goto L_0x0044
        L_0x0095:
            r8 = move-exception
            r0 = 0
            r7 = r0
        L_0x0098:
            r0 = r7
            if (r0 == 0) goto L_0x00a2
            r0 = r7
            r0.close()
        L_0x00a2:
            r0 = r8
            throw r0
        L_0x00a4:
            r8 = move-exception
            goto L_0x0098
        L_0x00a8:
            r8 = move-exception
            goto L_0x007f
        L_0x00ac:
            r0 = 0
            r12 = r0
            goto L_0x0044
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.b.f.a(android.content.Context, java.lang.String):boolean");
    }

    public static HashMap<String, Integer> b() {
        return d;
    }

    public static boolean b(Context context) {
        boolean z = true;
        if (context != null) {
            z = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("key_private_not_close_private_contacts", true);
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.b.f.b(android.content.Context, java.lang.String):boolean");
    }
}
