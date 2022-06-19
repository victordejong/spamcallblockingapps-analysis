package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.C12041m;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaw.class */
public final class zzaw {
    public final int count;
    public final String name;
    private final double zzeib;
    private final double zzeic;
    public final double zzeid;

    public zzaw(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.zzeic = d;
        this.zzeib = d2;
        this.zzeid = d3;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaw)) {
            return false;
        }
        zzaw zzawVar = (zzaw) obj;
        return C12041m.m19168a(this.name, zzawVar.name) && this.zzeib == zzawVar.zzeib && this.zzeic == zzawVar.zzeic && this.count == zzawVar.count && Double.compare(this.zzeid, zzawVar.zzeid) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, Double.valueOf(this.zzeib), Double.valueOf(this.zzeic), Double.valueOf(this.zzeid), Integer.valueOf(this.count)});
    }

    public final String toString() {
        return C12041m.m19169a(this).m19166a("name", this.name).m19166a("minBound", Double.valueOf(this.zzeic)).m19166a("maxBound", Double.valueOf(this.zzeib)).m19166a("percent", Double.valueOf(this.zzeid)).m19166a("count", Integer.valueOf(this.count)).toString();
    }
}
