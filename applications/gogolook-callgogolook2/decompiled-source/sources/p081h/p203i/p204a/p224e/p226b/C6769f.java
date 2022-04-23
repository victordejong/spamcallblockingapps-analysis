package p081h.p203i.p204a.p224e.p226b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.AccountChangeEvent;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/f.class */
public final class C6769f implements Parcelable.Creator<AccountChangeEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 3:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 4:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 5:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 6:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new AccountChangeEvent(i, j, str, i2, i3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
