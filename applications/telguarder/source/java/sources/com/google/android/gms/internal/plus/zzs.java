package com.google.android.gms.internal.plus;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.plus.zzr;
import java.util.ArrayList;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzs.class */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr createFromParcel(Parcel parcel) {
        int i;
        int i2;
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        zzr.zza zzaVar = null;
        String str2 = null;
        String str3 = null;
        zzr.zzb zzbVar = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        zzr.zzc zzcVar = null;
        String str7 = null;
        zzr.zzd zzdVar = null;
        String str8 = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        String str9 = null;
        String str10 = null;
        ArrayList arrayList3 = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        boolean z = false;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i3 = SafeParcelReader.readInt(parcel, readHeader);
                    i = 1;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 2:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    i = 2;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 3:
                    zzaVar = (zzr.zza) SafeParcelReader.createParcelable(parcel, readHeader, zzr.zza.CREATOR);
                    i = 3;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 4:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    i = 4;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 5:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    i = 5;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 6:
                    i4 = SafeParcelReader.readInt(parcel, readHeader);
                    i = 6;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 7:
                    zzbVar = (zzr.zzb) SafeParcelReader.createParcelable(parcel, readHeader, zzr.zzb.CREATOR);
                    i = 7;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 8:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    i = 8;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 9:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    i = 9;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 10:
                case 11:
                case 13:
                case 17:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 12:
                    i5 = SafeParcelReader.readInt(parcel, readHeader);
                    i = 12;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 14:
                    str6 = SafeParcelReader.createString(parcel, readHeader);
                    i = 14;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 15:
                    zzcVar = (zzr.zzc) SafeParcelReader.createParcelable(parcel, readHeader, zzr.zzc.CREATOR);
                    i = 15;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 16:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    i = 16;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 18:
                    str7 = SafeParcelReader.createString(parcel, readHeader);
                    i = 18;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 19:
                    zzdVar = (zzr.zzd) SafeParcelReader.createParcelable(parcel, readHeader, zzr.zzd.CREATOR);
                    i2 = 19;
                    hashSet.add(Integer.valueOf(i2));
                    break;
                case 20:
                    str8 = SafeParcelReader.createString(parcel, readHeader);
                    i = 20;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 21:
                    i6 = SafeParcelReader.readInt(parcel, readHeader);
                    i = 21;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 22:
                    arrayList = SafeParcelReader.createTypedList(parcel, readHeader, zzr.zze.CREATOR);
                    i2 = 22;
                    hashSet.add(Integer.valueOf(i2));
                    break;
                case 23:
                    arrayList2 = SafeParcelReader.createTypedList(parcel, readHeader, zzr.zzf.CREATOR);
                    i2 = 23;
                    hashSet.add(Integer.valueOf(i2));
                    break;
                case 24:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    i = 24;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 25:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    i = 25;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 26:
                    str9 = SafeParcelReader.createString(parcel, readHeader);
                    i = 26;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 27:
                    str10 = SafeParcelReader.createString(parcel, readHeader);
                    i = 27;
                    hashSet.add(Integer.valueOf(i));
                    break;
                case 28:
                    arrayList3 = SafeParcelReader.createTypedList(parcel, readHeader, zzr.zzg.CREATOR);
                    i2 = 28;
                    hashSet.add(Integer.valueOf(i2));
                    break;
                case 29:
                    z2 = SafeParcelReader.readBoolean(parcel, readHeader);
                    i = 29;
                    hashSet.add(Integer.valueOf(i));
                    break;
            }
        }
        if (parcel.dataPosition() == validateObjectHeader) {
            return new zzr(hashSet, i3, str, zzaVar, str2, str3, i4, zzbVar, str4, str5, i5, str6, zzcVar, z, str7, zzdVar, str8, i6, arrayList, arrayList2, i7, i8, str9, str10, arrayList3, z2);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(validateObjectHeader);
        throw new SafeParcelReader.ParseException(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}
