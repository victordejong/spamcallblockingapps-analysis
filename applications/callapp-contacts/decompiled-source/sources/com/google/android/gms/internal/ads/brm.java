package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.eht;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brm.class */
public final class brm {

    /* renamed from: a  reason: collision with root package name */
    ehk f24950a;

    /* renamed from: b  reason: collision with root package name */
    Context f24951b;

    /* renamed from: c  reason: collision with root package name */
    bqv f24952c;

    /* renamed from: d  reason: collision with root package name */
    zzbar f24953d;
    final String e;
    final cty f;
    final zzf g = zzr.zzkz().d();

    public brm(Context context, zzbar zzbarVar, ehk ehkVar, bqv bqvVar, String str, cty ctyVar) {
        this.f24951b = context;
        this.f24953d = zzbarVar;
        this.f24950a = ehkVar;
        this.f24952c = bqvVar;
        this.e = str;
        this.f = ctyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SQLiteDatabase sQLiteDatabase, ArrayList<eht.t.a> arrayList) {
        ArrayList<eht.t.a> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        long j = 0;
        while (i < size) {
            eht.t.a aVar = arrayList2.get(i);
            int i2 = i + 1;
            eht.t.a aVar2 = aVar;
            i = i2;
            if (aVar2.a() == eid.ENUM_TRUE) {
                i = i2;
                if (aVar2.zzceb > j) {
                    j = aVar2.zzceb;
                    i = i2;
                }
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(j));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }
}
