package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/IdToken.class */
public final class IdToken extends AbstractSafeParcelable implements ReflectedParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<IdToken> CREATOR = new zbf();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5435a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5436b;

    @SafeParcelable.Constructor
    public IdToken(@RecentlyNonNull @SafeParcelable.Param(id = 1) String str, @RecentlyNonNull @SafeParcelable.Param(id = 2) String str2) {
        Preconditions.m38906b(!TextUtils.isEmpty(str), "account type string cannot be null or empty");
        Preconditions.m38906b(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.f5435a = str;
        this.f5436b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IdToken)) {
            return false;
        }
        IdToken idToken = (IdToken) obj;
        return Objects.m38910a(this.f5435a, idToken.f5435a) && Objects.m38910a(this.f5436b, idToken.f5436b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5435a, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5436b, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
