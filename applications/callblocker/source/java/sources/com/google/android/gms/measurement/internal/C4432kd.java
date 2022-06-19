package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.kd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kd.class */
public final class C4432kd implements Parcelable.Creator<C4430kb> {
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4430kb createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        char c = 0;
        char c2 = 0;
        String str5 = null;
        boolean z = true;
        boolean z2 = false;
        char c3 = 0;
        String str6 = null;
        char c4 = 0;
        char c5 = 0;
        int i = 0;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = false;
        String str7 = null;
        Boolean bool = null;
        char c6 = 0;
        ArrayList<String> arrayList = null;
        String str8 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 7:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 8:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 9:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 10:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 11:
                    c3 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 12:
                    str6 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 13:
                    c4 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 14:
                    c5 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 15:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 16:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 17:
                    z4 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 18:
                    z5 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 19:
                    str7 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 20:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 21:
                    bool = SafeParcelReader.m13959d(parcel, m13969a);
                    break;
                case 22:
                    c6 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 23:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 24:
                    str8 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4430kb(str, str2, str3, str4, c, c2, str5, z, z2, c3, str6, c4, c5, i, z3, z4, z5, str7, bool, c6, arrayList, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4430kb[] newArray(int i) {
        return new C4430kb[i];
    }
}
