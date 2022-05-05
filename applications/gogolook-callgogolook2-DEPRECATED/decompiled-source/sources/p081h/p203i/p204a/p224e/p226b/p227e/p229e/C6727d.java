package p081h.p203i.p204a.p224e.p226b.p227e.p229e;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.e.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/e/d.class */
public final class C6727d implements Parcelable.Creator<CredentialPickerConfig> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 == 2) {
                z2 = C7029a.m21238s(parcel, a);
            } else if (a2 == 3) {
                z3 = C7029a.m21238s(parcel, a);
            } else if (a2 == 4) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 != 1000) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new CredentialPickerConfig(i, z, z2, z3, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialPickerConfig[] newArray(int i) {
        return new CredentialPickerConfig[i];
    }
}
