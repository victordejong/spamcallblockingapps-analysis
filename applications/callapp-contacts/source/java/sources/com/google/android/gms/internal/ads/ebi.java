package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebi.class */
public final class ebi {

    /* renamed from: a */
    public static final ebi f48603a = new ebi(new ebg[0]);

    /* renamed from: b */
    public final int f48604b;

    /* renamed from: c */
    final ebg[] f48605c;

    /* renamed from: d */
    private int f48606d;

    public ebi(ebg... ebgVarArr) {
        this.f48605c = ebgVarArr;
        this.f48604b = ebgVarArr.length;
    }

    /* renamed from: a */
    public final int m15308a(ebg ebgVar) {
        for (int i = 0; i < this.f48604b; i++) {
            if (this.f48605c[i] == ebgVar) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ebi ebiVar = (ebi) obj;
        return this.f48604b == ebiVar.f48604b && Arrays.equals(this.f48605c, ebiVar.f48605c);
    }

    public final int hashCode() {
        if (this.f48606d == 0) {
            this.f48606d = Arrays.hashCode(this.f48605c);
        }
        return this.f48606d;
    }
}
