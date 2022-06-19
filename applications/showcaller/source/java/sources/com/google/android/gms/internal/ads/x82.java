package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x82.class */
public final class x82 implements wa2<y82> {

    /* renamed from: a */
    private final s03 f31931a;

    /* renamed from: b */
    private final xj2 f31932b;

    /* renamed from: c */
    private final PackageInfo f31933c;

    /* renamed from: d */
    private final AbstractC5728q1 f31934d;

    public x82(s03 s03Var, xj2 xj2Var, PackageInfo packageInfo, AbstractC5728q1 abstractC5728q1) {
        this.f31931a = s03Var;
        this.f31932b = xj2Var;
        this.f31933c = packageInfo;
        this.f31934d = abstractC5728q1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0196, code lost:
        if (r0 == 3) goto L66;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m9329a(java.util.ArrayList r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.x82.m9329a(java.util.ArrayList, android.os.Bundle):void");
    }

    /* renamed from: b */
    public final /* bridge */ /* synthetic */ y82 m9328b() {
        ArrayList<String> arrayList = this.f31932b.f32080g;
        return arrayList == null ? t82.f29865a : arrayList.isEmpty() ? u82.f30543a : new y82(this, arrayList) { // from class: com.google.android.gms.internal.ads.v82

            /* renamed from: a */
            private final x82 f31103a;

            /* renamed from: b */
            private final ArrayList f31104b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f31103a = this;
                this.f31104b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.va2
            /* renamed from: a */
            public final void mo8928a(Bundle bundle) {
                this.f31103a.m9329a(this.f31104b, bundle);
            }
        };
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<y82> zza() {
        return this.f31931a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.s82

            /* renamed from: a */
            private final x82 f29423a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29423a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f29423a.m9328b();
            }
        });
    }
}
