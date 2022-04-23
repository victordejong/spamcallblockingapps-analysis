package com.android.contacts.asuscallerid;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.content.UriMatcher;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.Log;
import com.android.contacts.a.b;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.asus.a.a;
import com.asus.a.c;
import com.asus.callguardhelper.e;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/AsusCallGuardProvider.class */
public class AsusCallGuardProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f570a = Uri.parse("content://com.asus.asuscallguard");

    /* renamed from: b  reason: collision with root package name */
    static final String f571b = AsusCallGuardProvider.class.getSimpleName();
    private static final UriMatcher e;
    private b c;
    private e d = null;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        e = uriMatcher;
        uriMatcher.addURI("com.asus.asuscallguard", "asus_callguard/asuscallerid/*", 1);
        e.addURI("com.asus.asuscallguard", "asus_callguard/tag_count/*", 2);
        e.addURI("com.asus.asuscallguard", "asus_callguard/tag/*", 3);
        e.addURI("com.asus.asuscallguard", "asus_callguard/offlinedata/", 4);
        e.addURI("com.asus.asuscallguard", "asus_callguard/onlinestratery/*", 5);
        e.addURI("com.asus.asuscallguard", "asus_callguard/user_tag/*", 6);
        e.addURI("com.asus.asuscallguard", "asus_callguard/init/", 7);
        e.addURI("com.asus.asuscallguard", "asus_callguard/businesscard/*", 8);
        e.addURI("com.asus.asuscallguard", "asus_callguard/gradeinfo/*", 9);
        e.addURI("com.asus.asuscallguard", "asus_callguard/isspammessage/*", 10);
        e.addURI("com.asus.asuscallguard", "asus_callguard/asuscallerid/", 11);
        e.addURI("com.asus.asuscallguard", "asus_callguard/recommand_tag/*", 12);
        e.addURI("com.asus.asuscallguard", "userconfirm/*", 15);
        e.addURI("com.asus.asuscallguard", "userconfirm/", 14);
        e.addURI("com.asus.asuscallguard", "success_caller_info/", 16);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x01b8 -> B:38:0x01a5). Please submit an issue!!! */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Bundle call(java.lang.String r10, java.lang.String r11, android.os.Bundle r12) {
        /*
            Method dump skipped, instructions count: 1472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.asuscallerid.AsusCallGuardProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int i = 0;
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        SharedPreferences m = c.m(getContext());
        this.d = c.d(getContext());
        String lastPathSegment = uri.getLastPathSegment();
        Log.d(f571b, "delete" + e.match(uri));
        switch (e.match(uri)) {
            case 3:
                boolean b2 = this.d != null ? this.d.b(a.a(lastPathSegment)) : false;
                Log.d(f571b, "delete:" + a.c(lastPathSegment) + ", isSucess:" + b2);
                int i2 = m.getInt("mark_type:unMark", 0);
                if (b2 && m != null) {
                    m.edit().putInt("mark_type:unMark", i2 + 1).commit();
                }
                if (b2) {
                    i = 1;
                    break;
                }
                break;
            case 6:
                if (writableDatabase.delete("usertag_list", "number = '" + uri.getLastPathSegment() + "'", strArr) != 0) {
                    i = 1;
                    break;
                }
                break;
            case 16:
                i = writableDatabase.delete("success_caller_info", null, null);
                break;
        }
        return i;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String str;
        switch (e.match(uri)) {
            case 1:
            case 3:
            case 5:
            case 8:
            case 9:
            case 10:
            case 11:
            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                str = "vnd.android.cursor.dir/asuscallerid";
                break;
            case 2:
            case 6:
            case 7:
            case 15:
                str = "vnd.android.cursor.item/asuscallerid";
                break;
            case 4:
            case 12:
            case 13:
            default:
                throw new IllegalStateException("Unknown URL");
        }
        return str;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri withAppendedId;
        boolean z = true;
        this.d = c.d(getContext());
        SharedPreferences m = c.m(getContext());
        Log.d(f571b, "insert" + e.match(uri));
        switch (e.match(uri)) {
            case 3:
                Log.d(f571b, "mark TAG_TW");
                String a2 = a.a(uri.getLastPathSegment());
                String asString = contentValues.getAsString("caller_type_value");
                String asString2 = contentValues.getAsString("caller_type");
                try {
                    if (this.d != null) {
                        if (asString2 == null) {
                            withAppendedId = Uri.withAppendedPath(uri, "true");
                            break;
                        } else {
                            z = asString2.equals("crank") ? this.d.a(a2, asString, 2) : asString2.equals("insurance") ? this.d.a(a2, asString, 5) : asString2.equals("fraud") ? this.d.a(a2, asString, 1) : asString2.equals("house agent") ? this.d.a(a2, asString, 6) : asString2.equals("promote sales") ? this.d.a(a2, asString, 3) : asString2.equals("company") ? this.d.a(a2, asString, 0) : asString2.equals("block") ? this.d.a(a2, asString, 7) : this.d.a(a2, asString, 4);
                            if (z) {
                                int i = m.getInt("mark_type:" + asString2, 0);
                                Log.d(f571b, "get " + asString2 + " count:" + i);
                                if (m != null) {
                                    m.edit().putInt("mark_type:" + asString2, i + 1).commit();
                                }
                                b.a();
                                b.a(111, getContext(), "AsusCallGuard", "AsusCallGuard_Count_MarkType", asString2, null);
                            }
                        }
                    }
                } catch (Exception e2) {
                    Log.e(f571b, "TAG_TW fail to markNumber, exception: " + e2.toString());
                    z = false;
                }
                withAppendedId = Uri.withAppendedPath(uri, String.valueOf(z));
                break;
            case 6:
            default:
                withAppendedId = Uri.withAppendedPath(uri, "true");
                break;
            case 15:
                Log.d(f571b, "MATCHCODE_USERCONFIRM insert:" + uri.getLastPathSegment());
                SQLiteDatabase writableDatabase = b.a(getContext()).getWritableDatabase();
                String lastPathSegment = uri.getLastPathSegment();
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("number", lastPathSegment);
                long insert = writableDatabase.insert("userconfirm", null, contentValues2);
                if (insert > 0) {
                    withAppendedId = ContentUris.withAppendedId(uri, insert);
                    break;
                } else {
                    throw new SQLException("Failed to insert row into " + uri);
                }
        }
        return withAppendedId;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Log.d(f571b, "AsusCallGuardProvider onCreate");
        this.c = b.a(getContext());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x048b, code lost:
        if (r12 == null) goto L_0x048e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x035f, code lost:
        if (r0.length == 0) goto L_0x0362;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0222  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor query(android.net.Uri r10, java.lang.String[] r11, java.lang.String r12, java.lang.String[] r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 2752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.asuscallerid.AsusCallGuardProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005b  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int update(android.net.Uri r6, android.content.ContentValues r7, java.lang.String r8, java.lang.String[] r9) {
        /*
            r5 = this;
            r0 = 0
            r10 = r0
            r0 = r5
            r1 = r5
            android.content.Context r1 = r1.getContext()
            com.asus.callguardhelper.e r1 = com.asus.a.c.d(r1)
            r0.d = r1
            android.content.UriMatcher r0 = com.android.contacts.asuscallerid.AsusCallGuardProvider.e
            r1 = r6
            int r0 = r0.match(r1)
            switch(r0) {
                case 5: goto L_0x002b;
                default: goto L_0x0028;
            }
        L_0x0028:
            r0 = r10
            return r0
        L_0x002b:
            r0 = r6
            java.lang.String r0 = r0.getLastPathSegment()
            r6 = r0
            r0 = r5
            com.asus.callguardhelper.e r0 = r0.d     // Catch: Exception -> 0x0079
            if (r0 == 0) goto L_0x00a3
            java.lang.String r0 = "allNet"
            r1 = r6
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x0079
            if (r0 == 0) goto L_0x0061
            r0 = r5
            com.asus.callguardhelper.e r0 = r0.d     // Catch: Exception -> 0x0079
            r1 = 102(0x66, float:1.43E-43)
            boolean r0 = r0.a(r1)     // Catch: Exception -> 0x0079
            r11 = r0
            java.lang.String r0 = com.android.contacts.asuscallerid.AsusCallGuardProvider.f571b     // Catch: Exception -> 0x0079, Exception -> 0x009b
            java.lang.String r1 = "QUERY Strategy set to Strategy_NETWORK_AVAILABLE"
            int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x009b
        L_0x0056:
            r0 = r11
            if (r0 == 0) goto L_0x0028
            r0 = 1
            r10 = r0
            goto L_0x0028
        L_0x0061:
            r0 = r5
            com.asus.callguardhelper.e r0 = r0.d     // Catch: Exception -> 0x0079
            r1 = 101(0x65, float:1.42E-43)
            boolean r0 = r0.a(r1)     // Catch: Exception -> 0x0079
            r11 = r0
            java.lang.String r0 = com.android.contacts.asuscallerid.AsusCallGuardProvider.f571b     // Catch: Exception -> 0x0079, Exception -> 0x009f
            java.lang.String r1 = "QUERY Strategy set to Strategy_WIFI_ONLY"
            int r0 = android.util.Log.d(r0, r1)     // Catch: Exception -> 0x009f
        L_0x0076:
            goto L_0x0056
        L_0x0079:
            r6 = move-exception
            r0 = 0
            r11 = r0
        L_0x007d:
            java.lang.String r0 = com.android.contacts.asuscallerid.AsusCallGuardProvider.f571b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "fail to setQueryStrategy, exception: "
            r2.<init>(r3)
            r2 = r6
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.e(r0, r1)
            goto L_0x0056
        L_0x009b:
            r6 = move-exception
            goto L_0x007d
        L_0x009f:
            r6 = move-exception
            goto L_0x007d
        L_0x00a3:
            r0 = 0
            r11 = r0
            goto L_0x0076
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.asuscallerid.AsusCallGuardProvider.update(android.net.Uri, android.content.ContentValues, java.lang.String, java.lang.String[]):int");
    }
}
