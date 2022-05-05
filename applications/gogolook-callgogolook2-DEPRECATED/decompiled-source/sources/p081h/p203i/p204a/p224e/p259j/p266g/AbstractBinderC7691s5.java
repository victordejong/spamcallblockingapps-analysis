package p081h.p203i.p204a.p224e.p259j.p266g;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.clearcut.zzc;
import com.google.android.gms.clearcut.zze;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* renamed from: h.i.a.e.j.g.s5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/s5.class */
public abstract class AbstractBinderC7691s5 extends BinderC7727y implements AbstractC7684r5 {
    public AbstractBinderC7691s5() {
        super("com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.BinderC7727y
    /* renamed from: a */
    public final boolean mo19673a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo19811a((Status) C7728y0.m19671a(parcel, Status.CREATOR));
                return true;
            case 2:
                mo19675d((Status) C7728y0.m19671a(parcel, Status.CREATOR));
                throw null;
            case 3:
                mo19681a((Status) C7728y0.m19671a(parcel, Status.CREATOR), parcel.readLong());
                throw null;
            case 4:
                mo19674e((Status) C7728y0.m19671a(parcel, Status.CREATOR));
                throw null;
            case 5:
                mo19677b((Status) C7728y0.m19671a(parcel, Status.CREATOR), parcel.readLong());
                throw null;
            case 6:
                mo19679a((Status) C7728y0.m19671a(parcel, Status.CREATOR), (zze[]) parcel.createTypedArray(zze.CREATOR));
                throw null;
            case 7:
                mo19678a((DataHolder) C7728y0.m19671a(parcel, DataHolder.CREATOR));
                throw null;
            case 8:
                mo19680a((Status) C7728y0.m19671a(parcel, Status.CREATOR), (zzc) C7728y0.m19671a(parcel, zzc.CREATOR));
                throw null;
            case 9:
                mo19676b((Status) C7728y0.m19671a(parcel, Status.CREATOR), (zzc) C7728y0.m19671a(parcel, zzc.CREATOR));
                throw null;
            default:
                return false;
        }
    }
}
