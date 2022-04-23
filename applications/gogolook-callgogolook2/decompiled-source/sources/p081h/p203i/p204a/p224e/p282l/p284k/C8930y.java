package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.TileOverlayOptions;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/y.class */
public final class C8930y implements Parcelable.Creator<TileOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        IBinder iBinder = null;
        boolean z = false;
        float f = 0.0f;
        boolean z2 = true;
        float f2 = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                iBinder = C7029a.m21232y(parcel, a);
            } else if (a2 == 3) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 == 4) {
                f = C7029a.m21234w(parcel, a);
            } else if (a2 == 5) {
                z2 = C7029a.m21238s(parcel, a);
            } else if (a2 != 6) {
                C7029a.m21266F(parcel, a);
            } else {
                f2 = C7029a.m21234w(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new TileOverlayOptions(iBinder, z, f, z2, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}
