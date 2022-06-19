package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.play.core.internal.c1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/c1.class */
public abstract class AbstractBinderC8478c1 extends BinderC8525x0 implements AbstractC8481d1 {
    public AbstractBinderC8478c1() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC8525x0
    /* renamed from: c0 */
    protected final boolean mo3422c0(int i, Parcel parcel) {
        switch (i) {
            case 2:
                mo3531J3(parcel.readInt(), (Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                int readInt = parcel.readInt();
                Bundle bundle = (Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR);
                mo3528b2(readInt);
                return true;
            case 4:
                int readInt2 = parcel.readInt();
                Bundle bundle2 = (Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR);
                mo3523v3(readInt2);
                return true;
            case 5:
                mo3532I5(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                Parcelable.Creator creator = Bundle.CREATOR;
                Bundle bundle3 = (Bundle) C8527y0.m3420a(parcel, creator);
                Bundle bundle4 = (Bundle) C8527y0.m3420a(parcel, creator);
                mo3529Z1(bundle3);
                return true;
            case 7:
                mo3526p5((Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                Parcelable.Creator creator2 = Bundle.CREATOR;
                Bundle bundle5 = (Bundle) C8527y0.m3420a(parcel, creator2);
                Bundle bundle6 = (Bundle) C8527y0.m3420a(parcel, creator2);
                mo3524t4(bundle5);
                return true;
            case 9:
            default:
                return false;
            case 10:
                Parcelable.Creator creator3 = Bundle.CREATOR;
                Bundle bundle7 = (Bundle) C8527y0.m3420a(parcel, creator3);
                Bundle bundle8 = (Bundle) C8527y0.m3420a(parcel, creator3);
                mo3534E3(bundle7);
                return true;
            case 11:
                Parcelable.Creator creator4 = Bundle.CREATOR;
                mo3533E4((Bundle) C8527y0.m3420a(parcel, creator4), (Bundle) C8527y0.m3420a(parcel, creator4));
                return true;
            case 12:
                Parcelable.Creator creator5 = Bundle.CREATOR;
                mo3525r5((Bundle) C8527y0.m3420a(parcel, creator5), (Bundle) C8527y0.m3420a(parcel, creator5));
                return true;
            case 13:
                Parcelable.Creator creator6 = Bundle.CREATOR;
                mo3527c6((Bundle) C8527y0.m3420a(parcel, creator6), (Bundle) C8527y0.m3420a(parcel, creator6));
                return true;
            case 14:
                Parcelable.Creator creator7 = Bundle.CREATOR;
                Bundle bundle9 = (Bundle) C8527y0.m3420a(parcel, creator7);
                Bundle bundle10 = (Bundle) C8527y0.m3420a(parcel, creator7);
                mo3530T3();
                return true;
            case 15:
                Bundle bundle11 = (Bundle) C8527y0.m3420a(parcel, Bundle.CREATOR);
                mo3522v6();
                return true;
        }
    }
}
