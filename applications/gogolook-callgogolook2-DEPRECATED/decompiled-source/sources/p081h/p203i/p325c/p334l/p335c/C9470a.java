package p081h.p203i.p325c.p334l.p335c;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.appindexing.internal.Thing;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.c.l.c.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/l/c/a.class */
public final class C9470a implements Parcelable.Creator<Thing> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Bundle bundle = null;
        Thing.zza zzaVar = null;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                bundle = C7029a.m21251f(parcel, a);
            } else if (a2 == 2) {
                zzaVar = (Thing.zza) C7029a.m21260a(parcel, a, Thing.zza.CREATOR);
            } else if (a2 == 3) {
                str = C7029a.m21242o(parcel, a);
            } else if (a2 == 4) {
                str2 = C7029a.m21242o(parcel, a);
            } else if (a2 != 1000) {
                C7029a.m21266F(parcel, a);
            } else {
                i = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new Thing(i, bundle, zzaVar, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Thing[] newArray(int i) {
        return new Thing[i];
    }
}
