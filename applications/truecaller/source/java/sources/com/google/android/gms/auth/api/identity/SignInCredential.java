package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/SignInCredential.class */
public final class SignInCredential extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<SignInCredential> CREATOR = new zbk();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f5480a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f5481b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f5482c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f5483d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final Uri f5484e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f5485f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final String f5486g;

    @SafeParcelable.Constructor
    public SignInCredential(@RecentlyNonNull @SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3, @SafeParcelable.Param(id = 4) String str4, @SafeParcelable.Param(id = 5) Uri uri, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6) {
        Preconditions.m38901g(str);
        this.f5480a = str;
        this.f5481b = str2;
        this.f5482c = str3;
        this.f5483d = str4;
        this.f5484e = uri;
        this.f5485f = str5;
        this.f5486g = str6;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        return Objects.m38910a(this.f5480a, signInCredential.f5480a) && Objects.m38910a(this.f5481b, signInCredential.f5481b) && Objects.m38910a(this.f5482c, signInCredential.f5482c) && Objects.m38910a(this.f5483d, signInCredential.f5483d) && Objects.m38910a(this.f5484e, signInCredential.f5484e) && Objects.m38910a(this.f5485f, signInCredential.f5485f) && Objects.m38910a(this.f5486g, signInCredential.f5486g);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5480a, this.f5481b, this.f5482c, this.f5483d, this.f5484e, this.f5485f, this.f5486g});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 1, this.f5480a, false);
        SafeParcelWriter.m38846q(parcel, 2, this.f5481b, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f5482c, false);
        SafeParcelWriter.m38846q(parcel, 4, this.f5483d, false);
        SafeParcelWriter.m38847p(parcel, 5, this.f5484e, i, false);
        SafeParcelWriter.m38846q(parcel, 6, this.f5485f, false);
        SafeParcelWriter.m38846q(parcel, 7, this.f5486g, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
