package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest.class */
public final class BeginSignInRequest extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new zba();
    @SafeParcelable.Field

    /* renamed from: a */
    public final PasswordRequestOptions f5437a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final GoogleIdTokenRequestOptions f5438b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f5439c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final boolean f5440d;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        public PasswordRequestOptions f5441a;

        /* renamed from: b */
        public GoogleIdTokenRequestOptions f5442b;

        /* renamed from: c */
        public String f5443c;

        /* renamed from: d */
        public boolean f5444d;

        public Builder() {
            Parcelable.Creator<PasswordRequestOptions> creator = PasswordRequestOptions.CREATOR;
            PasswordRequestOptions.Builder builder = new PasswordRequestOptions.Builder();
            builder.f5454a = false;
            this.f5441a = new PasswordRequestOptions(builder.f5454a);
            Parcelable.Creator<GoogleIdTokenRequestOptions> creator2 = GoogleIdTokenRequestOptions.CREATOR;
            GoogleIdTokenRequestOptions.Builder builder2 = new GoogleIdTokenRequestOptions.Builder();
            builder2.f5451a = false;
            this.f5442b = new GoogleIdTokenRequestOptions(builder2.f5451a, null, null, builder2.f5452b, null, null);
        }
    }

    @SafeParcelable.Class
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.class */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        @RecentlyNonNull
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new zbe();
        @SafeParcelable.Field

        /* renamed from: a */
        public final boolean f5445a;
        @SafeParcelable.Field

        /* renamed from: b */
        public final String f5446b;
        @SafeParcelable.Field

        /* renamed from: c */
        public final String f5447c;
        @SafeParcelable.Field

        /* renamed from: d */
        public final boolean f5448d;
        @SafeParcelable.Field

        /* renamed from: e */
        public final String f5449e;
        @SafeParcelable.Field

        /* renamed from: f */
        public final List<String> f5450f;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder.class */
        public static final class Builder {

            /* renamed from: a */
            public boolean f5451a = false;

            /* renamed from: b */
            public boolean f5452b = true;
        }

        @SafeParcelable.Constructor
        public GoogleIdTokenRequestOptions(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) List<String> list) {
            this.f5445a = z;
            if (z) {
                Preconditions.m38897k(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f5446b = str;
            this.f5447c = str2;
            this.f5448d = z2;
            Parcelable.Creator<BeginSignInRequest> creator = BeginSignInRequest.CREATOR;
            ArrayList arrayList = null;
            if (list != null) {
                if (list.isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(list);
                    Collections.sort(arrayList);
                }
            }
            this.f5450f = arrayList;
            this.f5449e = str3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.f5445a == googleIdTokenRequestOptions.f5445a && Objects.m38910a(this.f5446b, googleIdTokenRequestOptions.f5446b) && Objects.m38910a(this.f5447c, googleIdTokenRequestOptions.f5447c) && this.f5448d == googleIdTokenRequestOptions.f5448d && Objects.m38910a(this.f5449e, googleIdTokenRequestOptions.f5449e) && Objects.m38910a(this.f5450f, googleIdTokenRequestOptions.f5450f);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f5445a), this.f5446b, this.f5447c, Boolean.valueOf(this.f5448d), this.f5449e, this.f5450f});
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
            int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
            boolean z = this.f5445a;
            parcel.writeInt(262145);
            parcel.writeInt(z ? 1 : 0);
            SafeParcelWriter.m38846q(parcel, 2, this.f5446b, false);
            SafeParcelWriter.m38846q(parcel, 3, this.f5447c, false);
            boolean z2 = this.f5448d;
            parcel.writeInt(262148);
            parcel.writeInt(z2 ? 1 : 0);
            SafeParcelWriter.m38846q(parcel, 5, this.f5449e, false);
            SafeParcelWriter.m38844s(parcel, 6, this.f5450f, false);
            SafeParcelWriter.m38840w(parcel, m38841v);
        }
    }

    @SafeParcelable.Class
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions.class */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        @RecentlyNonNull
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new zbf();
        @SafeParcelable.Field

        /* renamed from: a */
        public final boolean f5453a;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions$Builder.class */
        public static final class Builder {

            /* renamed from: a */
            public boolean f5454a = false;
        }

        @SafeParcelable.Constructor
        public PasswordRequestOptions(@SafeParcelable.Param(id = 1) boolean z) {
            this.f5453a = z;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.f5453a == ((PasswordRequestOptions) obj).f5453a;
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f5453a)});
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
            int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
            boolean z = this.f5453a;
            parcel.writeInt(262145);
            parcel.writeInt(z ? 1 : 0);
            SafeParcelWriter.m38840w(parcel, m38841v);
        }
    }

    @SafeParcelable.Constructor
    public BeginSignInRequest(@SafeParcelable.Param(id = 1) PasswordRequestOptions passwordRequestOptions, @SafeParcelable.Param(id = 2) GoogleIdTokenRequestOptions googleIdTokenRequestOptions, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) boolean z) {
        java.util.Objects.requireNonNull(passwordRequestOptions, "null reference");
        this.f5437a = passwordRequestOptions;
        java.util.Objects.requireNonNull(googleIdTokenRequestOptions, "null reference");
        this.f5438b = googleIdTokenRequestOptions;
        this.f5439c = str;
        this.f5440d = z;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return Objects.m38910a(this.f5437a, beginSignInRequest.f5437a) && Objects.m38910a(this.f5438b, beginSignInRequest.f5438b) && Objects.m38910a(this.f5439c, beginSignInRequest.f5439c) && this.f5440d == beginSignInRequest.f5440d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5437a, this.f5438b, this.f5439c, Boolean.valueOf(this.f5440d)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38847p(parcel, 1, this.f5437a, i, false);
        SafeParcelWriter.m38847p(parcel, 2, this.f5438b, i, false);
        SafeParcelWriter.m38846q(parcel, 3, this.f5439c, false);
        boolean z = this.f5440d;
        parcel.writeInt(262148);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
