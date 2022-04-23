package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/IdToken.class */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new l();
    private final String zzal;
    private final String zzr;

    public IdToken(String str, String str2) {
        o.b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        o.b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.zzr = str;
        this.zzal = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return m.a(this.zzr, idToken.zzr) && m.a(this.zzal, idToken.zzal);
    }

    public final String getAccountType() {
        return this.zzr;
    }

    public final String getIdToken() {
        return this.zzal;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getAccountType(), false);
        a.a(parcel, 2, getIdToken(), false);
        a.b(parcel, a2);
    }
}
