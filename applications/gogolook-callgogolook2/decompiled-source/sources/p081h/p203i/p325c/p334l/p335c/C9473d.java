package p081h.p203i.p325c.p334l.p335c;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.appindexing.internal.Thing;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.c.l.c.d */
/* loaded from: classes2-dex2jar.jar:h/i/c/l/c/d.class */
public final class C9473d implements Parcelable.Creator<Thing.zza> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing.zza createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        boolean z = false;
        String str = null;
        Bundle bundle = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                z = C7029a.m21238s(parcel, a);
            } else if (a2 == 2) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 3) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                bundle = C7029a.m21251f(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new Thing.zza(z, i, str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing.zza[] newArray(int i) {
        return new Thing.zza[i];
    }
}
