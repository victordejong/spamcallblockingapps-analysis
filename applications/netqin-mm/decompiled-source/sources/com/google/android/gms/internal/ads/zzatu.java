package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatu.class */
public final class zzatu extends zzatz {

    /* renamed from: a */
    public final String f24515a;

    /* renamed from: b */
    public final int f24516b;

    public zzatu(String str, int i) {
        this.f24515a = str;
        this.f24516b = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzatu)) {
            return false;
        }
        zzatu zzatuVar = (zzatu) obj;
        return Objects.m17295a(this.f24515a, zzatuVar.f24515a) && Objects.m17295a(Integer.valueOf(this.f24516b), Integer.valueOf(zzatuVar.f24516b));
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    public final String getType() {
        return this.f24515a;
    }

    @Override // com.google.android.gms.internal.ads.zzatw
    /* renamed from: y */
    public final int mo16345y() {
        return this.f24516b;
    }
}
