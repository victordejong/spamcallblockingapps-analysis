package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdey;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import p131c.p161d.p170b.p224d.p252g.p253a.C4042st;
import p131c.p161d.p170b.p224d.p252g.p253a.C4153vt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdey.class */
public final class zzdey implements zzdgx<zzdez> {

    /* renamed from: a */
    public final zzdzb f27222a;

    /* renamed from: b */
    public final zzdok f27223b;

    /* renamed from: c */
    public final PackageInfo f27224c;

    /* renamed from: d */
    public final zzayr f27225d;

    public zzdey(zzdzb zzdzbVar, zzdok zzdokVar, PackageInfo packageInfo, zzayr zzayrVar) {
        this.f27222a = zzdzbVar;
        this.f27223b = zzdokVar;
        this.f27224c = packageInfo;
        this.f27225d = zzayrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdez> mo13576a() {
        return this.f27222a.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.tt

            /* renamed from: a */
            public final zzdey f15425a;

            {
                this.f15425a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15425a.m13628b();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x01b5, code lost:
        if (r0 == 3) goto L_0x01f7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void m13629a(java.util.ArrayList r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdey.m13629a(java.util.ArrayList, android.os.Bundle):void");
    }

    /* renamed from: b */
    public final /* synthetic */ zzdez m13628b() throws Exception {
        final ArrayList<String> arrayList = this.f27223b.f27645g;
        return arrayList == null ? C4042st.f15321a : arrayList.isEmpty() ? C4153vt.f15884a : new zzdez(this, arrayList) { // from class: c.d.b.d.g.a.ut

            /* renamed from: a */
            public final zzdey f15670a;

            /* renamed from: b */
            public final ArrayList f15671b;

            {
                this.f15670a = this;
                this.f15671b = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Bundle bundle) {
                this.f15670a.m13629a(this.f15671b, bundle);
            }
        };
    }
}
