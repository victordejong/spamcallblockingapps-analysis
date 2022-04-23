package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzcsm;
import com.google.android.gms.internal.ads.zztu;
import com.google.android.gms.internal.ads.zzua;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsm.class */
public final class zzcsm {

    /* renamed from: a */
    public zzts f26473a;

    /* renamed from: b */
    public Context f26474b;

    /* renamed from: c */
    public zzcrw f26475c;

    /* renamed from: d */
    public zzbbx f26476d;

    public zzcsm(Context context, zzbbx zzbbxVar, zzts zztsVar, zzcrw zzcrwVar) {
        this.f26474b = context;
        this.f26476d = zzbbxVar;
        this.f26473a = zztsVar;
        this.f26475c = zzcrwVar;
    }

    /* renamed from: a */
    public final /* synthetic */ Void m13872a(SQLiteDatabase sQLiteDatabase) throws Exception {
        ArrayList<zzua.zzo.zza> a = zzcsj.m13878a(sQLiteDatabase);
        zzua.zzo.zzc m = zzua.zzo.m11282m();
        m.m11236a(this.f26474b.getPackageName());
        m.m11233b(Build.MODEL);
        int i = 0;
        m.m11239a(zzcsj.m13877a(sQLiteDatabase, 0));
        m.m11237a(a);
        m.m11235b(zzcsj.m13877a(sQLiteDatabase, 1));
        m.m11238a(zzp.m17962j().mo17091b());
        m.m11234b(zzcsj.m13876b(sQLiteDatabase, 2));
        final zzua.zzo zzoVar = (zzua.zzo) ((zzejz) m.mo12342K());
        int size = a.size();
        long j = 0;
        int i2 = 0;
        while (i2 < size) {
            zzua.zzo.zza zzaVar = a.get(i2);
            int i3 = i2 + 1;
            zzua.zzo.zza zzaVar2 = zzaVar;
            i2 = i3;
            if (zzaVar2.m11254n() == zzuk.ENUM_TRUE) {
                i2 = i3;
                if (zzaVar2.m11255m() > j) {
                    j = zzaVar2.m11255m();
                    i2 = i3;
                }
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(j));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
        this.f26473a.m11425a(new zztr(zzoVar) { // from class: c.d.b.d.g.a.ao

            /* renamed from: a */
            public final zzua.zzo f12301a;

            {
                this.f12301a = zzoVar;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar3) {
                zzaVar3.m11315a(this.f12301a);
            }
        });
        zzua.zzu.zza m2 = zzua.zzu.m11221m();
        m2.m11219a(this.f26476d.f24760b);
        m2.m11218b(this.f26476d.f24761c);
        if (!this.f26476d.f24762d) {
            i = 2;
        }
        m2.m11217c(i);
        final zzua.zzu zzuVar = (zzua.zzu) ((zzejz) m2.mo12342K());
        this.f26473a.m11425a(new zztr(zzuVar) { // from class: c.d.b.d.g.a.zn

            /* renamed from: a */
            public final zzua.zzu f16462a;

            {
                this.f16462a = zzuVar;
            }

            @Override // com.google.android.gms.internal.ads.zztr
            /* renamed from: a */
            public final void mo11427a(zzua.zzi.zza zzaVar3) {
                zzua.zzu zzuVar2 = this.f16462a;
                zzua.zzg.zza d = zzaVar3.m11310r().m12397d();
                d.m11343a(zzuVar2);
                zzaVar3.m11316a(d);
            }
        });
        this.f26473a.m11424a(zztu.zza.zzb.OFFLINE_UPLOAD);
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
    public final void m13873a() {
        try {
            this.f26475c.m13904a(new zzdrp(this) { // from class: c.d.b.d.g.a.yn

                /* renamed from: a */
                public final zzcsm f16230a;

                {
                    this.f16230a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdrp
                public final Object apply(Object obj) {
                    return this.f16230a.m13872a((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbq.m15856b(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }
}
