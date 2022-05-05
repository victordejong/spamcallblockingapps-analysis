package p081h.p203i.p325c.p334l.p335c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.appindexing.internal.zzb;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.c.l.c.e */
/* loaded from: classes2-dex2jar.jar:h/i/c/l/c/e.class */
public final class C9474e implements Parcelable.Creator<zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 3:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 4:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 5:
                    bArr = C7029a.m21250g(parcel, a);
                    break;
                case 6:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzb(i, z, str, str2, bArr, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb[] newArray(int i) {
        return new zzb[i];
    }
}
