package p081h.p203i.p204a.p224e.p290p.p291b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.internal.zah;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.p.b.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/p/b/h.class */
public final class C9118h implements Parcelable.Creator<zah> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zah createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) C7029a.m21260a(parcel, a, ResolveAccountRequest.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zah(i, resolveAccountRequest);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zah[] newArray(int i) {
        return new zah[i];
    }
}
