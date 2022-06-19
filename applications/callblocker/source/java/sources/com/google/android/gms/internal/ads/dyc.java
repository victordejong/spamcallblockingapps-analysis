package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyc.class */
public final class dyc implements Parcelable.Creator<dya> {
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dya createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        char c = 0;
        Bundle bundle = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        eck eckVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        boolean z3 = false;
        dxu dxuVar = null;
        int i4 = 0;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 3:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 4:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 6:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 7:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 8:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 10:
                    eckVar = (eck) SafeParcelReader.m13965a(parcel, m13969a, eck.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.m13965a(parcel, m13969a, Location.CREATOR);
                    break;
                case 12:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 13:
                    bundle2 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 14:
                    bundle3 = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 16:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 17:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 18:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 19:
                    dxuVar = (dxu) SafeParcelReader.m13965a(parcel, m13969a, dxu.CREATOR);
                    break;
                case 20:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 21:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 22:
                    arrayList3 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new dya(i, c, bundle, i2, arrayList, z, i3, z2, str, eckVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, dxuVar, i4, str5, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dya[] newArray(int i) {
        return new dya[i];
    }
}
