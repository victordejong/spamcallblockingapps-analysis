package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.Tile;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/w.class */
public final class C8928w implements Parcelable.Creator<Tile> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Tile createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        byte[] bArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 3) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                bArr = C7029a.m21250g(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new Tile(i, i2, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Tile[] newArray(int i) {
        return new Tile[i];
    }
}
