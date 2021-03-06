package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ClientIdentity.class */
public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new C12054u();
    public final int zaa;
    public final String zab;

    public ClientIdentity(int i, String str) {
        this.zaa = i;
        this.zab = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.zaa == this.zaa && C12041m.m19168a(clientIdentity.zab, this.zab);
    }

    public final int hashCode() {
        return this.zaa;
    }

    public final String toString() {
        int i = this.zaa;
        String str = this.zab;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zaa);
        C12050a.m19104a(parcel, 2, this.zab, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
