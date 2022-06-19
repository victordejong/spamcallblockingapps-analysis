package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.dwv;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmn.class */
public final class bmn implements crh<Bundle> {

    /* renamed from: a */
    final /* synthetic */ bmj f11555a;

    /* renamed from: b */
    private final /* synthetic */ boolean f11556b;

    public bmn(bmj bmjVar, boolean z) {
        this.f11555a = bmjVar;
        this.f11556b = z;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(Bundle bundle) {
        ArrayList m11776c;
        dwv.C3082t.EnumC3086c m11779b;
        dwv.C3076r m11785a;
        bma bmaVar;
        Bundle bundle2 = bundle;
        bmj bmjVar = this.f11555a;
        m11776c = bmj.m11776c(bundle2);
        bmj bmjVar2 = this.f11555a;
        m11779b = bmj.m11779b(bundle2);
        m11785a = this.f11555a.m11785a(bundle2);
        bmaVar = this.f11555a.f11542e;
        bmaVar.m11800a(new ckg(this, this.f11556b, m11776c, m11785a, m11779b) { // from class: com.google.android.gms.internal.ads.bmm

            /* renamed from: a */
            private final bmn f11550a;

            /* renamed from: b */
            private final boolean f11551b;

            /* renamed from: c */
            private final ArrayList f11552c;

            /* renamed from: d */
            private final dwv.C3076r f11553d;

            /* renamed from: e */
            private final dwv.C3082t.EnumC3086c f11554e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11550a = this;
                this.f11551b = z;
                this.f11552c = m11776c;
                this.f11553d = m11785a;
                this.f11554e = m11779b;
            }

            @Override // com.google.android.gms.internal.ads.ckg
            /* renamed from: a */
            public final Object mo11170a(Object obj) {
                byte[] m11780a;
                bmn bmnVar = this.f11550a;
                boolean z2 = this.f11551b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                m11780a = bmnVar.f11555a.m11780a(z2, this.f11552c, this.f11553d, this.f11554e);
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(C2341q.m14737j().mo13862a()));
                contentValues.put("serialized_proto_data", m11780a);
                sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                if (!z2) {
                    sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                    return null;
                }
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        C3556uu.m6749c("Failed to get signals bundle");
    }
}
