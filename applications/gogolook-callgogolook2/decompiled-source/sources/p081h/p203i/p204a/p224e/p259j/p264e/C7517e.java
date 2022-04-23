package p081h.p203i.p204a.p224e.p259j.p264e;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.auth.zzah;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.e.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/e.class */
public final class C7517e implements Parcelable.Creator<zzah> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        int i = 0;
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                pendingIntent = (PendingIntent) C7029a.m21260a(parcel, a, PendingIntent.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzah(i, str, pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzah[] newArray(int i) {
        return new zzah[i];
    }
}
