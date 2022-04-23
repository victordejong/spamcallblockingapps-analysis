package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdhv;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhv.class */
public final class zzdhv implements zzdgx<zzdhs> {

    /* renamed from: a */
    public final zzatj f27347a;

    /* renamed from: b */
    public final Context f27348b;

    /* renamed from: c */
    public final String f27349c;

    /* renamed from: d */
    public final zzdzb f27350d;

    public zzdhv(zzatj zzatjVar, Context context, String str, zzdzb zzdzbVar) {
        this.f27347a = zzatjVar;
        this.f27348b = context;
        this.f27349c = str;
        this.f27350d = zzdzbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdhs> mo13576a() {
        return this.f27350d.mo12977a(new Callable(this) { // from class: c.d.b.d.g.a.wu

            /* renamed from: a */
            public final zzdhv f15975a;

            {
                this.f15975a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15975a.m13592b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ zzdhs m13592b() throws Exception {
        JSONObject jSONObject = new JSONObject();
        zzatj zzatjVar = this.f27347a;
        if (zzatjVar != null) {
            zzatjVar.m16367a(this.f27348b, this.f27349c, jSONObject);
        }
        return new zzdhs(jSONObject);
    }
}
