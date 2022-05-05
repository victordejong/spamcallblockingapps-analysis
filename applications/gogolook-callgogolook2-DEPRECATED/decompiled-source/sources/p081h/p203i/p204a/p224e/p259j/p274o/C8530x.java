package p081h.p203i.p204a.p224e.p259j.p274o;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzbf;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.o.x */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/x.class */
public final class C8530x implements Parcelable.Creator<zzbf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbf createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzbd zzbdVar = null;
        IBinder iBinder = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        int i = 1;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    zzbdVar = (zzbd) C7029a.m21260a(parcel, a, zzbd.CREATOR);
                    break;
                case 3:
                    iBinder = C7029a.m21232y(parcel, a);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) C7029a.m21260a(parcel, a, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = C7029a.m21232y(parcel, a);
                    break;
                case 6:
                    iBinder3 = C7029a.m21232y(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzbf(i, zzbdVar, iBinder, pendingIntent, iBinder2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbf[] newArray(int i) {
        return new zzbf[i];
    }
}
