package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cff.class */
public final class cff implements chb<cfc> {

    /* renamed from: a  reason: collision with root package name */
    final cpo f25720a;

    /* renamed from: b  reason: collision with root package name */
    final PackageInfo f25721b;

    /* renamed from: c  reason: collision with root package name */
    final zzf f25722c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25723d;

    public cff(dbs dbsVar, cpo cpoVar, PackageInfo packageInfo, zzf zzfVar) {
        this.f25723d = dbsVar;
        this.f25720a = cpoVar;
        this.f25721b = packageInfo;
        this.f25722c = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cfc> a() {
        return this.f25723d.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfe

            /* renamed from: a  reason: collision with root package name */
            private final cff f25719a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25719a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                final cff cffVar = this.f25719a;
                final ArrayList<String> arrayList = cffVar.f25720a.g;
                return arrayList == null ? cfh.f25725a : arrayList.isEmpty() ? cfg.f25724a : new cfc(cffVar, arrayList) { // from class: com.google.android.gms.internal.ads.cfj

                    /* renamed from: a  reason: collision with root package name */
                    private final cff f25730a;

                    /* renamed from: b  reason: collision with root package name */
                    private final ArrayList f25731b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25730a = cffVar;
                        this.f25731b = arrayList;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:62:0x01cb, code lost:
                        if (r0 == 3) goto L_0x0212;
                     */
                    @Override // com.google.android.gms.internal.ads.cgy
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void a(android.os.Bundle r5) {
                        /*
                            Method dump skipped, instructions count: 579
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cfj.a(java.lang.Object):void");
                    }
                };
            }
        });
    }
}
