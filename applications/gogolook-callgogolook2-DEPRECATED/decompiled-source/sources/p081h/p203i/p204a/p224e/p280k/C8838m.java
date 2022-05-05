package p081h.p203i.p204a.p224e.p280k;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.background.systemalarm.CommandHandler;
import com.google.android.gms.location.LocationRequest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.k.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/m.class */
public final class C8838m implements Parcelable.Creator<LocationRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        long j = 3600000;
        long j2 = CommandHandler.WORK_PROCESSING_TIME_IN_MS;
        long j3 = Long.MAX_VALUE;
        long j4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = Integer.MAX_VALUE;
        float f = 0.0f;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    j = C7029a.m21270B(parcel, a);
                    break;
                case 3:
                    j2 = C7029a.m21270B(parcel, a);
                    break;
                case 4:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 5:
                    j3 = C7029a.m21270B(parcel, a);
                    break;
                case 6:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 7:
                    f = C7029a.m21234w(parcel, a);
                    break;
                case 8:
                    j4 = C7029a.m21270B(parcel, a);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new LocationRequest(i, j, j2, z, j3, i2, f, j4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
