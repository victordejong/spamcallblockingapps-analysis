package p081h.p203i.p204a.p224e.p290p.p291b;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.signin.internal.zaa;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.p.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/p/b/b.class */
public final class C9112b implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        int i = 0;
        Intent intent = null;
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
                intent = (Intent) C7029a.m21260a(parcel, a, Intent.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zaa(i, i2, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}
