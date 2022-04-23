package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.internal.location.zzm;
import com.google.android.gms.location.zzj;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.o.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/h0.class */
public final class C8510h0 implements Parcelable.Creator<zzm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzm createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzj zzjVar = zzm.f6884e;
        List<ClientIdentity> list = zzm.f6883d;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                zzjVar = (zzj) C7029a.m21260a(parcel, a, zzj.CREATOR);
            } else if (a2 == 2) {
                list = C7029a.m21254c(parcel, a, ClientIdentity.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                str = C7029a.m21242o(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzm(zzjVar, list, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzm[] newArray(int i) {
        return new zzm[i];
    }
}
