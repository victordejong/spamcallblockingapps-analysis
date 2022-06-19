package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wy0.class */
public final class wy0 {
    /* renamed from: a */
    public static ArrayList<vx2> m4985a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<vx2> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(vx2.T(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzett e) {
                C1894po.m6183c("Unable to deserialize proto from offline signals database:");
                C1894po.m6183c(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: b */
    public static int m4984b(SQLiteDatabase sQLiteDatabase, int i) {
        int i2;
        Cursor m4982d = m4982d(sQLiteDatabase, i);
        if (m4982d.getCount() > 0) {
            m4982d.moveToNext();
            i2 = m4982d.getInt(m4982d.getColumnIndexOrThrow("value"));
        } else {
            i2 = 0;
        }
        m4982d.close();
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: c */
    public static long m4983c(SQLiteDatabase sQLiteDatabase, int i) {
        char c;
        Cursor m4982d = m4982d(sQLiteDatabase, 2);
        if (m4982d.getCount() > 0) {
            m4982d.moveToNext();
            c = m4982d.getLong(m4982d.getColumnIndexOrThrow("value"));
        } else {
            c = 0;
        }
        m4982d.close();
        return c;
    }

    /* renamed from: d */
    private static Cursor m4982d(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = new String[1];
        if (i == 0) {
            strArr[0] = "failed_requests";
        } else if (i != 1) {
            strArr[0] = "last_successful_request_time";
        } else {
            strArr[0] = "total_requests";
        }
        return sQLiteDatabase.query("offline_signal_statistics", new String[]{"value"}, "statistic_name = ?", strArr, null, null, null);
    }
}
