package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.firebase.dynamiclinks.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/b.class */
public final class C4911b implements Parcelable.Creator<C4910a> {
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4910a createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        char c = 0;
        Uri uri = null;
        Bundle bundle = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 5:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m13965a(parcel, m13969a, Uri.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4910a(str2, str, i, c, bundle, uri);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4910a[] newArray(int i) {
        return new C4910a[i];
    }
}
