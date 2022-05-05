package p081h.p203i.p204a.p224e.p259j.p276q;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.measurement.zzts;
import com.google.android.gms.internal.measurement.zztt;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.q.j2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/j2.class */
public final class C8645j2 implements Parcelable.Creator<zzts> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzts createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Uri uri = null;
        Uri uri2 = null;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            int a2 = C7029a.m21265a(a);
            if (a2 == 1) {
                uri = (Uri) C7029a.m21260a(parcel, a, Uri.CREATOR);
            } else if (a2 == 2) {
                uri2 = (Uri) C7029a.m21260a(parcel, a, Uri.CREATOR);
            } else if (a2 != 3) {
                C7029a.m21266F(parcel, a);
            } else {
                arrayList = C7029a.m21254c(parcel, a, zztt.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzts(uri, uri2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzts[] newArray(int i) {
        return new zzts[i];
    }
}
