package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.ah */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ah.class */
public final class C11982ah implements Parcelable.Creator<MethodInvocation> {
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MethodInvocation createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        char c = 0;
        char c2 = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 3:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 4:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 5:
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 6:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\b':
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new MethodInvocation(i, i2, i3, c, c2, str, str2, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ MethodInvocation[] newArray(int i) {
        return new MethodInvocation[i];
    }
}
