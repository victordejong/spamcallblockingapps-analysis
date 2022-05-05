package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.location.zzad;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.o.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/d.class */
public final class C8501d implements Parcelable.Creator<zzad> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Status status = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 1) {
                C7029a.m21266F(parcel, a);
            } else {
                status = (Status) C7029a.m21260a(parcel, a, Status.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzad(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzad[] newArray(int i) {
        return new zzad[i];
    }
}
