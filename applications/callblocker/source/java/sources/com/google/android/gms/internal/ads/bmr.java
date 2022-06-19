package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.dwk;
import com.google.android.gms.internal.ads.dwv;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmr.class */
public final class bmr {

    /* renamed from: a */
    private dwi f11562a;

    /* renamed from: b */
    private Context f11563b;

    /* renamed from: c */
    private bma f11564c;

    /* renamed from: d */
    private C3647yd f11565d;

    public bmr(Context context, C3647yd c3647yd, dwi dwiVar, bma bmaVar) {
        this.f11563b = context;
        this.f11565d = c3647yd;
        this.f11562a = dwiVar;
        this.f11564c = bmaVar;
    }

    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* renamed from: a */
    public final /* synthetic */ Void m11759a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<dwv.C3082t.C3083a> m11765a = bmo.m11765a(sQLiteDatabase);
        dwv.C3082t c3082t = (dwv.C3082t) ((dcw) dwv.C3082t.m8291a().m8231a(this.f11563b.getPackageName()).m8228b(Build.MODEL).m8234a(bmo.m11764a(sQLiteDatabase, 0)).m8232a(m11765a).m8230b(bmo.m11764a(sQLiteDatabase, 1)).m8233a(C2341q.m14737j().mo13862a()).m8229b(bmo.m11763b(sQLiteDatabase, 2)).mo9987g());
        char c = 0;
        ArrayList<dwv.C3082t.C3083a> arrayList = m11765a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            i++;
            dwv.C3082t.C3083a c3083a = arrayList.get(i);
            if (c3083a.m8262b() == dxf.ENUM_TRUE && c3083a.m8275a() > c) {
                c = c3083a.m8275a();
            }
        }
        if (c != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(c));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
        this.f11562a.m8441a(new dwl(c3082t) { // from class: com.google.android.gms.internal.ads.bmt

            /* renamed from: a */
            private final dwv.C3082t f11567a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11567a = c3082t;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                c3069a.m8313a(this.f11567a);
            }
        });
        this.f11562a.m8441a(new dwl((dwv.C3097z) ((dcw) dwv.C3097z.m8220a().m8211a(this.f11565d.f17637b).m8210b(this.f11565d.f17638c).m8209c(this.f11565d.f17639d ? 0 : 2).mo9987g())) { // from class: com.google.android.gms.internal.ads.bms

            /* renamed from: a */
            private final dwv.C3097z f11566a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11566a = c3097z;
            }

            @Override // com.google.android.gms.internal.ads.dwl
            /* renamed from: a */
            public final void mo8434a(dwv.C3068n.C3069a c3069a) {
                c3069a.m8314a(c3069a.m8309i().m10078p().m8344a(this.f11566a));
            }
        });
        this.f11562a.m8442a(dwk.C3018a.EnumC3019a.OFFLINE_UPLOAD);
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues3, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }

    /* renamed from: a */
    public final void m11760a() {
        try {
            this.f11564c.m11800a(new ckg(this) { // from class: com.google.android.gms.internal.ads.bmq

                /* renamed from: a */
                private final bmr f11561a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11561a = this;
                }

                @Override // com.google.android.gms.internal.ads.ckg
                /* renamed from: a */
                public final Object mo11170a(Object obj) {
                    return this.f11561a.m11759a((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            C3556uu.m6749c(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }
}
