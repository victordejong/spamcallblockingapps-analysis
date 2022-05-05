package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C6964a0;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ClientIdentity.class */
public class ClientIdentity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new C6964a0();

    /* renamed from: a */
    public final int f6584a;
    @Nullable

    /* renamed from: b */
    public final String f6585b;

    public ClientIdentity(int i, @Nullable String str) {
        this.f6584a = i;
        this.f6585b = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ClientIdentity)) {
            return false;
        }
        ClientIdentity clientIdentity = (ClientIdentity) obj;
        return clientIdentity.f6584a == this.f6584a && C7018s.m21297a(clientIdentity.f6585b, this.f6585b);
    }

    public int hashCode() {
        return this.f6584a;
    }

    public String toString() {
        int i = this.f6584a;
        String str = this.f6585b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6584a);
        C7031b.m21215a(parcel, 2, this.f6585b, false);
        C7031b.m21229a(parcel, a);
    }
}
