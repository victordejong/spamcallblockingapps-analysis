package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordResult.class */
public class SavePasswordResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new C5894g();

    /* renamed from: d */
    private final PendingIntent f18939d;

    public SavePasswordResult(PendingIntent pendingIntent) {
        this.f18939d = (PendingIntent) C6155o.m17018j(pendingIntent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordResult)) {
            return false;
        }
        return C6147m.m17044a(this.f18939d, ((SavePasswordResult) obj).f18939d);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f18939d);
    }

    /* renamed from: k0 */
    public PendingIntent m17674k0() {
        return this.f18939d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, m17674k0(), i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
