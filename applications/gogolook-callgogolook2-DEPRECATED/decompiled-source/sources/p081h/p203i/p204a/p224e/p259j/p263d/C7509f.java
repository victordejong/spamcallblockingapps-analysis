package p081h.p203i.p204a.p224e.p259j.p263d;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.internal.auth_api.zzs;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
/* renamed from: h.i.a.e.j.d.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/d/f.class */
public final class C7509f implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int b = C7029a.m21258b(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < b) {
            int a = C7029a.m21264a(parcel);
            if (C7029a.m21265a(a) != 1) {
                C7029a.m21266F(parcel, a);
            } else {
                credential = (Credential) C7029a.m21260a(parcel, a, Credential.CREATOR);
            }
        }
        C7029a.m21239r(parcel, b);
        return new zzs(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
