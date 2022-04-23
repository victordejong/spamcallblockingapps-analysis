package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.eht;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bri.class */
public final class bri {
    public static int a(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor b2 = b(sQLiteDatabase, i);
        if (b2.getCount() > 0) {
            b2.moveToNext();
            i2 = 0 + b2.getInt(b2.getColumnIndexOrThrow("value"));
        }
        b2.close();
        return i2;
    }

    public static ArrayList<eht.t.a> a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<eht.t.a> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(eht.t.a.a(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzenn e) {
                zzd.zzex("Unable to deserialize proto from offline signals database:");
                zzd.zzex(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    public static long b(SQLiteDatabase sQLiteDatabase) {
        Cursor b2 = b(sQLiteDatabase, 2);
        long j = 0;
        if (b2.getCount() > 0) {
            b2.moveToNext();
            j = 0 + b2.getLong(b2.getColumnIndexOrThrow("value"));
        }
        b2.close();
        return j;
    }

    private static Cursor b(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = new String[1];
        if (i == 0) {
            strArr[0] = "failed_requests";
        } else if (i == 1) {
            strArr[0] = "total_requests";
        } else if (i == 2) {
            strArr[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", new String[]{"value"}, "statistic_name = ?", strArr, null, null, null);
    }
}
