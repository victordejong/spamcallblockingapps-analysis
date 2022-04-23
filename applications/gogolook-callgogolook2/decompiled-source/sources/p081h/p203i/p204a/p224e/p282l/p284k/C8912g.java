package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.Cap;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.l.k.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/g.class */
public final class C8912g implements Parcelable.Creator<Cap> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Cap createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        IBinder iBinder = null;
        int i = 0;
        Float f = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 3) {
                iBinder = C7029a.m21232y(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                f = C7029a.m21233x(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new Cap(i, iBinder, f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Cap[] newArray(int i) {
        return new Cap[i];
    }
}
