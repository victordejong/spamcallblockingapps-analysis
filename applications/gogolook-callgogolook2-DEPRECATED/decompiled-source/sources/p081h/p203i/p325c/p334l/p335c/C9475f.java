package p081h.p203i.p325c.p334l.p335c;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.firebase.appindexing.internal.Thing;
import com.google.firebase.appindexing.internal.zzx;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.c.l.c.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/l/c/f.class */
public final class C9475f implements Parcelable.Creator<zzx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Thing[] thingArr = null;
        int i = 0;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 2) {
                thingArr = (Thing[]) C7029a.m21256b(parcel, a, Thing.CREATOR);
            } else if (a2 == 3) {
                strArr = C7029a.m21241p(parcel, a);
            } else if (a2 != 5) {
                C7029a.m21266F(parcel, a);
            } else {
                strArr2 = C7029a.m21241p(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzx(i, thingArr, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzx[] newArray(int i) {
        return new zzx[i];
    }
}
