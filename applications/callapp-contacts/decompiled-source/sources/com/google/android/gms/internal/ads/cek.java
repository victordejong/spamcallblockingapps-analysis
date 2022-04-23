package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cek.class */
public final class cek implements chb<ceh> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f25689a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25690b;

    public cek(Context context, dbs dbsVar) {
        this.f25689a = context;
        this.f25690b = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<ceh> a() {
        return this.f25690b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cej

            /* renamed from: a  reason: collision with root package name */
            private final cek f25688a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25688a = this;
            }

            /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
                if (com.google.android.gms.ads.internal.zzr.zzkz().d().zzzd() == false) goto L_0x003c;
             */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    Method dump skipped, instructions count: 343
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cej.call():java.lang.Object");
            }
        });
    }
}
