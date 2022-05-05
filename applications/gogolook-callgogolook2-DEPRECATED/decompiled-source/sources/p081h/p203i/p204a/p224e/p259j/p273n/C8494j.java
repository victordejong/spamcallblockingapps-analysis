package p081h.p203i.p204a.p224e.p259j.p273n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.icing.zzg;
import com.google.android.gms.internal.icing.zzj;
import com.google.android.gms.internal.icing.zzx;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.n.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/n/j.class */
public final class C8494j implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzj zzjVar = null;
        String str = null;
        zzg zzgVar = null;
        long j = 0;
        int i = 0;
        boolean z = false;
        int i2 = -1;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    zzjVar = (zzj) C7029a.m21260a(parcel, a, zzj.CREATOR);
                    break;
                case 2:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 3:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 4:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 5:
                    zzgVar = (zzg) C7029a.m21260a(parcel, a, zzg.CREATOR);
                    break;
                case 6:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 7:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 8:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzx(zzjVar, j, i, str, zzgVar, z, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx[] newArray(int i) {
        return new zzx[i];
    }
}
