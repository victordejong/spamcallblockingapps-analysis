package p081h.p203i.p204a.p224e.p288n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.zzi;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.n.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/n/i.class */
public final class C9105i implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        long j = 0;
        double d = 0.0d;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 2:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 3:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 4:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 5:
                    d = C7029a.m21236u(parcel, a);
                    break;
                case 6:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                    bArr = C7029a.m21250g(parcel, a);
                    break;
                case 8:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 9:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzi(str, j, z, d, str2, bArr, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
