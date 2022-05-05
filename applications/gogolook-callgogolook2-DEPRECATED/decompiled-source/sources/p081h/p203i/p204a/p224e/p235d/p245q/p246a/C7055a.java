package p081h.p203i.p204a.p224e.p235d.p245q.p246a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.converter.zaa;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.q.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/q/a/a.class */
public final class C7055a implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        StringToIntConverter stringToIntConverter = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                stringToIntConverter = (StringToIntConverter) C7029a.m21260a(parcel, a, StringToIntConverter.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zaa(i, stringToIntConverter);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}
