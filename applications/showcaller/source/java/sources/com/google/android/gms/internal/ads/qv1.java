package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qv1.class */
public final class qv1 {
    /* renamed from: a */
    public static ArrayList<C7152xo> m11793a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<C7152xo> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(C7152xo.m9123M(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzggm e) {
                ei0.m15467c("Unable to deserialize proto from offline signals database:");
                ei0.m15467c(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: b */
    public static int m11792b(SQLiteDatabase sQLiteDatabase, int i) {
        int i2;
        Cursor m11790d = m11790d(sQLiteDatabase, i);
        if (m11790d.getCount() > 0) {
            m11790d.moveToNext();
            i2 = m11790d.getInt(m11790d.getColumnIndexOrThrow("value"));
        } else {
            i2 = 0;
        }
        m11790d.close();
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: c */
    public static long m11791c(SQLiteDatabase sQLiteDatabase, int i) {
        char c;
        Cursor m11790d = m11790d(sQLiteDatabase, 2);
        if (m11790d.getCount() > 0) {
            m11790d.moveToNext();
            c = m11790d.getLong(m11790d.getColumnIndexOrThrow("value"));
        } else {
            c = 0;
        }
        m11790d.close();
        return c;
    }

    /* renamed from: d */
    private static Cursor m11790d(SQLiteDatabase sQLiteDatabase, int i) {
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
