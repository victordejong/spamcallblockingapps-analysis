package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.eht;
import java.util.ArrayList;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brh.class */
public final class brh implements dbi<Bundle> {

    /* renamed from: a */
    final /* synthetic */ bre f44553a;

    /* renamed from: b */
    private final /* synthetic */ boolean f44554b;

    public brh(bre breVar, boolean z) {
        this.f44553a = breVar;
        this.f44554b = z;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(Bundle bundle) {
        zzf zzfVar;
        eht.C12508t.EnumC12511b enumC12511b;
        bqv bqvVar;
        Bundle bundle2 = bundle;
        zzfVar = this.f44553a.f44545f;
        if (!zzfVar.zzzn()) {
            ArrayList m17649a = bre.m17649a(bundle2);
            enumC12511b = bre.f44539h.get(cpw.m17352a(cpw.m17352a(bundle2, "device"), "network").getInt("active_network_state", -1), eht.C12508t.EnumC12511b.UNSPECIFIED);
            eht.C12502r m17647a = bre.m17647a(this.f44553a, bundle2);
            bqvVar = this.f44553a.f44544e;
            bqvVar.m17663a(new css(this, this.f44554b, m17649a, m17647a, enumC12511b) { // from class: com.google.android.gms.internal.ads.brg

                /* renamed from: a */
                private final brh f44548a;

                /* renamed from: b */
                private final boolean f44549b;

                /* renamed from: c */
                private final ArrayList f44550c;

                /* renamed from: d */
                private final eht.C12502r f44551d;

                /* renamed from: e */
                private final eht.C12508t.EnumC12511b f44552e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44548a = this;
                    this.f44549b = z;
                    this.f44550c = m17649a;
                    this.f44551d = m17647a;
                    this.f44552e = enumC12511b;
                }

                @Override // com.google.android.gms.internal.ads.css
                /* renamed from: a */
                public final Object mo17263a(Object obj) {
                    zzf zzfVar2;
                    byte[] mo16256g;
                    brh brhVar = this.f44548a;
                    boolean z2 = this.f44549b;
                    ArrayList arrayList = this.f44550c;
                    eht.C12502r c12502r = this.f44551d;
                    eht.C12508t.EnumC12511b enumC12511b2 = this.f44552e;
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    zzfVar2 = brhVar.f44553a.f44545f;
                    if (!zzfVar2.zzzn()) {
                        mo16256g = eht.C12508t.C12509a.m14928b().m14915a(arrayList).m14911c(bre.m17642b(zzr.zzkx().zzb(r5.f44540a.getContentResolver()) != 0)).m14910d(zzr.zzkx().zza(r0.f44540a, r0.f44542c)).m14914b(r0.f44543d.m17654b()).m14912c(r0.f44543d.m17651d()).m14920a(r0.f44543d.m17657a()).m14917a(enumC12511b2).m14918a(c12502r).m14909e(brhVar.f44553a.f44546g).m14916a(bre.m17642b(z2)).m14919a(zzr.zzlc().mo19039a()).m14913b(bre.m17642b(zzr.zzkx().zza(r5.f44540a.getContentResolver()) != 0)).mo16259f().mo16256g();
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(Reporting.Key.TIMESTAMP, Long.valueOf(zzr.zzlc().mo19039a()));
                        contentValues.put("serialized_proto_data", mo16256g);
                        sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                        sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                        if (z2) {
                            return null;
                        }
                        sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                        return null;
                    }
                    return null;
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        zzd.zzex("Failed to get signals bundle");
    }
}
