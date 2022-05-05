package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.d.n.m0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/m0.class */
public final class C7006m0 implements Parcelable.Creator<GetServiceRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        Feature[] featureArr = null;
        Feature[] featureArr2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
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
                    i3 = C7029a.m21231z(parcel, a);
                    break;
                case 4:
                    str = C7029a.m21242o(parcel, a);
                    break;
                case 5:
                    iBinder = C7029a.m21232y(parcel, a);
                    break;
                case 6:
                    scopeArr = (Scope[]) C7029a.m21256b(parcel, a, Scope.CREATOR);
                    break;
                case 7:
                    bundle = C7029a.m21251f(parcel, a);
                    break;
                case 8:
                    account = (Account) C7029a.m21260a(parcel, a, Account.CREATOR);
                    break;
                case 9:
                default:
                    C7029a.m21266F(parcel, a);
                    break;
                case 10:
                    featureArr = (Feature[]) C7029a.m21256b(parcel, a, Feature.CREATOR);
                    break;
                case 11:
                    featureArr2 = (Feature[]) C7029a.m21256b(parcel, a, Feature.CREATOR);
                    break;
                case 12:
                    z = C7029a.m21238s(parcel, a);
                    break;
                case 13:
                    i4 = C7029a.m21231z(parcel, a);
                    break;
            }
        }
        C7029a.m21239r(parcel, b);
        return new GetServiceRequest(i, i2, i3, str, iBinder, scopeArr, bundle, account, featureArr, featureArr2, z, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
