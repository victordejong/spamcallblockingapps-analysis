package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.fr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fr.class */
public final class C3148fr implements Parcelable.Creator<C3145fo> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3145fo createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        char c = 0;
        boolean z = false;
        String[] strArr = null;
        String[] strArr2 = null;
        byte[] bArr = null;
        int i = 0;
        String str = null;
        boolean z2 = false;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    bArr = SafeParcelReader.m13949n(parcel, m13969a);
                    break;
                case 5:
                    strArr2 = SafeParcelReader.m13948o(parcel, m13969a);
                    break;
                case 6:
                    strArr = SafeParcelReader.m13948o(parcel, m13969a);
                    break;
                case 7:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 8:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3145fo(z2, str, i, bArr, strArr2, strArr, z, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3145fo[] newArray(int i) {
        return new C3145fo[i];
    }
}
