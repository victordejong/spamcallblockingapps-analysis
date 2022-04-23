package p081h.p203i.p204a.p224e.p255h.p256a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.h.a.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/h/a/b.class */
public final class C7144b implements Parcelable.Creator<UserAddressRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserAddressRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                arrayList = C7029a.m21254c(parcel, a, CountrySpecification.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new UserAddressRequest(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ UserAddressRequest[] newArray(int i) {
        return new UserAddressRequest[i];
    }
}
