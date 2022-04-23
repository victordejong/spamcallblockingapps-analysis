package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.b.e.h.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/c.class */
public final class C6741c implements Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptionsExtensionParcelable createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        Bundle bundle = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                i2 = C7029a.m21231z(parcel, a);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                bundle = C7029a.m21251f(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new GoogleSignInOptionsExtensionParcelable(i, i2, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptionsExtensionParcelable[] newArray(int i) {
        return new GoogleSignInOptionsExtensionParcelable[i];
    }
}
