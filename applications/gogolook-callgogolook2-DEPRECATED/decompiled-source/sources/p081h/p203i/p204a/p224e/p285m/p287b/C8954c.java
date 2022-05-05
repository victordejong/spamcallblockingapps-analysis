package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.internal.zzaa;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.m.b.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/c.class */
public final class C8954c implements Parcelable.Creator<zzaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaa createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 2) {
                C7029a.m21266F(parcel, a);
            } else {
                bundle = C7029a.m21251f(parcel, a);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzaa(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
