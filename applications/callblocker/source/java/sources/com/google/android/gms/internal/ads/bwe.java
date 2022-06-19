package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bwe.class */
public final class bwe implements cah<Object> {

    /* renamed from: f */
    private static final Object f12376f = new Object();

    /* renamed from: a */
    private final String f12377a;

    /* renamed from: b */
    private final String f12378b;

    /* renamed from: c */
    private final ant f12379c;

    /* renamed from: d */
    private final cia f12380d;

    /* renamed from: e */
    private final chh f12381e;

    public bwe(String str, String str2, ant antVar, cia ciaVar, chh chhVar) {
        this.f12377a = str;
        this.f12378b = str2;
        this.f12379c = antVar;
        this.f12380d = ciaVar;
        this.f12381e = chhVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<Object> mo11479a() {
        Bundle bundle = new Bundle();
        if (((Boolean) dyx.m8158e().m7876a(edi.f16448cA)).booleanValue()) {
            this.f12379c.m12879a(this.f12381e.f13040d);
            bundle.putAll(this.f12380d.m11259a());
        }
        return crg.m10778a(new cae(this, bundle) { // from class: com.google.android.gms.internal.ads.bwd

            /* renamed from: a */
            private final bwe f12374a;

            /* renamed from: b */
            private final Bundle f12375b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12374a = this;
                this.f12375b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj) {
                this.f12374a.m11577a(this.f12375b, (Bundle) obj);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m11577a(Bundle bundle, Bundle bundle2) {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16448cA)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) dyx.m8158e().m7876a(edi.f16499cz)).booleanValue()) {
                synchronized (f12376f) {
                    this.f12379c.m12879a(this.f12381e.f13040d);
                    bundle2.putBundle("quality_signals", this.f12380d.m11259a());
                }
            } else {
                this.f12379c.m12879a(this.f12381e.f13040d);
                bundle2.putBundle("quality_signals", this.f12380d.m11259a());
            }
        }
        bundle2.putString("seq_num", this.f12377a);
        bundle2.putString("session_id", this.f12378b);
    }
}
