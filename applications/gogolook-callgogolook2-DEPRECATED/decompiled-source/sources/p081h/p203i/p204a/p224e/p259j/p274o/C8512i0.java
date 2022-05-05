package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.location.zzm;
import com.google.android.gms.internal.location.zzo;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.o.i0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/i0.class */
public final class C8512i0 implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzm zzmVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        int i = 1;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                zzmVar = (zzm) C7029a.m21260a(parcel, a, zzm.CREATOR);
            } else if (a2 == 3) {
                iBinder = C7029a.m21232y(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                iBinder2 = C7029a.m21232y(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzo(i, zzmVar, iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i) {
        return new zzo[i];
    }
}
