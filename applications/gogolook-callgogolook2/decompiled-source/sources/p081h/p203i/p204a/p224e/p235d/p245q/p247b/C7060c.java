package p081h.p203i.p204a.p224e.p235d.p245q.p247b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.response.zak;
import com.google.android.gms.common.server.response.zal;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.q.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/q/b/c.class */
public final class C7060c implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList arrayList = null;
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                arrayList = C7029a.m21254c(parcel, a, zal.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zak(i, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak[] newArray(int i) {
        return new zak[i];
    }
}
