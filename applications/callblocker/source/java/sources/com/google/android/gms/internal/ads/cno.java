package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cno.class */
public final class cno extends AbstractC2663a {
    public static final Parcelable.Creator<cno> CREATOR = new cnn();

    /* renamed from: a */
    public final byte[] f13407a;

    /* renamed from: b */
    public final int f13408b;

    /* renamed from: c */
    private final int f13409c;

    public cno(int i, byte[] bArr, int i2) {
        this.f13409c = i;
        this.f13407a = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.f13408b = i2;
    }

    public cno(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f13409c);
        C2664b.m13929a(parcel, 2, this.f13407a, false);
        C2664b.m13941a(parcel, 3, this.f13408b);
        C2664b.m13943a(parcel, m13944a);
    }
}
