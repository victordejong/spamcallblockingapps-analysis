package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzug;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqm.class */
public final class zzcqm {
    public static int zza(SQLiteDatabase sQLiteDatabase, int i) {
        if (i == 2) {
            return 0;
        }
        Cursor zzc = zzc(sQLiteDatabase, i);
        int i2 = 0;
        if (zzc.getCount() > 0) {
            zzc.moveToNext();
            i2 = 0 + zzc.getInt(zzc.getColumnIndexOrThrow("value"));
        }
        zzc.close();
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public static long zzb(SQLiteDatabase sQLiteDatabase, int i) {
        Cursor zzc = zzc(sQLiteDatabase, 2);
        char c = 0;
        if (zzc.getCount() > 0) {
            zzc.moveToNext();
            c = 0 + zzc.getLong(zzc.getColumnIndexOrThrow("value"));
        }
        zzc.close();
        return c;
    }

    public static ArrayList<zzug.zzo.zza> zzb(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzug.zzo.zza> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(zzug.zzo.zza.zzg(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzelo e) {
                zzazk.zzev("Unable to deserialize proto from offline signals database:");
                zzazk.zzev(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    private static Cursor zzc(SQLiteDatabase sQLiteDatabase, int i) {
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
