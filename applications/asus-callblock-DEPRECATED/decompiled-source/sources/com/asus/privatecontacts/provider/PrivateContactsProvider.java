package com.asus.privatecontacts.provider;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.Constants;
import com.asus.privatecontacts.b.e;
import com.asus.privatecontacts.provider.a;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/PrivateContactsProvider.class */
public class PrivateContactsProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3059a = PrivateContactsProvider.class.getSimpleName();
    private static final UriMatcher c;

    /* renamed from: b  reason: collision with root package name */
    private b f3060b;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        c = uriMatcher;
        uriMatcher.addURI("com.asus.privatecontacts.provider", "raw_contacts", 1);
        c.addURI("com.asus.privatecontacts.provider", "data", 2);
        c.addURI("com.asus.privatecontacts.provider", a.f.f3067a, 4);
        c.addURI("com.asus.privatecontacts.provider", a.f.f3068b, 10001);
        c.addURI("com.asus.privatecontacts.provider", a.f.c, 5);
        c.addURI("com.asus.privatecontacts.provider", "calls", 6);
        c.addURI("com.asus.privatecontacts.provider", "phone_lookup", 100);
        c.addURI("com.asus.privatecontacts.provider", "phone_lookup/*", 101);
        c.addURI("com.asus.privatecontacts.provider", "private_settings", 9000);
        c.addURI("com.asus.privatecontacts.provider", a.f.d, 9001);
        c.addURI("com.asus.privatecontacts.provider", a.f.e, 9002);
        c.addURI("com.asus.privatecontacts.provider", a.f.f, 9003);
        c.addURI("com.asus.privatecontacts.provider", "clear", 10000);
    }

    private int a() {
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.f3060b.getWritableDatabase();
            int delete = writableDatabase.delete("raw_contacts", null, null) + 0 + writableDatabase.delete("data", null, null) + writableDatabase.delete("calls", null, null);
            i = delete;
            i = delete + writableDatabase.delete("phone_lookup", null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    private int a(ContentValues contentValues, String str, String[] strArr) {
        int i = 0;
        try {
            i = this.f3060b.getWritableDatabase().update("raw_contacts", contentValues, str, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(java.lang.String r10, java.lang.String[] r11) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.provider.PrivateContactsProvider.a(java.lang.String, java.lang.String[]):int");
    }

    private long a(ContentValues contentValues) {
        long j = -1;
        try {
            j = this.f3060b.getWritableDatabase().insert("raw_contacts", null, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    private static Cursor a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = sQLiteDatabase.rawQuery(b.a(str, str2), null);
        } catch (Exception e) {
            e = e;
            cursor = null;
        }
        try {
            if (cursor != null) {
                Log.d(f3059a, "cursor count: " + cursor.getCount());
                cursor2 = cursor;
            } else {
                Log.d(f3059a, "cursor is null");
                cursor2 = cursor;
            }
        } catch (Exception e2) {
            e = e2;
            Log.d(f3059a, "sipPhoneLookupQuery exception");
            e.printStackTrace();
            cursor2 = cursor;
            if (cursor != null) {
                cursor.close();
                cursor2 = null;
            }
            return cursor2;
        }
        return cursor2;
    }

    private Cursor a(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        try {
            cursor = this.f3060b.getReadableDatabase().query("raw_contacts", strArr, str, strArr2, null, null, str2);
        } catch (Exception e) {
            e.printStackTrace();
            cursor = null;
        }
        return cursor;
    }

    private static boolean a(String str) {
        boolean z;
        if (str != null) {
            File file = new File(Uri.parse(str).getPath());
            if (file.exists()) {
                z = file.delete();
                return z;
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long b(android.content.ContentValues r8) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.provider.PrivateContactsProvider.b(android.content.ContentValues):long");
    }

    private Cursor b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursor;
        boolean z = true;
        Context context = getContext();
        getContext();
        String a2 = e.a(str, ((TelephonyManager) context.getSystemService("phone")).getNetworkCountryIso());
        String a3 = e.a(str);
        String callerIDMinMatch = PhoneNumberUtils.toCallerIDMinMatch(a3);
        b bVar = this.f3060b;
        StringBuilder sb = new StringBuilder();
        boolean z2 = !TextUtils.isEmpty(a2);
        if (TextUtils.isEmpty(a3)) {
            z = false;
        }
        if (z2 || z) {
            sb.append(" AND ( ");
            if (z2) {
                sb.append(" normalized_number = ");
                DatabaseUtils.appendEscapedSQLString(sb, a2);
            }
            if (z2 && z) {
                sb.append(" OR ");
            }
            if (z) {
                if (!bVar.f3070a) {
                    int length = a3.length();
                    sb.append(" len <= ");
                    sb.append(length);
                    sb.append(" AND substr(");
                    DatabaseUtils.appendEscapedSQLString(sb, a3);
                    sb.append(',');
                    sb.append(length);
                    sb.append(" - len + 1) = normalized_number");
                    sb.append(" OR (");
                    sb.append(" len > ");
                    sb.append(length);
                    sb.append(" AND substr(normalized_number,");
                    sb.append("len + 1 - ");
                    sb.append(length);
                    sb.append(") = ");
                    DatabaseUtils.appendEscapedSQLString(sb, a3);
                    sb.append(")");
                } else {
                    sb.append("0");
                }
            }
            sb.append(')');
        }
        try {
            cursor = sQLiteDatabase.rawQuery(b.a(callerIDMinMatch, sb.toString(), str2), null);
        } catch (Exception e) {
            Log.d(f3059a, "strictPhoneLookupQuery exception");
            e.printStackTrace();
            cursor = null;
        }
        return cursor;
    }

    private Cursor b(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("(SELECT D.* , R.send_to_voicemail, R.times_contacted, R.last_time_contacted, R.starred, R.display_name, R.display_name_alt, R.display_name_source, R.phonetic_name, R.phonetic_name_style, R.sort_key, R.phonebook_label, R.phonebook_bucket, R.sort_key_alt, R.phonebook_label_alt, R.phonebook_bucket_alt, R.name_verified, R.photo_id, R.photo_file_id, R.has_phone_number, R.lookup, R.contact_last_updated_timestamp, R.photo_uri, R.photo_thumb_uri, R.custom_ringtone, R.order_favorite FROM data AS D LEFT JOIN raw_contacts AS R ON ( D.raw_contact_id=R._id ))");
        try {
            cursor = sQLiteQueryBuilder.query(this.f3060b.getReadableDatabase(), strArr, str, strArr2, null, null, str2);
        } catch (Exception e) {
            e.printStackTrace();
            cursor = null;
        }
        return cursor;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(java.lang.String r10, java.lang.String[] r11) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.provider.PrivateContactsProvider.b(java.lang.String, java.lang.String[]):java.lang.String");
    }

    private int c(String str, String[] strArr) {
        int i = 0;
        try {
            int delete = this.f3060b.getWritableDatabase().delete("phone_lookup", str, strArr);
            i = delete;
            Log.d(f3059a, delete + " rows in phone_lookup were deelted!");
            i = delete;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    private long c(ContentValues contentValues) {
        long j = -1;
        try {
            j = this.f3060b.getWritableDatabase().insert("calls", null, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    private static Cursor c(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery(b.a(PhoneNumberUtils.toCallerIDMinMatch(e.a(str)), null, str2), null);
        } catch (Exception e) {
            Log.d(f3059a, "loosePhoneLookupQuery exception");
            e.printStackTrace();
        }
        return cursor;
    }

    private Cursor c(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        try {
            cursor = this.f3060b.getReadableDatabase().query("calls", strArr, str, strArr2, null, null, str2);
        } catch (Exception e) {
            e.printStackTrace();
            cursor = null;
        }
        return cursor;
    }

    private int d(String str, String[] strArr) {
        int i = 0;
        try {
            i = this.f3060b.getWritableDatabase().delete("data", str, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    private long d(ContentValues contentValues) {
        long j = -1;
        try {
            j = this.f3060b.getWritableDatabase().insert("phone_lookup", null, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    private int e(String str, String[] strArr) {
        int i = 0;
        try {
            i = this.f3060b.getWritableDatabase().delete("calls", str, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    private Cursor f(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = this.f3060b.getReadableDatabase();
        Cursor cursor = null;
        String str2 = "SELECT _id, photo_id, lookup, photo_uri, photo_thumb_uri, original_id, display_name FROM raw_contacts";
        if (str != null) {
            str2 = "SELECT _id, photo_id, lookup, photo_uri, photo_thumb_uri, original_id, display_name FROM raw_contacts";
            if (!TextUtils.isEmpty(str)) {
                str2 = "SELECT _id, photo_id, lookup, photo_uri, photo_thumb_uri, original_id, display_name FROM raw_contacts WHERE ( " + str + " )";
            }
        }
        try {
            cursor = readableDatabase.rawQuery(str2, strArr);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cursor;
    }

    private Cursor g(String str, String[] strArr) {
        SQLiteDatabase readableDatabase = this.f3060b.getReadableDatabase();
        String b2 = b(str, strArr);
        Cursor cursor = null;
        if (b2 != null) {
            cursor = null;
            if (!TextUtils.isEmpty(b2)) {
                try {
                    cursor = readableDatabase.rawQuery("SELECT D._id, R._id AS raw_contact_id, R.display_name, D.mimetype, D.is_super_primary, D. data1, D. data2, D. data3, D.data4 FROM raw_contacts AS R LEFT JOIN data AS D ON ( D.raw_contact_id=raw_contact_id ) WHERE (raw_contact_id IN ( " + b2 + " ) AND D.mimetype='vnd.android.cursor.item/phone_v2')", null);
                } catch (Exception e) {
                    e.printStackTrace();
                    cursor = null;
                }
            }
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int a2;
        switch (c.match(uri)) {
            case 2:
                a2 = d(str, strArr);
                break;
            case 6:
                a2 = e(str, strArr);
                break;
            case 100:
                a2 = c(str, strArr);
                break;
            case 10000:
                a2 = a();
                break;
            case 10001:
                a2 = a(str, strArr);
                break;
            default:
                throw new IllegalArgumentException(this.f3060b.a(uri));
        }
        return a2;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        long d;
        switch (c.match(uri)) {
            case 1:
                d = a(contentValues);
                break;
            case 2:
                d = b(contentValues);
                break;
            case 6:
                d = c(contentValues);
                break;
            case 100:
                d = d(contentValues);
                break;
            default:
                throw new IllegalArgumentException(this.f3060b.a(uri));
        }
        return d < 0 ? null : ContentUris.withAppendedId(uri, d);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        boolean z;
        try {
            this.f3060b = new b(getContext());
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        MatrixCursor matrixCursor;
        int i = 1;
        switch (c.match(uri)) {
            case 1:
                matrixCursor = a(strArr, str, strArr2, str2);
                break;
            case 2:
                matrixCursor = b(strArr, str, strArr2, str2);
                break;
            case 4:
                matrixCursor = f(str, strArr2);
                break;
            case 5:
                matrixCursor = g(str, strArr2);
                break;
            case 6:
                matrixCursor = c(strArr, str, strArr2, str2);
                break;
            case 101:
                SQLiteDatabase readableDatabase = this.f3060b.getReadableDatabase();
                if (!uri.getBooleanQueryParameter(Constants.SCHEME_SIP, false)) {
                    String lastPathSegment = uri.getPathSegments().size() > 1 ? uri.getLastPathSegment() : BuildConfig.FLAVOR;
                    String str3 = str2;
                    if (TextUtils.isEmpty(str2)) {
                        str3 = "length(normalized_number) DESC";
                    }
                    Cursor b2 = b(readableDatabase, lastPathSegment, str3);
                    if (b2 != null && b2.getCount() != 0) {
                        matrixCursor = b2;
                        break;
                    } else {
                        if (b2 != null) {
                            b2.close();
                        }
                        matrixCursor = c(readableDatabase, lastPathSegment, str3);
                        break;
                    }
                } else {
                    String str4 = str2;
                    if (TextUtils.isEmpty(str2)) {
                        str4 = "display_name COLLATE LOCALIZED ASC";
                    }
                    matrixCursor = a(readableDatabase, uri.getPathSegments().size() > 1 ? Uri.decode(uri.getLastPathSegment()) : BuildConfig.FLAVOR, str4);
                    break;
                }
                break;
            case 9001:
                getContext();
                c.a();
                MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"key_always_block_calls"});
                matrixCursor2.addRow(new Object[]{0});
                matrixCursor = matrixCursor2;
                break;
            case 9002:
                boolean a2 = c.a(getContext());
                MatrixCursor matrixCursor3 = new MatrixCursor(new String[]{"key_hide_caller_number"});
                if (!a2) {
                    i = 0;
                }
                matrixCursor3.addRow(new Object[]{Integer.valueOf(i)});
                matrixCursor = matrixCursor3;
                break;
            case 9003:
                boolean b3 = c.b(getContext());
                HashMap<String, String> c2 = c.c(getContext());
                MatrixCursor matrixCursor4 = new MatrixCursor(new String[]{"key_custom_profile_switch", "key_custom_profile_name", "key_custom_profile_photo", "key_custom_profile_phone", "key_custom_profile_phone_category"});
                matrixCursor4.addRow(new Object[]{Integer.valueOf(b3 ? 1 : 0), c2.get("key_custom_profile_name"), c2.get("key_custom_profile_photo"), c2.get("key_custom_profile_phone"), c2.get("key_custom_profile_phone_category")});
                matrixCursor = matrixCursor4;
                break;
            default:
                throw new IllegalArgumentException(this.f3060b.a(uri));
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        switch (c.match(uri)) {
            case 1:
                i = a(contentValues, str, strArr);
                break;
            case 9003:
                i = 0;
                if (contentValues != null) {
                    i = 0;
                    if (c.a(getContext(), contentValues.getAsString("key_custom_profile_name"), contentValues.getAsString("key_custom_profile_photo"), contentValues.getAsString("key_custom_profile_phone"), contentValues.getAsString("key_custom_profile_phone_category"))) {
                        i = 1;
                        break;
                    }
                }
                break;
            default:
                throw new IllegalArgumentException(this.f3060b.a(uri));
        }
        return i;
    }
}
