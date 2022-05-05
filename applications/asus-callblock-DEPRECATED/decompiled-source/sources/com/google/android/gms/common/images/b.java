package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/b.class */
public final class b implements Parcelable.Creator<WebImage> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(WebImage webImage, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, webImage.f3976a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, webImage.f3977b, i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 3, webImage.c);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 4, webImage.d);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        Uri uri = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i3 = a.d(parcel, readInt);
                    break;
                case 2:
                    uri = (Uri) a.a(parcel, readInt, Uri.CREATOR);
                    break;
                case 3:
                    i2 = a.d(parcel, readInt);
                    break;
                case 4:
                    i = a.d(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new WebImage(i3, uri, i2, i);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}
