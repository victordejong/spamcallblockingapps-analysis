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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest.class */
public class SavePasswordRequest extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new zbi();
    @SafeParcelable.Field

    /* renamed from: a */
    public final SignInPassword f5475a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5476b;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SavePasswordRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public SignInPassword f5477a;

        /* renamed from: b */
        public String f5478b;
    }

    @SafeParcelable.Constructor
    public SavePasswordRequest(@SafeParcelable.Param(id = 1) SignInPassword signInPassword, @SafeParcelable.Param(id = 2) String str) {
        Objects.requireNonNull(signInPassword, "null reference");
        this.f5475a = signInPassword;
        this.f5476b = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        return com.google.android.gms.common.internal.Objects.m38910a(this.f5475a, savePasswordRequest.f5475a) && com.google.android.gms.common.internal.Objects.m38910a(this.f5476b, savePasswordRequest.f5476b);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5475a, this.f5476b});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5475a, i, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5476b, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
