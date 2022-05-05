package com.asus.privatecontacts.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/b/c.class */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap<String, Integer> f3005b;
    private static final String c = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public static final String f3004a = null;

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        f3005b = hashMap;
        hashMap.put("vnd.android.cursor.item/email_v2", 0);
        f3005b.put("vnd.android.cursor.item/contact_event", 1);
        f3005b.put("vnd.android.cursor.item/group_membership", 2);
        f3005b.put("vnd.android.cursor.item/identity", 3);
        f3005b.put("vnd.android.cursor.item/im", 4);
        f3005b.put("vnd.android.cursor.item/name", 5);
        f3005b.put("vnd.android.cursor.item/nickname", 6);
        f3005b.put("vnd.android.cursor.item/note", 7);
        f3005b.put("vnd.android.cursor.item/organization", 8);
        f3005b.put("vnd.android.cursor.item/phone_v2", 9);
        f3005b.put("vnd.android.cursor.item/photo", 10);
        f3005b.put("vnd.android.cursor.item/postal-address_v2", 11);
        f3005b.put("vnd.android.cursor.item/relation", 12);
        f3005b.put("vnd.android.cursor.item/sip_address", 13);
        f3005b.put("vnd.android.cursor.item/website", 14);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(android.database.Cursor r4, java.lang.String r5) {
        /*
            r0 = -1
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            r1 = r5
            int r0 = r0.getColumnIndex(r1)     // Catch: Exception -> 0x004a
            r10 = r0
            r0 = r10
            if (r0 < 0) goto L_0x0026
            r0 = r4
            r1 = r10
            long r0 = r0.getLong(r1)     // Catch: Exception -> 0x004a
            r8 = r0
        L_0x0023:
            r0 = r8
            return r0
        L_0x0026:
            java.lang.String r0 = com.asus.privatecontacts.b.c.c     // Catch: Exception -> 0x004a
            r4 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x004a
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Cannot get the long value by Column name: "
            r0.<init>(r1)     // Catch: Exception -> 0x004a
            r0 = r4
            r1 = r11
            r2 = r5
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: Exception -> 0x004a
            java.lang.String r1 = r1.toString()     // Catch: Exception -> 0x004a
            int r0 = android.util.Log.v(r0, r1)     // Catch: Exception -> 0x004a
            r0 = r6
            r8 = r0
            goto L_0x0023
        L_0x004a:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            r0 = r6
            r8 = r0
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.b.c.a(android.database.Cursor, java.lang.String):long");
    }

    public static boolean a(ContentValues contentValues, String str, String str2) {
        boolean z;
        ContentValues contentValues2 = contentValues;
        if (contentValues == null) {
            try {
                contentValues2 = new ContentValues();
            } catch (Exception e) {
                Log.d(c, "Failed to set value as long [setContentValuesAsString]");
                e.printStackTrace();
                z = false;
            }
        }
        contentValues2.put(str, str2);
        z = true;
        return z;
    }

    public static boolean a(Cursor cursor, ContentValues contentValues, String str) {
        boolean z;
        if (!(cursor == null || contentValues == null)) {
            try {
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex >= 0) {
                    int type = cursor.getType(columnIndex);
                    switch (type) {
                        case 1:
                            contentValues.put(str, Long.valueOf(cursor.getLong(columnIndex)));
                            break;
                        case 2:
                            contentValues.put(str, Double.valueOf(cursor.getDouble(columnIndex)));
                            break;
                        case 3:
                            contentValues.put(str, cursor.getString(columnIndex));
                            break;
                        case 4:
                            contentValues.put(str, cursor.getBlob(columnIndex));
                            break;
                        default:
                            Log.d(c, "Unknown column type: " + type + ", column: " + str);
                            contentValues.put(str, cursor.getString(columnIndex));
                            break;
                    }
                }
            } catch (Exception e) {
                Log.d(c, "Failed to set value from cursor [setContentValuesByIndex]");
                e.printStackTrace();
                z = false;
            }
        }
        z = true;
        return z;
    }

    public static String b(Cursor cursor, String str) {
        String str2 = null;
        if (cursor != null) {
            try {
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex >= 0) {
                    str2 = cursor.getString(columnIndex);
                } else {
                    Log.v(c, "Cannot get the long value by Column name: " + str);
                    str2 = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
                str2 = null;
            }
        }
        return str2;
    }

    public static int c(Cursor cursor, String str) {
        int i = -1;
        if (cursor != null) {
            try {
                int columnIndex = cursor.getColumnIndex(str);
                if (columnIndex >= 0) {
                    i = cursor.getInt(columnIndex);
                } else {
                    Log.v(c, "Cannot get the int value by Column name: " + str);
                    i = -1;
                }
            } catch (Exception e) {
                e.printStackTrace();
                i = -1;
            }
        }
        return i;
    }
}
