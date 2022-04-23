package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordResult.class */
public class SavePasswordResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SavePasswordResult> CREATOR = new g();
    private final PendingIntent zzbc;

    public SavePasswordResult(PendingIntent pendingIntent) {
        this.zzbc = (PendingIntent) o.a(pendingIntent);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordResult)) {
            return false;
        }
        return m.a(this.zzbc, ((SavePasswordResult) obj).zzbc);
    }

    public PendingIntent getPendingIntent() {
        return this.zzbc;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbc});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getPendingIntent(), i, false);
        a.b(parcel, a2);
    }
}
