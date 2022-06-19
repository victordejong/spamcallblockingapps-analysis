package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z62.class */
public final class z62 implements wa2<va2<Bundle>> {

    /* renamed from: a */
    private final yf2 f32832a;

    public z62(yf2 yf2Var) {
        this.f32832a = yf2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ void m8499a(Bundle bundle) {
        bundle.putString("key_schema", this.f32832a.m8836a());
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<va2<Bundle>> zza() {
        yf2 yf2Var = this.f32832a;
        va2 va2Var = null;
        if (yf2Var != null) {
            va2Var = null;
            if (yf2Var.m8836a() != null) {
                va2Var = null;
                if (!this.f32832a.m8836a().isEmpty()) {
                    va2Var = new va2(this) { // from class: com.google.android.gms.internal.ads.y62

                        /* renamed from: a */
                        private final z62 f32435a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f32435a = this;
                        }

                        @Override // com.google.android.gms.internal.ads.va2
                        /* renamed from: a */
                        public final void mo8928a(Object obj) {
                            this.f32435a.m8499a((Bundle) obj);
                        }
                    };
                }
            }
        }
        return k03.m14003a(va2Var);
    }
}
