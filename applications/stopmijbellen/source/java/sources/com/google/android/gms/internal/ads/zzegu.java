package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegu.class */
public final class zzegu {
    public static int zza(SQLiteDatabase sQLiteDatabase, int i) {
        int i2;
        Cursor zzd = zzd(sQLiteDatabase, i);
        if (zzd.getCount() > 0) {
            zzd.moveToNext();
            i2 = zzd.getInt(zzd.getColumnIndexOrThrow(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        } else {
            i2 = 0;
        }
        zzd.close();
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    public static long zzb(SQLiteDatabase sQLiteDatabase, int i) {
        char c;
        Cursor zzd = zzd(sQLiteDatabase, 2);
        if (zzd.getCount() > 0) {
            zzd.moveToNext();
            c = zzd.getLong(zzd.getColumnIndexOrThrow(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        } else {
            c = 0;
        }
        zzd.close();
        return c;
    }

    public static ArrayList<zzbdf> zzc(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzbdf> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(zzbdf.zzi(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzgkx e) {
                zzciz.zzg("Unable to deserialize proto from offline signals database:");
                zzciz.zzg(e.getMessage());
            }
        }
        query.close();
        return arrayList;
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
        return sQLiteDatabase.query("offline_signal_statistics", new String[]{AppMeasurementSdk.ConditionalUserProperty.VALUE}, "statistic_name = ?", strArr, null, null, null);
    }
}
