package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzdbm;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbl.class */
public final class zzdbl implements zzdya<zzatc, zzdbm> {

    /* renamed from: a */
    public Executor f26876a;

    /* renamed from: b */
    public zzcpc f26877b;

    public zzdbl(Executor executor, zzcpc zzcpcVar) {
        this.f26876a = executor;
        this.f26877b = zzcpcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final /* synthetic */ zzdzc<zzdbm> mo13006d(zzatc zzatcVar) throws Exception {
        final zzatc zzatcVar2 = zzatcVar;
        return zzdyq.m12992a(this.f26877b.m13958a(zzatcVar2), new zzdya(zzatcVar2) { // from class: c.d.b.d.g.a.js

            /* renamed from: a */
            public final zzatc f13815a;

            {
                this.f13815a = zzatcVar2;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                zzatc zzatcVar3 = this.f13815a;
                zzdbm zzdbmVar = new zzdbm(new JsonReader(new InputStreamReader((InputStream) obj)));
                zzdbmVar.m13664a(zzatcVar3.f24447a);
                return zzdyq.m12988a(zzdbmVar);
            }
        }, this.f26876a);
    }
}
