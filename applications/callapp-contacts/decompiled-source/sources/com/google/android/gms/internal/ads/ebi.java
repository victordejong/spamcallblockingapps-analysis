package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebi.class */
public final class ebi {

    /* renamed from: a  reason: collision with root package name */
    public static final ebi f27574a = new ebi(new ebg[0]);

    /* renamed from: b  reason: collision with root package name */
    public final int f27575b;

    /* renamed from: c  reason: collision with root package name */
    final ebg[] f27576c;

    /* renamed from: d  reason: collision with root package name */
    private int f27577d;

    public ebi(ebg... ebgVarArr) {
        this.f27576c = ebgVarArr;
        this.f27575b = ebgVarArr.length;
    }

    public final int a(ebg ebgVar) {
        for (int i = 0; i < this.f27575b; i++) {
            if (this.f27576c[i] == ebgVar) {
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
        return this.f27575b == ebiVar.f27575b && Arrays.equals(this.f27576c, ebiVar.f27576c);
    }

    public final int hashCode() {
        if (this.f27577d == 0) {
            this.f27577d = Arrays.hashCode(this.f27576c);
        }
        return this.f27577d;
    }
}
