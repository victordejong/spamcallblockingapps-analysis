package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jr.class */
public final class jr implements Parcelable.Creator<zzkl> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzkl zzklVar, Parcel parcel) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, zzklVar.zza);
        a.a(parcel, 2, zzklVar.zzb, false);
        a.a(parcel, 3, zzklVar.zzc);
        a.a(parcel, 4, zzklVar.zzd);
        a.a(parcel, 5, (Float) null);
        a.a(parcel, 6, zzklVar.zze, false);
        a.a(parcel, 7, zzklVar.zzf, false);
        Double d2 = zzklVar.zzg;
        if (d2 != null) {
            a.b(parcel, 8, 8);
            parcel.writeDouble(d2.doubleValue());
        }
        a.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkl createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d2 = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 3:
                    j = SafeParcelReader.f(parcel, readInt);
                    break;
                case 4:
                    l = SafeParcelReader.g(parcel, readInt);
                    break;
                case 5:
                    f = SafeParcelReader.j(parcel, readInt);
                    break;
                case 6:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 7:
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\b':
                    int a3 = SafeParcelReader.a(parcel, readInt);
                    if (a3 != 0) {
                        SafeParcelReader.b(parcel, a3, 8);
                        d2 = Double.valueOf(parcel.readDouble());
                        break;
                    } else {
                        d2 = null;
                        break;
                    }
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzkl(i, str, j, l, f, str2, str3, d2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkl[] newArray(int i) {
        return new zzkl[i];
    }
}
