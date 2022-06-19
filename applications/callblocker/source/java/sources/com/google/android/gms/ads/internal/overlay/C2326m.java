package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.C2305g;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.C3647yd;
/* renamed from: com.google.android.gms.ads.internal.overlay.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/m.class */
public final class C2326m implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        C2317d c2317d = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i = 0;
        int i2 = 0;
        String str3 = null;
        C3647yd c3647yd = null;
        String str4 = null;
        C2305g c2305g = null;
        IBinder iBinder6 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    c2317d = (C2317d) SafeParcelReader.m13965a(parcel, m13969a, C2317d.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 7:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 10:
                    iBinder5 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
                case 11:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 12:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 13:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 14:
                    c3647yd = (C3647yd) SafeParcelReader.m13965a(parcel, m13969a, C3647yd.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 16:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 17:
                    c2305g = (C2305g) SafeParcelReader.m13965a(parcel, m13969a, C2305g.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.m13951l(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new AdOverlayInfoParcel(c2317d, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, c3647yd, str4, c2305g, iBinder6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
