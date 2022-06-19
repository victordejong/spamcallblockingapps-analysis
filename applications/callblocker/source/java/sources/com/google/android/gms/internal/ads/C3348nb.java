package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.mediation.C2382x;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.Arrays;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.nb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nb.class */
public final class C3348nb extends AbstractC2663a {
    public static final Parcelable.Creator<C3348nb> CREATOR = new C3347na();

    /* renamed from: a */
    private final int f16975a;

    /* renamed from: b */
    private final int f16976b;

    /* renamed from: c */
    private final int f16977c;

    public C3348nb(int i, int i2, int i3) {
        this.f16975a = i;
        this.f16976b = i2;
        this.f16977c = i3;
    }

    /* renamed from: a */
    public static C3348nb m7434a(C2382x c2382x) {
        return new C3348nb(c2382x.m14626a(), c2382x.m14625b(), c2382x.m14624c());
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj == null) {
            z = false;
        } else {
            z = false;
            if (obj instanceof C3348nb) {
                C3348nb c3348nb = (C3348nb) obj;
                z = false;
                if (c3348nb.f16977c == this.f16977c) {
                    z = false;
                    if (c3348nb.f16976b == this.f16976b) {
                        z = false;
                        if (c3348nb.f16975a == this.f16975a) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f16975a, this.f16976b, this.f16977c});
    }

    public final String toString() {
        int i = this.f16975a;
        int i2 = this.f16976b;
        return new StringBuilder(35).append(i).append(".").append(i2).append(".").append(this.f16977c).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f16975a);
        C2664b.m13941a(parcel, 2, this.f16976b);
        C2664b.m13941a(parcel, 3, this.f16977c);
        C2664b.m13943a(parcel, m13944a);
    }
}
