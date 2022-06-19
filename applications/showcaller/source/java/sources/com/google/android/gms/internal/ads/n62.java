package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n62.class */
public final class n62 implements wa2 {

    /* renamed from: a */
    private static final Object f26997a = new Object();

    /* renamed from: b */
    private final String f26998b;

    /* renamed from: c */
    private final String f26999c;

    /* renamed from: d */
    private final l01 f27000d;

    /* renamed from: e */
    private final xk2 f27001e;

    /* renamed from: f */
    private final xj2 f27002f;

    /* renamed from: g */
    private final AbstractC5728q1 f27003g = C5667s.m18156h().m12230p();

    public n62(String str, String str2, l01 l01Var, xk2 xk2Var, xj2 xj2Var) {
        this.f26998b = str;
        this.f26999c = str2;
        this.f27000d = l01Var;
        this.f27001e = xk2Var;
        this.f27002f = xj2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ void m12990a(Bundle bundle, Bundle bundle2) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25583S3)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25575R3)).booleanValue()) {
                synchronized (f26997a) {
                    this.f27000d.m13750a(this.f27002f.f32077d);
                    bundle2.putBundle("quality_signals", this.f27001e.m9144b());
                }
            } else {
                this.f27000d.m13750a(this.f27002f.f32077d);
                bundle2.putBundle("quality_signals", this.f27001e.m9144b());
            }
        }
        bundle2.putString("seq_num", this.f26998b);
        bundle2.putString("session_id", this.f27003g.mo17948t() ? "" : this.f26999c);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03 zza() {
        Bundle bundle = new Bundle();
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25583S3)).booleanValue()) {
            this.f27000d.m13750a(this.f27002f.f32077d);
            bundle.putAll(this.f27001e.m9144b());
        }
        return k03.m14003a(new va2(this, bundle) { // from class: com.google.android.gms.internal.ads.m62

            /* renamed from: a */
            private final n62 f26448a;

            /* renamed from: b */
            private final Bundle f26449b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26448a = this;
                this.f26449b = bundle;
            }

            @Override // com.google.android.gms.internal.ads.va2
            /* renamed from: a */
            public final void mo8928a(Object obj) {
                this.f26448a.m12990a(this.f26449b, (Bundle) obj);
            }
        });
    }
}
