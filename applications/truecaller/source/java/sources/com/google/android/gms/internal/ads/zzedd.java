package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedd.class */
public final class zzedd {
    public static ArrayList<zzbbi> zza(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzbbi> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(zzbbi.zzi(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzggm e) {
                zzcgt.zzf("Unable to deserialize proto from offline signals database:");
                zzcgt.zzf(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    public static int zzb(SQLiteDatabase sQLiteDatabase, int i) {
        int i2;
        Cursor zzd = zzd(sQLiteDatabase, i);
        if (zzd.getCount() > 0) {
            zzd.moveToNext();
            i2 = zzd.getInt(zzd.getColumnIndexOrThrow("value"));
        } else {
            i2 = 0;
        }
        zzd.close();
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public static long zzc(SQLiteDatabase sQLiteDatabase, int i) {
        char c;
        Cursor zzd = zzd(sQLiteDatabase, 2);
        if (zzd.getCount() > 0) {
            zzd.moveToNext();
            c = zzd.getLong(zzd.getColumnIndexOrThrow("value"));
        } else {
            c = 0;
        }
        zzd.close();
        return c;
    }

    private static Cursor zzd(SQLiteDatabase sQLiteDatabase, int i) {
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
