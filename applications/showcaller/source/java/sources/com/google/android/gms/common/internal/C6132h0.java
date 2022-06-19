package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h0.class */
public final class C6132h0 implements Parcelable.Creator<MethodInvocation> {
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MethodInvocation createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        char c = 0;
        char c2 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 3:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 4:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 5:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 6:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new MethodInvocation(i, i2, i3, c, c2, str, str2, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MethodInvocation[] newArray(int i) {
        return new MethodInvocation[i];
    }
}
