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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/brh.class */
public final class brh implements dbi<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bre f24941a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ boolean f24942b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public brh(bre breVar, boolean z) {
        this.f24941a = breVar;
        this.f24942b = z;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Bundle bundle) {
        zzf zzfVar;
        final eht.t.b bVar;
        bqv bqvVar;
        Bundle bundle2 = bundle;
        zzfVar = this.f24941a.f;
        if (!zzfVar.zzzn()) {
            final ArrayList a2 = bre.a(bundle2);
            bVar = bre.h.get(cpw.a(cpw.a(bundle2, "device"), "network").getInt("active_network_state", -1), eht.t.b.UNSPECIFIED);
            final eht.r a3 = bre.a(this.f24941a, bundle2);
            bqvVar = this.f24941a.e;
            final boolean z = this.f24942b;
            bqvVar.a(new css(this, z, a2, a3, bVar) { // from class: com.google.android.gms.internal.ads.brg

                /* renamed from: a  reason: collision with root package name */
                private final brh f24937a;

                /* renamed from: b  reason: collision with root package name */
                private final boolean f24938b;

                /* renamed from: c  reason: collision with root package name */
                private final ArrayList f24939c;

                /* renamed from: d  reason: collision with root package name */
                private final eht.r f24940d;
                private final eht.t.b e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24937a = this;
                    this.f24938b = z;
                    this.f24939c = a2;
                    this.f24940d = a3;
                    this.e = bVar;
                }

                @Override // com.google.android.gms.internal.ads.css
                public final Object a(Object obj) {
                    zzf zzfVar2;
                    brh brhVar = this.f24937a;
                    boolean z2 = this.f24938b;
                    ArrayList arrayList = this.f24939c;
                    eht.r rVar = this.f24940d;
                    eht.t.b bVar2 = this.e;
                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                    zzfVar2 = brhVar.f24941a.f;
                    if (zzfVar2.zzzn()) {
                        return null;
                    }
                    byte[] a4 = bre.a(brhVar.f24941a, z2, arrayList, rVar, bVar2);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(Reporting.Key.TIMESTAMP, Long.valueOf(zzr.zzlc().a()));
                    contentValues.put("serialized_proto_data", a4);
                    sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                    sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                    if (z2) {
                        return null;
                    }
                    sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                    return null;
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        zzd.zzex("Failed to get signals bundle");
    }
}
