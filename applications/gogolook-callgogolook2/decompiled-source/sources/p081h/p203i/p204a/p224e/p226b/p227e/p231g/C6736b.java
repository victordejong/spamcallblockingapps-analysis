package p081h.p203i.p204a.p224e.p226b.p227e.p231g;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.g.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/g/b.class */
public final class C6736b implements Parcelable.Creator<ProxyRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        byte[] bArr = null;
        Bundle bundle = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 2) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 == 3) {
                j = C7029a.m21270B(parcel, a);
            } else if (a2 == 4) {
                bArr = C7029a.m21250g(parcel, a);
            } else if (a2 == 5) {
                bundle = C7029a.m21251f(parcel, a);
            } else if (a2 != 1000) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new ProxyRequest(i, str, i2, j, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
