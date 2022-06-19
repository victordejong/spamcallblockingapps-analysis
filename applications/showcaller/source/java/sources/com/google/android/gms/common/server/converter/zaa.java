package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.common.server.response.FastJsonResponse;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/converter/zaa.class */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new C6208a();

    /* renamed from: d */
    final int f19654d;

    /* renamed from: e */
    private final StringToIntConverter f19655e;

    public zaa(int i, StringToIntConverter stringToIntConverter) {
        this.f19654d = i;
        this.f19655e = stringToIntConverter;
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.f19654d = 1;
        this.f19655e = stringToIntConverter;
    }

    /* renamed from: k0 */
    public static zaa m16882k0(FastJsonResponse.AbstractC6211a<?, ?> abstractC6211a) {
        if (abstractC6211a instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) abstractC6211a);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    /* renamed from: l0 */
    public final FastJsonResponse.AbstractC6211a<?, ?> m16881l0() {
        StringToIntConverter stringToIntConverter = this.f19655e;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19654d);
        C6170a.m16931q(parcel, 2, this.f19655e, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
