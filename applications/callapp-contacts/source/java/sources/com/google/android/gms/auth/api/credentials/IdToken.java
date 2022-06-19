package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/IdToken.class */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new C11707l();
    private final String zzal;
    private final String zzr;

    public IdToken(String str, String str2) {
        C12045o.m19153b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        C12045o.m19153b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
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
        return C12041m.m19168a(this.zzr, idToken.zzr) && C12041m.m19168a(this.zzal, idToken.zzal);
    }

    public final String getAccountType() {
        return this.zzr;
    }

    public final String getIdToken() {
        return this.zzal;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, getAccountType(), false);
        C12050a.m19104a(parcel, 2, getIdToken(), false);
        C12050a.m19095b(parcel, m19116a);
    }
}
