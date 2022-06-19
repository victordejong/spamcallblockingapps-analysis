package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaw.class */
public final class zzaw {
    public final int count;
    public final String name;
    private final double zzefy;
    private final double zzefz;
    public final double zzega;

    public zzaw(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.zzefz = d;
        this.zzefy = d2;
        this.zzega = d3;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaw)) {
            return false;
        }
        zzaw zzawVar = (zzaw) obj;
        return Objects.equal(this.name, zzawVar.name) && this.zzefy == zzawVar.zzefy && this.zzefz == zzawVar.zzefz && this.count == zzawVar.count && Double.compare(this.zzega, zzawVar.zzega) == 0;
    }

    public final int hashCode() {
        return Objects.hashCode(this.name, Double.valueOf(this.zzefy), Double.valueOf(this.zzefz), Double.valueOf(this.zzega), Integer.valueOf(this.count));
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("name", this.name).add("minBound", Double.valueOf(this.zzefz)).add("maxBound", Double.valueOf(this.zzefy)).add("percent", Double.valueOf(this.zzega)).add("count", Integer.valueOf(this.count)).toString();
    }
}
