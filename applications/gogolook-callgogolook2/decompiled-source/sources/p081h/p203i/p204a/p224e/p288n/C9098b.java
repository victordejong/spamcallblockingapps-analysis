package p081h.p203i.p204a.p224e.p288n;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.phenotype.Configuration;
import com.google.android.gms.phenotype.zzi;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.n.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/n/b.class */
public final class C9098b implements Parcelable.Creator<Configuration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        zzi[] zziVarArr = null;
        int i = 0;
        String[] strArr = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 2) {
                i = C7029a.m21231z(parcel, a);
            } else if (a2 == 3) {
                zziVarArr = (zzi[]) C7029a.m21256b(parcel, a, zzi.CREATOR);
            } else if (a2 != 4) {
                C7029a.m21266F(parcel, a);
            } else {
                strArr = C7029a.m21241p(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new Configuration(i, zziVarArr, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration[] newArray(int i) {
        return new Configuration[i];
    }
}
