package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ClientIdentity.class */
public class ClientIdentity extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new C6182v();

    /* renamed from: d */
    public final int f19446d;
    @RecentlyNullable

    /* renamed from: e */
    public final String f19447e;

    public ClientIdentity(int i, String str) {
        this.f19446d = i;
        this.f19447e = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f19446d == this.f19446d && C6147m.m17044a(clientIdentity.f19447e, this.f19447e);
    }

    public final int hashCode() {
        return this.f19446d;
    }

    @RecentlyNonNull
    public final String toString() {
        int i = this.f19446d;
        String str = this.f19447e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19446d);
        C6170a.m16930r(parcel, 2, this.f19447e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
