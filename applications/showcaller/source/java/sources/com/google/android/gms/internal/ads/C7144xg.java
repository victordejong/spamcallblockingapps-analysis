package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.xg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xg.class */
public final class C7144xg {

    /* renamed from: a */
    public final int f32041a = 1;

    /* renamed from: b */
    private final zzanm[] f32042b;

    /* renamed from: c */
    private int f32043c;

    public C7144xg(zzanm... zzanmVarArr) {
        this.f32042b = zzanmVarArr;
    }

    /* renamed from: a */
    public final zzanm m9185a(int i) {
        return this.f32042b[i];
    }

    /* renamed from: b */
    public final int m9184b(zzanm zzanmVar) {
        for (int i = 0; i <= 0; i++) {
            if (zzanmVar == this.f32042b[i]) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C7144xg.class == obj.getClass() && Arrays.equals(this.f32042b, ((C7144xg) obj).f32042b);
    }

    public final int hashCode() {
        int i = this.f32043c;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f32042b) + 527;
            this.f32043c = i2;
        }
        return i2;
    }
}
