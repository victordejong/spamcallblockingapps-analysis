package p081h.p203i.p204a.p224e.p226b.p227e.p228d;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.auth.api.accounttransfer.zzt;
import java.util.HashSet;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/d/d.class */
public final class C6722d implements Parcelable.Creator<zzt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        byte[] bArr = null;
        PendingIntent pendingIntent = null;
        DeviceMetaData deviceMetaData = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    hashSet.add(1);
                    break;
                case 2:
                    str = C7029a.m21242o(parcel, a);
                    hashSet.add(2);
                    break;
                case 3:
                    i2 = C7029a.m21231z(parcel, a);
                    hashSet.add(3);
                    break;
                case 4:
                    bArr = C7029a.m21250g(parcel, a);
                    hashSet.add(4);
                    break;
                case 5:
                    pendingIntent = (PendingIntent) C7029a.m21260a(parcel, a, PendingIntent.CREATOR);
                    hashSet.add(5);
                    break;
                case 6:
                    deviceMetaData = (DeviceMetaData) C7029a.m21260a(parcel, a, DeviceMetaData.CREATOR);
                    hashSet.add(6);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() == b) {
            return new zzt(hashSet, i, str, i2, bArr, pendingIntent, deviceMetaData);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(b);
        throw new C7029a.C7030a(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt[] newArray(int i) {
        return new zzt[i];
    }
}
