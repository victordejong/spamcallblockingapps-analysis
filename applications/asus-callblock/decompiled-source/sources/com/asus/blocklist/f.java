package com.asus.blocklist;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.asus.a.b;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2516a = f.class.getSimpleName();

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/f$a.class */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2517a = Uri.parse("content://blocklist" + File.separator + "blocklist");

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2518b = Uri.parse("content://blocklist" + File.separator + "blocktag");
        public static final Uri c = Uri.parse("content://blocklist" + File.separator + "tagname");
    }

    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/f$b.class */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final Uri f2519a = Uri.parse("content://com.asus.blocklist.provider" + File.separator + "blocklist");

        /* renamed from: b  reason: collision with root package name */
        public static final Uri f2520b = Uri.parse("content://com.asus.blocklist.provider" + File.separator + "blocktags");
        public static final Uri c = Uri.parse("content://com.asus.blocklist.provider" + File.separator + "usertags");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r5, java.lang.String r6, int r7, java.lang.String r8, int r9) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.f.a(android.content.Context, java.lang.String, int, java.lang.String, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> a(android.content.Context r7) {
        /*
            java.lang.String r0 = com.asus.blocklist.f.f2516a
            java.lang.String r1 = "queryAllTagInBlockList"
            int r0 = android.util.Log.d(r0, r1)
            r0 = r7
            boolean r0 = com.asus.blocklist.g.h(r0)
            if (r0 == 0) goto L_0x008c
            android.net.Uri r0 = com.asus.blocklist.f.a.f2518b
            r8 = r0
        L_0x0014:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x00a0, Exception -> 0x00b3
            r1 = r8
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x00a0, Exception -> 0x00b3
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0093
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.moveToPrevious()     // Catch: Exception -> 0x0054, all -> 0x00af
        L_0x0036:
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.moveToNext()     // Catch: Exception -> 0x0054, all -> 0x00af
            if (r0 == 0) goto L_0x0093
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = r8
            r2 = 0
            java.lang.String r1 = r1.getString(r2)     // Catch: Exception -> 0x0054, all -> 0x00af
            boolean r0 = r0.add(r1)     // Catch: Exception -> 0x0054, all -> 0x00af
            goto L_0x0036
        L_0x0054:
            r10 = move-exception
        L_0x0055:
            r0 = r8
            r7 = r0
            java.lang.String r0 = com.asus.blocklist.f.f2516a     // Catch: all -> 0x00af
            r11 = r0
            r0 = r8
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00af
            r12 = r0
            r0 = r8
            r7 = r0
            r0 = r12
            java.lang.String r1 = "Catch exception from isUserTagNumber. Exception:"
            r0.<init>(r1)     // Catch: all -> 0x00af
            r0 = r8
            r7 = r0
            r0 = r11
            r1 = r12
            r2 = r10
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x00af
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x00af
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00af
            int r0 = android.util.Log.e(r0, r1)     // Catch: all -> 0x00af
            r0 = r8
            if (r0 == 0) goto L_0x008a
            r0 = r8
            r0.close()
        L_0x008a:
            r0 = r9
            return r0
        L_0x008c:
            android.net.Uri r0 = com.asus.blocklist.f.b.f2520b
            r8 = r0
            goto L_0x0014
        L_0x0093:
            r0 = r8
            if (r0 == 0) goto L_0x008a
            r0 = r8
            r0.close()
            goto L_0x008a
        L_0x00a0:
            r8 = move-exception
            r0 = 0
            r7 = r0
        L_0x00a3:
            r0 = r7
            if (r0 == 0) goto L_0x00ad
            r0 = r7
            r0.close()
        L_0x00ad:
            r0 = r8
            throw r0
        L_0x00af:
            r8 = move-exception
            goto L_0x00a3
        L_0x00b3:
            r10 = move-exception
            r0 = 0
            r8 = r0
            goto L_0x0055
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.f.a(android.content.Context):java.util.List");
    }

    public static void a(Context context, String str) {
        Log.d(f2516a, "addBlockListByTag tagName=" + str);
        if (g.h(context)) {
            Uri withAppendedPath = Uri.withAppendedPath(a.c, str);
            try {
                context.getContentResolver().delete(withAppendedPath, null, null);
                ContentValues contentValues = new ContentValues();
                contentValues.put("tag_name", str);
                context.getContentResolver().insert(withAppendedPath, contentValues);
                context.getContentResolver().delete(Uri.withAppendedPath(b.f2520b, str), null, null);
                context.getContentResolver().insert(b.f2520b, contentValues);
            } catch (Exception e) {
                Log.e(f2516a, "Catch exception from addBlockListByTag(1). Exception:" + e.toString());
            }
        } else {
            try {
                context.getContentResolver().delete(Uri.withAppendedPath(b.f2520b, str), null, null);
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("tag_name", str);
                context.getContentResolver().insert(b.f2520b, contentValues2);
            } catch (Exception e2) {
                Log.e(f2516a, "Catch exception from addBlockListByTag(2). Exception:" + e2.toString());
            }
        }
    }

    public static void b(Context context, String str) {
        Log.d(f2516a, "removeFromBlockListByTag tagType=" + str);
        if (g.h(context)) {
            try {
                context.getContentResolver().delete(Uri.withAppendedPath(a.c, str), null, null);
                context.getContentResolver().delete(Uri.withAppendedPath(b.f2520b, str), null, null);
            } catch (Exception e) {
                Log.e(f2516a, "Catch exception from removeFromBlockListByTag(1). Exception:" + e.toString());
            }
        } else {
            try {
                context.getContentResolver().delete(Uri.withAppendedPath(b.f2520b, str), null, null);
            } catch (Exception e2) {
                Log.e(f2516a, "Catch exception from removeFromBlockListByTag(2). Exception:" + e2.toString());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.f.c(android.content.Context, java.lang.String):boolean");
    }

    public static void d(Context context, String str) {
        Log.d(f2516a, "removeFromUserTagList number:" + g.b(str));
        String a2 = com.asus.a.b.a(str);
        if (!a2.isEmpty()) {
            try {
                context.getContentResolver().delete(g.h(context) ? Uri.withAppendedPath(b.a.h, a2) : Uri.withAppendedPath(b.c, a2), null, null);
            } catch (Exception e) {
                Log.e(f2516a, "Catch exception from removeFromUserTagList. Exception:" + e.toString());
            }
        }
    }

    public static void e(Context context, String str) {
        Log.d(f2516a, "insertIntoUserTagList number:" + g.b(str));
        String a2 = com.asus.a.b.a(str);
        if (!a2.isEmpty()) {
            Uri withAppendedPath = g.h(context) ? Uri.withAppendedPath(b.a.h, a2) : Uri.withAppendedPath(b.c, a2);
            try {
                context.getContentResolver().delete(withAppendedPath, null, null);
                ContentValues contentValues = new ContentValues();
                contentValues.put("number", a2);
                context.getContentResolver().insert(withAppendedPath, contentValues);
            } catch (Exception e) {
                Log.e(f2516a, "Catch exception from insertIntoUserTagList. Exception:" + e.toString());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [android.database.Cursor] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean f(android.content.Context r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.f.f(android.content.Context, java.lang.String):boolean");
    }
}
