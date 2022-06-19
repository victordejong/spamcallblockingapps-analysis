package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.xy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xy.class */
public abstract class AbstractBinderC7162xy extends BinderC6649k2 implements AbstractC7199yy {
    public AbstractBinderC7162xy() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    /* renamed from: E6 */
    public static AbstractC7199yy m9022E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return queryLocalInterface instanceof AbstractC7199yy ? (AbstractC7199yy) queryLocalInterface : new C7125wy(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            String mo8662b = mo8662b();
            parcel2.writeNoException();
            parcel2.writeString(mo8662b);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<AbstractC6533gz> mo8661c = mo8661c();
            parcel2.writeNoException();
            parcel2.writeList(mo8661c);
            return true;
        }
    }
}
