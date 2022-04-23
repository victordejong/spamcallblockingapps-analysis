package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.ads.zzaaz;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.a.y */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y.class */
public final class C7462y implements Parcelable.Creator<zzaaz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
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
                i3 = C7029a.m21231z(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzaaz(i, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaaz[] newArray(int i) {
        return new zzaaz[i];
    }
}
