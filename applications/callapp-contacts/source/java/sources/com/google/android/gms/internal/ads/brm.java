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

    /* renamed from: a */
    ehk f44563a;

    /* renamed from: b */
    Context f44564b;

    /* renamed from: c */
    bqv f44565c;

    /* renamed from: d */
    zzbar f44566d;

    /* renamed from: e */
    final String f44567e;

    /* renamed from: f */
    final cty f44568f;

    /* renamed from: g */
    final zzf f44569g = zzr.zzkz().m13975d();

    public brm(Context context, zzbar zzbarVar, ehk ehkVar, bqv bqvVar, String str, cty ctyVar) {
        this.f44564b = context;
        this.f44566d = zzbarVar;
        this.f44563a = ehkVar;
        this.f44565c = bqvVar;
        this.f44567e = str;
        this.f44568f = ctyVar;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: a */
    public static void m17635a(SQLiteDatabase sQLiteDatabase, ArrayList<eht.C12508t.C12509a> arrayList) {
        ArrayList<eht.C12508t.C12509a> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        char c = 0;
        while (i < size) {
            eht.C12508t.C12509a c12509a = arrayList2.get(i);
            int i2 = i + 1;
            eht.C12508t.C12509a c12509a2 = c12509a;
            i = i2;
            if (c12509a2.m14936a() == eid.ENUM_TRUE) {
                i = i2;
                if (c12509a2.zzceb > c) {
                    c = c12509a2.zzceb;
                    i = i2;
                }
            }
        }
        if (c != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(c));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }
}
