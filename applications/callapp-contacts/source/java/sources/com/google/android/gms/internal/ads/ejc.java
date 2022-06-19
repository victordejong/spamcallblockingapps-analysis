package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejc.class */
public final class ejc implements Parcelable.Creator<zzvq> {
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvq createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zzaav zzaavVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        zzvf zzvfVar = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 3:
                    bundle = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case 4:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 7:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\b':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\n':
                    zzaavVar = (zzaav) SafeParcelReader.m19143a(parcel, readInt, zzaav.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.m19143a(parcel, readInt, Location.CREATOR);
                    break;
                case '\f':
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\r':
                    bundle2 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case 14:
                    bundle3 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 16:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 17:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 18:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 19:
                    zzvfVar = (zzvf) SafeParcelReader.m19143a(parcel, readInt, zzvf.CREATOR);
                    break;
                case 20:
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 21:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 22:
                    arrayList3 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 23:
                    i5 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzvq(i, c, bundle, i2, arrayList, z, i3, z2, str, zzaavVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, zzvfVar, i4, str5, arrayList3, i5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvq[] newArray(int i) {
        return new zzvq[i];
    }
}
