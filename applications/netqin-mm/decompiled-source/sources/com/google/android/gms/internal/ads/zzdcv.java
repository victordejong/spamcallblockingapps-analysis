package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzdcv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcv.class */
public final class zzdcv implements zzdgx<Object> {

    /* renamed from: f */
    public static final Object f27134f = new Object();

    /* renamed from: a */
    public final String f27135a;

    /* renamed from: b */
    public final String f27136b;

    /* renamed from: c */
    public final zzbsa f27137c;

    /* renamed from: d */
    public final zzdpj f27138d;

    /* renamed from: e */
    public final zzdok f27139e;

    public zzdcv(String str, String str2, zzbsa zzbsaVar, zzdpj zzdpjVar, zzdok zzdokVar) {
        this.f27135a = str;
        this.f27136b = str2;
        this.f27137c = zzbsaVar;
        this.f27138d = zzdpjVar;
        this.f27139e = zzdokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<Object> mo13576a() {
        final Bundle bundle = new Bundle();
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23691I2)).booleanValue()) {
            this.f27137c.m15108a(this.f27139e.f27642d);
            bundle.putAll(this.f27138d.m13336a());
        }
        return zzdyq.m12988a(new zzdgu(this, bundle) { // from class: c.d.b.d.g.a.ws

            /* renamed from: a */
            public final zzdcv f15972a;

            /* renamed from: b */
            public final Bundle f15973b;

            {
                this.f15972a = this;
                this.f15973b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.zzdgu
            /* renamed from: a */
            public final void mo13578a(Object obj) {
                this.f15972a.m13649a(this.f15973b, (Bundle) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m13649a(Bundle bundle, Bundle bundle2) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23691I2)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23686H2)).booleanValue()) {
                synchronized (f27134f) {
                    this.f27137c.m15108a(this.f27139e.f27642d);
                    bundle2.putBundle("quality_signals", this.f27138d.m13336a());
                }
            } else {
                this.f27137c.m15108a(this.f27139e.f27642d);
                bundle2.putBundle("quality_signals", this.f27138d.m13336a());
            }
        }
        bundle2.putString("seq_num", this.f27135a);
        bundle2.putString("session_id", this.f27136b);
    }
}
