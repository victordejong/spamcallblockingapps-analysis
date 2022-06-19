package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Objects;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest.class */
public class GetSignInIntentRequest extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new zbd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5456a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5457b;
    @SafeParcelable.Field

    /* renamed from: c */
    public String f5458c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f5459d;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/GetSignInIntentRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public String f5460a;

        /* renamed from: b */
        public String f5461b;

        /* renamed from: c */
        public String f5462c;

        /* renamed from: d */
        public String f5463d;
    }

    @SafeParcelable.Constructor
    public GetSignInIntentRequest(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3, @SafeParcelable.Param(id = 4) String str4) {
        Objects.requireNonNull(str, "null reference");
        this.f5456a = str;
        this.f5457b = str2;
        this.f5458c = str3;
        this.f5459d = str4;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        return com.google.android.gms.common.internal.Objects.m38910a(this.f5456a, getSignInIntentRequest.f5456a) && com.google.android.gms.common.internal.Objects.m38910a(this.f5459d, getSignInIntentRequest.f5459d) && com.google.android.gms.common.internal.Objects.m38910a(this.f5457b, getSignInIntentRequest.f5457b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5456a, this.f5457b});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5456a, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5457b, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f5458c, false);
        SafeParcelWriter.m38846q(parcel, 4, this.f5459d, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
