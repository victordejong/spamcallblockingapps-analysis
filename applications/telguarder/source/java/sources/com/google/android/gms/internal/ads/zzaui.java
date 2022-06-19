package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaui.class */
public final class zzaui extends zzaun {
    private final String type;
    private final int zzdzc;

    public zzaui(String str, int i) {
        this.type = str;
        this.zzdzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzaui)) {
            return false;
        }
        zzaui zzauiVar = (zzaui) obj;
        return Objects.equal(this.type, zzauiVar.type) && Objects.equal(Integer.valueOf(this.zzdzc), Integer.valueOf(zzauiVar.zzdzc));
    }

    @Override // com.google.android.gms.internal.ads.zzauk
    public final int getAmount() {
        return this.zzdzc;
    }

    @Override // com.google.android.gms.internal.ads.zzauk
    public final String getType() {
        return this.type;
    }
}
