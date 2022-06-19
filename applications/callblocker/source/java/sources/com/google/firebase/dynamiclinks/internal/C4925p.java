package com.google.firebase.dynamiclinks.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.firebase.dynamiclinks.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/p.class */
public final class C4925p implements Parcelable.Creator<C4923n> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4923n createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        ArrayList arrayList = null;
        Uri uri = null;
        Uri uri2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    uri2 = (Uri) SafeParcelReader.m13965a(parcel, m13969a, Uri.CREATOR);
                    break;
                case 2:
                    uri = (Uri) SafeParcelReader.m13965a(parcel, m13969a, Uri.CREATOR);
                    break;
                case 3:
                    arrayList = SafeParcelReader.m13960c(parcel, m13969a, C4926q.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C4923n(uri2, uri, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4923n[] newArray(int i) {
        return new C4923n[i];
    }
}
