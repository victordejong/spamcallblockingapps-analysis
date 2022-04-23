package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.m;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaw.class */
public final class zzaw {
    public final int count;
    public final String name;
    private final double zzeib;
    private final double zzeic;
    public final double zzeid;

    public zzaw(String str, double d2, double d3, double d4, int i) {
        this.name = str;
        this.zzeic = d2;
        this.zzeib = d3;
        this.zzeid = d4;
        this.count = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaw)) {
            return false;
        }
        zzaw zzawVar = (zzaw) obj;
        return m.a(this.name, zzawVar.name) && this.zzeib == zzawVar.zzeib && this.zzeic == zzawVar.zzeic && this.count == zzawVar.count && Double.compare(this.zzeid, zzawVar.zzeid) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.name, Double.valueOf(this.zzeib), Double.valueOf(this.zzeic), Double.valueOf(this.zzeid), Integer.valueOf(this.count)});
    }

    public final String toString() {
        return m.a(this).a("name", this.name).a("minBound", Double.valueOf(this.zzeic)).a("maxBound", Double.valueOf(this.zzeib)).a("percent", Double.valueOf(this.zzeid)).a("count", Integer.valueOf(this.count)).toString();
    }
}
