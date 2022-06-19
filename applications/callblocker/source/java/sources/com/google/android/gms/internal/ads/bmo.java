package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.dwv;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmo.class */
public final class bmo {
    /* renamed from: a */
    public static int m11764a(SQLiteDatabase sQLiteDatabase, int i) {
        int i2;
        if (i == 2) {
            i2 = 0;
        } else {
            Cursor m11762c = m11762c(sQLiteDatabase, i);
            i2 = 0;
            if (m11762c.getCount() > 0) {
                m11762c.moveToNext();
                i2 = m11762c.getInt(m11762c.getColumnIndexOrThrow("value")) + 0;
            }
            m11762c.close();
        }
        return i2;
    }

    /* renamed from: a */
    public static ArrayList<dwv.C3082t.C3083a> m11765a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<dwv.C3082t.C3083a> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(dwv.C3082t.C3083a.m8263a(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzeco e) {
                C3556uu.m6749c("Unable to deserialize proto from offline signals database:");
                C3556uu.m6749c(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: b */
    public static long m11763b(SQLiteDatabase sQLiteDatabase, int i) {
        char c = 0;
        Cursor m11762c = m11762c(sQLiteDatabase, 2);
        if (m11762c.getCount() > 0) {
            m11762c.moveToNext();
            c = 0 + m11762c.getLong(m11762c.getColumnIndexOrThrow("value"));
        }
        m11762c.close();
        return c;
    }

    /* renamed from: c */
    private static Cursor m11762c(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = new String[1];
        switch (i) {
            case 0:
                strArr[0] = "failed_requests";
                break;
            case 1:
                strArr[0] = "total_requests";
                break;
            case 2:
                strArr[0] = "last_successful_request_time";
                break;
        }
        return sQLiteDatabase.query("offline_signal_statistics", new String[]{"value"}, "statistic_name = ?", strArr, null, null, null);
    }
}
