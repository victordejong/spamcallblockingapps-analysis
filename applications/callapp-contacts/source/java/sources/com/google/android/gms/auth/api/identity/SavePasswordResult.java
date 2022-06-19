package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordResult.class */
public class SavePasswordResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new C11722g();
    private final PendingIntent zzbc;

    public SavePasswordResult(PendingIntent pendingIntent) {
        this.zzbc = (PendingIntent) C12045o.m19162a(pendingIntent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordResult)) {
            return false;
        }
        return C12041m.m19168a(this.zzbc, ((SavePasswordResult) obj).zzbc);
    }

    public PendingIntent getPendingIntent() {
        return this.zzbc;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbc});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, getPendingIntent(), i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
