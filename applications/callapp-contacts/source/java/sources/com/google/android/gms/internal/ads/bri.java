package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.eht;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bri.class */
public final class bri {
    /* renamed from: a */
    public static int m17639a(SQLiteDatabase sQLiteDatabase, int i) {
        if (i == 2) {
            return 0;
        }
        Cursor m17637b = m17637b(sQLiteDatabase, i);
        int i2 = 0;
        if (m17637b.getCount() > 0) {
            m17637b.moveToNext();
            i2 = 0 + m17637b.getInt(m17637b.getColumnIndexOrThrow("value"));
        }
        m17637b.close();
        return i2;
    }

    /* renamed from: a */
    public static ArrayList<eht.C12508t.C12509a> m17640a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<eht.C12508t.C12509a> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(eht.C12508t.C12509a.m14929a(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzenn e) {
                zzd.zzex("Unable to deserialize proto from offline signals database:");
                zzd.zzex(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* renamed from: b */
    public static long m17638b(SQLiteDatabase sQLiteDatabase) {
        Cursor m17637b = m17637b(sQLiteDatabase, 2);
        char c = 0;
        if (m17637b.getCount() > 0) {
            m17637b.moveToNext();
            c = 0 + m17637b.getLong(m17637b.getColumnIndexOrThrow("value"));
        }
        m17637b.close();
        return c;
    }

    /* renamed from: b */
    private static Cursor m17637b(SQLiteDatabase sQLiteDatabase, int i) {
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
