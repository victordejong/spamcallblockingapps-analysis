package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawp.class */
public final class zzawp implements zzqu {

    /* renamed from: a */
    public final Context f24582a;

    /* renamed from: b */
    public final Object f24583b;

    /* renamed from: c */
    public String f24584c;

    /* renamed from: d */
    public boolean f24585d;

    public zzawp(Context context, String str) {
        this.f24582a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f24584c = str;
        this.f24585d = false;
        this.f24583b = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzqu
    /* renamed from: a */
    public final void mo11534a(zzqr zzqrVar) {
        m16223a(zzqrVar.f28889j);
    }

    /* renamed from: a */
    public final void m16223a(boolean z) {
        if (zzp.m17972A().m16256a(this.f24582a)) {
            synchronized (this.f24583b) {
                if (this.f24585d != z) {
                    this.f24585d = z;
                    if (!TextUtils.isEmpty(this.f24584c)) {
                        if (this.f24585d) {
                            zzp.m17972A().m16253a(this.f24582a, this.f24584c);
                        } else {
                            zzp.m17972A().m16240b(this.f24582a, this.f24584c);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: j */
    public final String m16222j() {
        return this.f24584c;
    }
}
