package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cff.class */
public final class cff implements chb<cfc> {

    /* renamed from: a */
    final cpo f45655a;

    /* renamed from: b */
    final PackageInfo f45656b;

    /* renamed from: c */
    final zzf f45657c;

    /* renamed from: d */
    private final dbs f45658d;

    public cff(dbs dbsVar, cpo cpoVar, PackageInfo packageInfo, zzf zzfVar) {
        this.f45658d = dbsVar;
        this.f45655a = cpoVar;
        this.f45656b = packageInfo;
        this.f45657c = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cfc> mo17449a() {
        return this.f45658d.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfe

            /* renamed from: a */
            private final cff f45654a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45654a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                final cff cffVar = this.f45654a;
                final ArrayList arrayList = cffVar.f45655a.f46327g;
                return arrayList == null ? cfh.f45660a : arrayList.isEmpty() ? C12270cfg.f45659a : new cfc(cffVar, arrayList) { // from class: com.google.android.gms.internal.ads.cfj

                    /* renamed from: a */
                    private final cff f45665a;

                    /* renamed from: b */
                    private final ArrayList f45666b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45665a = cffVar;
                        this.f45666b = arrayList;
                    }

                    @Override // com.google.android.gms.internal.ads.cgy
                    /* renamed from: a */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void mo17450a(android.os.Bundle r5) {
                        /*
                            Method dump skipped, instructions count: 579
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cfj.mo17450a(java.lang.Object):void");
                    }
                };
            }
        });
    }
}
