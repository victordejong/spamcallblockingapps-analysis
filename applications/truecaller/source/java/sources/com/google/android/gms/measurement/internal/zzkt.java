package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzkt.class */
public final class zzkt implements Parcelable.Creator {
    /* renamed from: a */
    public static void m38555a(zzks zzksVar, Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = zzksVar.a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38846q(parcel, 2, zzksVar.b, false);
        long j = zzksVar.c;
        parcel.writeInt(524291);
        parcel.writeLong(j);
        SafeParcelWriter.m38849n(parcel, 4, zzksVar.d, false);
        SafeParcelWriter.m38855h(parcel, 5, null, false);
        SafeParcelWriter.m38846q(parcel, 6, zzksVar.e, false);
        SafeParcelWriter.m38846q(parcel, 7, zzksVar.f, false);
        Double d = zzksVar.g;
        if (d != null) {
            parcel.writeInt(524296);
            parcel.writeDouble(d.doubleValue());
        }
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        int i = 0;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 4:
                    l = SafeParcelReader.m38865x(parcel, readInt);
                    break;
                case 5:
                    f = SafeParcelReader.m38869t(parcel, readInt);
                    break;
                case 6:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    int m38864y = SafeParcelReader.m38864y(parcel, readInt);
                    if (m38864y != 0) {
                        SafeParcelReader.m38890B(parcel, readInt, m38864y, 8);
                        d = Double.valueOf(parcel.readDouble());
                        break;
                    } else {
                        d = null;
                        break;
                    }
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzks(i, str, c, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzks[i];
    }
}
