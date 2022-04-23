package com.asus.callguardhelper;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.util.Log;
import com.asus.msazure.AzureUtils;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/asus/callguardhelper/CallGuardProvider.class */
public class CallGuardProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2552a = CallGuardProvider.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static final UriMatcher f2553b;
    private c c;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f2553b = uriMatcher;
        uriMatcher.addURI("com.asus.callguard.provider", "tag_table", 1);
        f2553b.addURI("com.asus.callguard.provider", "cache_table", 2);
        f2553b.addURI("com.asus.callguard.provider", "user_data_statistics", 3);
        f2553b.addURI("com.asus.callguard.provider", "user_data_statistics/31", 31);
        f2553b.addURI("com.asus.callguard.provider", "user_data_statistics/32", 32);
        f2553b.addURI("com.asus.callguard.provider", "user_data_statistics/33", 33);
        f2553b.addURI("com.asus.callguard.provider", "user_data_statistics/34", 34);
        f2553b.addURI("com.asus.callguard.provider", "contacts_call_log", 4);
        f2553b.addURI("com.asus.callguard.provider", "phone_call_log", 5);
    }

    private int a(String str, ContentValues contentValues, String str2, String[] strArr) {
        int i;
        Exception e;
        try {
            ContentValues contentValues2 = new ContentValues();
            String[] strArr2 = {AzureUtils.a(strArr[0])};
            Log.d(f2552a, "PhoneNum::" + strArr[0]);
            Log.d(f2552a, "encryptPhoneNum::" + strArr2[0]);
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                String str3 = entry.getKey().toString();
                Object value = entry.getValue();
                if (value != null) {
                    if (str3.equals("_id")) {
                        contentValues2.put(str3, AzureUtils.a(value.toString()));
                    } else if (str3.equals("number")) {
                        contentValues2.put("cc", AzureUtils.a(value.toString()));
                    } else if (str3.equals("imei")) {
                        contentValues2.put("cc_1", AzureUtils.a(value.toString()));
                    } else if (str3.equals("wifi_mac_add")) {
                        contentValues2.put("cc_2", AzureUtils.a(value.toString()));
                    } else if (str3.equals("device_sn")) {
                        contentValues2.put("cc_3", AzureUtils.a(value.toString()));
                    } else if (str3.equals("talk_duration")) {
                        contentValues2.put("cc_4", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_missed")) {
                        contentValues2.put("is_0", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_moving")) {
                        contentValues2.put("is_1", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_new_contacts")) {
                        contentValues2.put("is_2", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_delete_unknown")) {
                        contentValues2.put("is_3", AzureUtils.a(value.toString()));
                    } else if (str3.equals("role")) {
                        contentValues2.put("cc_5", AzureUtils.a(value.toString()));
                    } else if (str3.equals("target_phone_number")) {
                        contentValues2.put("cc_6", AzureUtils.a(value.toString()));
                    } else if (str3.equals("target_name")) {
                        contentValues2.put("cc_7", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_end_accuracy")) {
                        contentValues2.put("lo_5", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_end_latitude")) {
                        contentValues2.put("lo_3", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_end_longitude")) {
                        contentValues2.put("lo_4", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_offhook_accuracy")) {
                        contentValues2.put("lo_8", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_offhook_latitude")) {
                        contentValues2.put("lo_7", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_offhook_longitude")) {
                        contentValues2.put("lo_6", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_start_accuracy")) {
                        contentValues2.put("lo_2", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_start_latitude")) {
                        contentValues2.put("lo_1", AzureUtils.a(value.toString()));
                    } else if (str3.equals("location_start_longitude")) {
                        contentValues2.put("lo", AzureUtils.a(value.toString()));
                    } else if (str3.equals("log_create_time_stamp")) {
                        contentValues2.put("new_1", AzureUtils.a(value.toString()));
                    } else if (str3.equals("incallui_version")) {
                        contentValues2.put("new_2", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_first_upload")) {
                        contentValues2.put("new_3", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_voice_mail")) {
                        contentValues2.put("new_4", AzureUtils.a(value.toString()));
                    } else if (str3.equals("has_photo")) {
                        contentValues2.put("new_5", AzureUtils.a(value.toString()));
                    } else if (str3.equals("is_read")) {
                        contentValues2.put("new_6", AzureUtils.a(value.toString()));
                    }
                }
            }
            i = this.c.getWritableDatabase().update(str, contentValues2, str2, strArr2);
            try {
                Log.d(f2552a, "encrypt update rows:" + i);
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                return i;
            }
        } catch (Exception e3) {
            e = e3;
            i = 0;
        }
        return i;
    }

    private long a(ContentValues contentValues, String str) {
        long j = -1;
        try {
            j = this.c.getWritableDatabase().insert(str, null, contentValues);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Cursor a(Cursor cursor) {
        MatrixCursor matrixCursor = cursor;
        if (cursor != null) {
            matrixCursor = cursor;
            try {
                if (cursor.moveToFirst()) {
                    String[] columnNames = cursor.getColumnNames();
                    ArrayList arrayList = new ArrayList();
                    for (String str : columnNames) {
                        if (str.equals("_id") || str.equals("_id")) {
                            arrayList.add("_id");
                        } else if (str.equals("cc")) {
                            arrayList.add("number");
                        } else if (str.equals("cc_1")) {
                            arrayList.add("imei");
                        } else if (str.equals("cc_2")) {
                            arrayList.add("wifi_mac_add");
                        } else if (str.equals("cc_3")) {
                            arrayList.add("device_sn");
                        } else if (str.equals("cc_4")) {
                            arrayList.add("talk_duration");
                        } else if (str.equals("is_0")) {
                            arrayList.add("is_missed");
                        } else if (str.equals("is_1")) {
                            arrayList.add("is_moving");
                        } else if (str.equals("is_2")) {
                            arrayList.add("is_new_contacts");
                        } else if (str.equals("is_3")) {
                            arrayList.add("is_delete_unknown");
                        } else if (str.equals("cc_5")) {
                            arrayList.add("role");
                        } else if (str.equals("cc_6")) {
                            arrayList.add("target_phone_number");
                        } else if (str.equals("cc_7")) {
                            arrayList.add("target_name");
                        } else if (str.equals("lo_5")) {
                            arrayList.add("location_end_accuracy");
                        } else if (str.equals("lo_3")) {
                            arrayList.add("location_end_latitude");
                        } else if (str.equals("lo_4")) {
                            arrayList.add("location_end_longitude");
                        } else if (str.equals("lo_8")) {
                            arrayList.add("location_offhook_accuracy");
                        } else if (str.equals("lo_7")) {
                            arrayList.add("location_offhook_latitude");
                        } else if (str.equals("lo_6")) {
                            arrayList.add("location_offhook_longitude");
                        } else if (str.equals("lo_2")) {
                            arrayList.add("location_start_accuracy");
                        } else if (str.equals("lo_1")) {
                            arrayList.add("location_start_latitude");
                        } else if (str.equals("lo")) {
                            arrayList.add("location_start_longitude");
                        } else if (str.equals("new_1")) {
                            arrayList.add("log_create_time_stamp");
                        } else if (str.equals("new_2")) {
                            arrayList.add("incallui_version");
                        } else if (str.equals("new_3")) {
                            arrayList.add("is_first_upload");
                        } else if (str.equals("new_4")) {
                            arrayList.add("is_voice_mail");
                        } else if (str.equals("new_5")) {
                            arrayList.add("has_photo");
                        } else if (str.equals("new_6")) {
                            arrayList.add("is_read");
                        } else if (str.equals("cc")) {
                            arrayList.add("number");
                        } else if (str.equals("cc_6")) {
                            arrayList.add("target_phone_number");
                        } else if (str.equals("pc_2")) {
                            arrayList.add("calling_time");
                        } else if (str.equals("ts")) {
                            arrayList.add("talk_start_time");
                        } else if (str.equals("ts_1")) {
                            arrayList.add("talk_end_time");
                        } else if (str.equals("i_0")) {
                            arrayList.add("is_muted");
                        } else if (str.equals("i_1")) {
                            arrayList.add("is_rejected");
                        } else if (str.equals("i_2")) {
                            arrayList.add("is_expired");
                        } else if (str.equals("i_3")) {
                            arrayList.add("is_recorded");
                        } else if (str.equals("pc_3")) {
                            arrayList.add("user_op_name");
                        } else if (str.equals("pc_4")) {
                            arrayList.add("sim_slot");
                        } else if (str.equals("pc_5")) {
                            arrayList.add("conference_start_time");
                        } else if (str.equals("pc_6")) {
                            arrayList.add("recording_start_time");
                        }
                    }
                    matrixCursor = new MatrixCursor((String[]) arrayList.toArray(new String[arrayList.size()]));
                    do {
                        ArrayList arrayList2 = new ArrayList();
                        for (int i = 0; i < cursor.getColumnCount(); i++) {
                            String string = cursor.getString(i);
                            if (string == null) {
                                arrayList2.add(null);
                            } else {
                                arrayList2.add(AzureUtils.b(string));
                            }
                        }
                        matrixCursor.addRow(arrayList2.toArray());
                    } while (cursor.moveToNext());
                }
            } catch (Exception e) {
                Log.d(f2552a, "encryptQuery" + e);
                matrixCursor = cursor;
            }
        }
        return matrixCursor;
    }

    private void a(String str, ContentValues contentValues) {
        try {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            writableDatabase.execSQL("UPDATE user_data_statistics SET " + str + " = " + str + " + " + contentValues.getAsInteger(str) + " WHERE _id = 1;");
            StringBuilder sb = new StringBuilder();
            sb.append("INSERT OR IGNORE INTO user_data_statistics (_id,");
            sb.append(str);
            sb.append(") ");
            sb.append("VALUES (1,");
            sb.append(contentValues.getAsInteger(str));
            sb.append(");");
            writableDatabase.execSQL(sb.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int match = f2553b.match(uri);
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        int i = 0;
        switch (match) {
            case 1:
                i = writableDatabase.delete("tag_table", str, strArr);
                break;
            case 2:
                i = writableDatabase.delete("cache_table", str, strArr);
                break;
            case 3:
                i = writableDatabase.delete("user_data_statistics", str, strArr);
                break;
            case 4:
                i = writableDatabase.delete("contacts_call_log", str, strArr);
                break;
            case 5:
                i = writableDatabase.delete("phone_call_log", str, strArr);
                break;
        }
        return i;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String str;
        switch (f2553b.match(uri)) {
            case 1:
                str = "com.asus.callguardprovider/tag_table";
                break;
            case 2:
                str = "com.asus.callguardprovider/cache_table";
                break;
            case 3:
                str = "com.asus.callguardprovider/user_data_statistics";
                break;
            case 4:
                str = "com.asus.callguardprovider/contacts_call_log";
                break;
            case 5:
                str = "com.asus.callguardprovider/phone_call_log";
                break;
            default:
                str = null;
                break;
        }
        return str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007a  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri insert(android.net.Uri r9, android.content.ContentValues r10) {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.callguardhelper.CallGuardProvider.insert(android.net.Uri, android.content.ContentValues):android.net.Uri");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        boolean z;
        try {
            this.c = new c(getContext());
            z = true;
        } catch (Exception e) {
            Log.d(f2552a, "onCreate::" + e.getMessage());
            z = false;
        }
        return z;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor a2;
        int match = f2553b.match(uri);
        SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
        switch (match) {
            case 1:
                a2 = readableDatabase.query("tag_table", strArr, str, strArr2, null, null, str2);
                break;
            case 2:
                a2 = readableDatabase.query("cache_table", strArr, str, strArr2, null, null, str2);
                break;
            case 3:
                a2 = readableDatabase.query("user_data_statistics", strArr, str, strArr2, null, null, str2);
                break;
            case 4:
                a2 = a(readableDatabase.query("contacts_call_log", strArr, str, strArr2, null, null, str2));
                break;
            case 5:
                a2 = a(readableDatabase.query("phone_call_log", strArr, str, strArr2, null, null, str2));
                break;
            default:
                throw new IllegalArgumentException();
        }
        return a2;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int a2;
        int match = f2553b.match(uri);
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        switch (match) {
            case 1:
                a2 = writableDatabase.update("tag_table", contentValues, str, strArr);
                break;
            case 2:
                a2 = writableDatabase.update("cache_table", contentValues, str, strArr);
                break;
            case 3:
                a2 = writableDatabase.update("user_data_statistics", contentValues, str, strArr);
                break;
            case 4:
                a2 = a("contacts_call_log", contentValues, str, strArr);
                break;
            default:
                throw new IllegalArgumentException();
        }
        return a2;
    }
}
