package com.asus.privatecontacts.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Binder;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/provider/b.class */
public class b extends SQLiteOpenHelper {

    /* renamed from: b  reason: collision with root package name */
    private static final String f3069b = b.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    boolean f3070a = false;
    private final Context c;

    public b(Context context) {
        super(context, "private_book.db", (SQLiteDatabase.CursorFactory) null, 101);
        this.c = context;
    }

    public static String a(String str, String str2) {
        Log.d(f3069b, "sipAddress: " + str);
        StringBuilder sb = new StringBuilder();
        sb.append("SELECT D._id");
        sb.append(", D.is_primary");
        sb.append(", D.is_super_primary");
        sb.append(", D.mimetype");
        sb.append(", D.raw_contact_id");
        sb.append(", D.res_package");
        sb.append(", D.data1");
        sb.append(", R.account_name");
        sb.append(", R.account_type");
        sb.append(", R.custom_ringtone");
        sb.append(", R.times_contacted");
        sb.append(", R.has_phone_number");
        sb.append(", R.lookup");
        sb.append(", R.last_time_contacted");
        sb.append(", R.display_name");
        sb.append(", R.starred");
        sb.append(", R.photo_uri");
        sb.append(", R.photo_thumb_uri");
        sb.append(", R.send_to_voicemail");
        sb.append(", D.data1 AS number");
        sb.append(", 0 AS type");
        sb.append(", NULL AS label");
        sb.append(", NULL AS normalized_number");
        sb.append(" FROM data AS D LEFT JOIN raw_contacts AS R");
        sb.append(" ON ( D.raw_contact_id=R._id )");
        sb.append(" WHERE D.mimetype='vnd.android.cursor.item/sip_address'");
        sb.append(" AND D.data1='" + str + "' ORDER BY " + str2);
        return sb.toString();
    }

    public static String a(String str, String str2, String str3) {
        String str4 = "SELECT R._id, R.times_contacted, R.has_phone_number, R.lookup, R.last_time_contacted, R.display_name, R.starred, R.photo_uri, P.normalized_number, R.photo_thumb_uri, R.photo_id, R.send_to_voicemail, D.data1, R.custom_ringtone, R.isSim, length(P.normalized_number) as len FROM raw_contacts AS R LEFT JOIN data AS D ON( D.raw_contact_id=R._id ) LEFT JOIN phone_lookup AS P ON ( P.raw_contact_id=R._id AND P.data_id=D._id ) WHERE D.mimetype='vnd.android.cursor.item/phone_v2' AND P.min_match='" + str + "'";
        return (str2 == null || TextUtils.isEmpty(str2)) ? str4 + " ORDER BY " + str3 : str4 + str2 + " ORDER BY " + str3;
    }

    public final String a(Uri uri) {
        StringBuilder sb = new StringBuilder();
        sb.append("URI: ").append(uri);
        PackageManager packageManager = this.c.getPackageManager();
        int callingUid = Binder.getCallingUid();
        sb.append(", calling user: ");
        String nameForUid = packageManager.getNameForUid(callingUid);
        if (nameForUid != null) {
            sb.append(nameForUid);
        } else {
            sb.append(callingUid);
        }
        String[] packagesForUid = packageManager.getPackagesForUid(callingUid);
        if (packagesForUid != null && packagesForUid.length > 0) {
            if (packagesForUid.length == 1) {
                sb.append(", calling package:");
                sb.append(packagesForUid[0]);
            } else {
                sb.append(", calling package is one of: [");
                for (int i = 0; i < packagesForUid.length; i++) {
                    if (i != 0) {
                        sb.append(", ");
                    }
                    sb.append(packagesForUid[i]);
                }
                sb.append("]");
            }
        }
        return sb.toString();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE raw_contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER, account_type TEXT,account_name TEXT,data_set TEXT,account_type_and_data_set TEXT,sourceid TEXT,raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,contact_id INTEGER REFERENCES contacts(_id),aggregation_mode INTEGER NOT NULL DEFAULT 0,aggregation_needed INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,pinned INTEGER NOT NULL DEFAULT 0,display_name NTEXT COLLATE PHONEBOOK,display_name_alt TEXT,display_name_source INTEGER NOT NULL DEFAULT 0,phonetic_name TEXT,phonetic_name_style TEXT,sort_key NTEXT COLLATE PHONEBOOK,phonebook_label TEXT,phonebook_bucket INTEGER,sort_key_alt NTEXT COLLATE PHONEBOOK,phonebook_label_alt TEXT,phonebook_bucket_alt INTEGER,name_verified INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT, photo_id INTEGER,photo_file_id INTEGER,has_phone_number INTEGER NOT NULL DEFAULT 0,lookup TEXT,contact_last_updated_timestamp INTEGER,photo_uri TEXT,photo_thumb_uri TEXT,isSim INTEGER NOT NULL DEFAULT 0,order_favorite INTEGER NOT NULL DEFAULT 0, original_id INTEGER);");
            sQLiteDatabase.execSQL("CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),res_package TEXT,mimetype_id INTEGER REFERENCES mimetype(_id),mimetype TEXT,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,is_read_only INTEGER NOT NULL DEFAULT 0,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT );");
            sQLiteDatabase.execSQL("CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,presentation INTEGER NOT NULL DEFAULT 1,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,countryiso TEXT,voicemail_uri TEXT,is_read INTEGER,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER,block INTEGER,contact_id INTEGER NOT NULL DEFAULT 0,isSim INTEGER NOT NULL DEFAULT 0,city_id TEXT,sim_index INTEGER NOT NULL DEFAULT -1);");
            sQLiteDatabase.execSQL("CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);");
            sQLiteDatabase.execSQL("CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);");
            sQLiteDatabase.execSQL("CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);");
            sQLiteDatabase.execSQL("CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);");
        } catch (Exception e) {
            Log.d(f3069b, "failed to create DB ...");
            e.printStackTrace();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
