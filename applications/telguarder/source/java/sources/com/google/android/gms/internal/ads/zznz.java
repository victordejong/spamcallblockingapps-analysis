package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznz.class */
public final class zznz {
    public final int viewportHeight;
    public final int viewportWidth;
    private final String zzbha;
    private final String zzbhb;
    private final boolean zzbhc;
    private final boolean zzbhd;
    public final int zzbhe;
    public final int zzbhf;
    public final int zzbhg;
    public final boolean zzbhh;
    public final boolean zzbhi;
    public final boolean zzbhj;

    public zznz() {
        this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
    }

    private zznz(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
        this.zzbha = null;
        this.zzbhb = null;
        this.zzbhc = false;
        this.zzbhd = true;
        this.zzbhe = Integer.MAX_VALUE;
        this.zzbhf = Integer.MAX_VALUE;
        this.zzbhg = Integer.MAX_VALUE;
        this.zzbhh = true;
        this.zzbhi = true;
        this.viewportWidth = Integer.MAX_VALUE;
        this.viewportHeight = Integer.MAX_VALUE;
        this.zzbhj = true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zznz zznzVar = (zznz) obj;
        return this.zzbhd == zznzVar.zzbhd && this.zzbhe == zznzVar.zzbhe && this.zzbhf == zznzVar.zzbhf && this.zzbhh == zznzVar.zzbhh && this.zzbhi == zznzVar.zzbhi && this.zzbhj == zznzVar.zzbhj && this.viewportWidth == zznzVar.viewportWidth && this.viewportHeight == zznzVar.viewportHeight && this.zzbhg == zznzVar.zzbhg && TextUtils.equals(null, null) && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        throw new NullPointerException();
    }
}
