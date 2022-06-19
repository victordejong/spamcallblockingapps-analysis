package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ew3.class */
public final class ew3 {

    /* renamed from: a */
    private int f22583a;

    /* renamed from: b */
    private final mm3[] f22584b;

    public ew3(mm3[] mm3VarArr, byte... bArr) {
        this.f22584b = mm3VarArr;
        int length = mm3VarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ew3.class == obj.getClass()) {
            return Arrays.equals(this.f22584b, ((ew3) obj).f22584b);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f22583a;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.f22584b) + 527;
            this.f22583a = i2;
        }
        return i2;
    }
}
