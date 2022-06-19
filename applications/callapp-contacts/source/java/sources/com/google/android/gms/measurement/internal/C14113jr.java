package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.jr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jr.class */
public final class C14113jr implements Parcelable.Creator<zzkl> {
    /* renamed from: a */
    public static void m11613a(zzkl zzklVar, Parcel parcel) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, zzklVar.zza);
        C12050a.m19104a(parcel, 2, zzklVar.zzb, false);
        C12050a.m19111a(parcel, 3, zzklVar.zzc);
        C12050a.m19105a(parcel, 4, zzklVar.zzd);
        C12050a.m19106a(parcel, 5, (Float) null);
        C12050a.m19104a(parcel, 6, zzklVar.zze, false);
        C12050a.m19104a(parcel, 7, zzklVar.zzf, false);
        Double d = zzklVar.zzg;
        if (d != null) {
            C12050a.m19094b(parcel, 8, 8);
            parcel.writeDouble(d.doubleValue());
        }
        C12050a.m19095b(parcel, m19116a);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkl createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        char c = 0;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 4:
                    l = SafeParcelReader.m19134g(parcel, readInt);
                    break;
                case 5:
                    f = SafeParcelReader.m19131j(parcel, readInt);
                    break;
                case 6:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\b':
                    int m19145a = SafeParcelReader.m19145a(parcel, readInt);
                    if (m19145a != 0) {
                        SafeParcelReader.m19141b(parcel, m19145a, 8);
                        d = Double.valueOf(parcel.readDouble());
                        break;
                    } else {
                        d = null;
                        break;
                    }
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzkl(i, str, c, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzkl[] newArray(int i) {
        return new zzkl[i];
    }
}
