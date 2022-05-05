package p081h.p203i.p204a.p224e.p289o;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.search.GoogleNowAuthState;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.o.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/o/a.class */
public final class C9108a implements Parcelable.Creator<GoogleNowAuthState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleNowAuthState createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        long j = 0;
        String str2 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 2) {
                str2 = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                j = C7029a.m21270B(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new GoogleNowAuthState(str, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleNowAuthState[] newArray(int i) {
        return new GoogleNowAuthState[i];
    }
}
