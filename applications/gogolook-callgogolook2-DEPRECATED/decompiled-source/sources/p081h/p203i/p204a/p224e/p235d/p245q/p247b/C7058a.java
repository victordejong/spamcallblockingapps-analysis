package p081h.p203i.p204a.p224e.p235d.p245q.p247b;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.converter.zaa;
import com.google.android.gms.common.server.response.FastJsonResponse;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.q.b.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/q/b/a.class */
public final class C7058a implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        String str2 = null;
        zaa zaaVar = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            switch (C7029a.m21265a(a)) {
                case 1:
                    i = C7029a.m21231z(parcel, a);
                    break;
                case 2:
                    i2 = C7029a.m21231z(parcel, a);
                    break;
                case 3:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 4:
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 5:
                    z2 = C7029a.m21238s(parcel, a);
                    break;
                case 6:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 7:
                    i4 = C7029a.m21231z(parcel, a);
                    break;
                case 8:
                    str2 = C7029a.m21242o(parcel, a);
                    break;
                case 9:
                    zaaVar = (zaa) C7029a.m21260a(parcel, a, zaa.CREATOR);
                    break;
                default:
                    C7029a.m21266F(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new FastJsonResponse.Field(i, i2, z, i3, z2, str, i4, str2, zaaVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}
