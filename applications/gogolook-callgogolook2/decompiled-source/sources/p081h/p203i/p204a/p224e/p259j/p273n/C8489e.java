package p081h.p203i.p204a.p224e.p259j.p273n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.icing.zzp;
import com.google.android.gms.internal.icing.zzx;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.n.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/n/e.class */
public final class C8489e implements Parcelable.Creator<zzp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Status status = null;
        ArrayList arrayList = null;
        String[] strArr = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                status = (Status) C7029a.m21260a(parcel, a, Status.CREATOR);
            } else if (a2 == 2) {
                arrayList = C7029a.m21254c(parcel, a, zzx.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                strArr = C7029a.m21241p(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzp(status, arrayList, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
