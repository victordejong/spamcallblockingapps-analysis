package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest.class */
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new com.google.android.gms.auth.api.identity.a();
    private final PasswordRequestOptions zzas;
    private final GoogleIdTokenRequestOptions zzat;
    private final String zzau;
    private final boolean zzav;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.class */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new d();
        private final boolean zzaw;
        private final String zzax;
        private final String zzay;
        private final boolean zzaz;
        private final String zzba;
        private final List<String> zzbb;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            boolean f22476a = false;

            /* renamed from: b  reason: collision with root package name */
            String f22477b = null;

            /* renamed from: c  reason: collision with root package name */
            String f22478c = null;

            /* renamed from: d  reason: collision with root package name */
            boolean f22479d = true;
            private String e = null;
            private List<String> f = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public GoogleIdTokenRequestOptions(boolean z, String str, String str2, boolean z2, String str3, List<String> list) {
            this.zzaw = z;
            if (z) {
                o.a(str, (Object) "serverClientId must be provided if Google ID tokens are requested");
            }
            this.zzax = str;
            this.zzay = str2;
            this.zzaz = z2;
            this.zzbb = BeginSignInRequest.zzc(list);
            this.zzba = str3;
        }

        public static a builder() {
            return new a();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.zzaw == googleIdTokenRequestOptions.zzaw && m.a(this.zzax, googleIdTokenRequestOptions.zzax) && m.a(this.zzay, googleIdTokenRequestOptions.zzay) && this.zzaz == googleIdTokenRequestOptions.zzaz && m.a(this.zzba, googleIdTokenRequestOptions.zzba) && m.a(this.zzbb, googleIdTokenRequestOptions.zzbb);
        }

        public final boolean filterByAuthorizedAccounts() {
            return this.zzaz;
        }

        public final String getNonce() {
            return this.zzay;
        }

        public final String getServerClientId() {
            return this.zzax;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zzaw), this.zzax, this.zzay, Boolean.valueOf(this.zzaz), this.zzba, this.zzbb});
        }

        public final boolean isSupported() {
            return this.zzaw;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, isSupported());
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, getServerClientId(), false);
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, getNonce(), false);
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, filterByAuthorizedAccounts());
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, this.zzba, false);
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, this.zzbb);
            com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions.class */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new e();
        private final boolean zzaw;

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            boolean f22480a = false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public PasswordRequestOptions(boolean z) {
            this.zzaw = z;
        }

        public static a builder() {
            return new a();
        }

        public final boolean equals(Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.zzaw == ((PasswordRequestOptions) obj).zzaw;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zzaw)});
        }

        public final boolean isSupported() {
            return this.zzaw;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
            com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, isSupported());
            com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        PasswordRequestOptions f22481a;

        /* renamed from: b  reason: collision with root package name */
        GoogleIdTokenRequestOptions f22482b;

        /* renamed from: c  reason: collision with root package name */
        String f22483c;

        /* renamed from: d  reason: collision with root package name */
        boolean f22484d;

        public a() {
            PasswordRequestOptions.a builder = PasswordRequestOptions.builder();
            builder.f22480a = false;
            this.f22481a = new PasswordRequestOptions(builder.f22480a);
            GoogleIdTokenRequestOptions.a builder2 = GoogleIdTokenRequestOptions.builder();
            builder2.f22476a = false;
            this.f22482b = new GoogleIdTokenRequestOptions(builder2.f22476a, builder2.f22477b, builder2.f22478c, builder2.f22479d, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z) {
        this.zzas = (PasswordRequestOptions) o.a(passwordRequestOptions);
        this.zzat = (GoogleIdTokenRequestOptions) o.a(googleIdTokenRequestOptions);
        this.zzau = str;
        this.zzav = z;
    }

    public static a builder() {
        return new a();
    }

    public static a zzc(BeginSignInRequest beginSignInRequest) {
        o.a(beginSignInRequest);
        a builder = builder();
        builder.f22482b = (GoogleIdTokenRequestOptions) o.a(beginSignInRequest.getGoogleIdTokenRequestOptions());
        builder.f22481a = (PasswordRequestOptions) o.a(beginSignInRequest.getPasswordRequestOptions());
        builder.f22484d = beginSignInRequest.zzav;
        String str = beginSignInRequest.zzau;
        if (str != null) {
            builder.f22483c = str;
        }
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<String> zzc(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        return m.a(this.zzas, beginSignInRequest.zzas) && m.a(this.zzat, beginSignInRequest.zzat) && m.a(this.zzau, beginSignInRequest.zzau) && this.zzav == beginSignInRequest.zzav;
    }

    public final GoogleIdTokenRequestOptions getGoogleIdTokenRequestOptions() {
        return this.zzat;
    }

    public final PasswordRequestOptions getPasswordRequestOptions() {
        return this.zzas;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzas, this.zzat, this.zzau, Boolean.valueOf(this.zzav)});
    }

    public final boolean isAutoSelectEnabled() {
        return this.zzav;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, getPasswordRequestOptions(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, this.zzau, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, isAutoSelectEnabled());
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }
}
