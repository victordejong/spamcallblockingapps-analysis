package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest.class */
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new C11716a();
    private final PasswordRequestOptions zzas;
    private final GoogleIdTokenRequestOptions zzat;
    private final String zzau;
    private final boolean zzav;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.class */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new C11719d();
        private final boolean zzaw;
        private final String zzax;
        private final String zzay;
        private final boolean zzaz;
        private final String zzba;
        private final List<String> zzbb;

        /* renamed from: com.google.android.gms.auth.api.identity.BeginSignInRequest$GoogleIdTokenRequestOptions$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$a.class */
        public static final class C11711a {

            /* renamed from: a */
            boolean f39018a = false;

            /* renamed from: b */
            String f39019b = null;

            /* renamed from: c */
            String f39020c = null;

            /* renamed from: d */
            boolean f39021d = true;

            /* renamed from: e */
            private String f39022e = null;

            /* renamed from: f */
            private List<String> f39023f = null;
        }

        public GoogleIdTokenRequestOptions(boolean z, String str, String str2, boolean z2, String str3, List<String> list) {
            this.zzaw = z;
            if (z) {
                C12045o.m19161a(str, (Object) "serverClientId must be provided if Google ID tokens are requested");
            }
            this.zzax = str;
            this.zzay = str2;
            this.zzaz = z2;
            this.zzbb = BeginSignInRequest.zzc(list);
            this.zzba = str3;
        }

        public static C11711a builder() {
            return new C11711a();
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.zzaw == googleIdTokenRequestOptions.zzaw && C12041m.m19168a(this.zzax, googleIdTokenRequestOptions.zzax) && C12041m.m19168a(this.zzay, googleIdTokenRequestOptions.zzay) && this.zzaz == googleIdTokenRequestOptions.zzaz && C12041m.m19168a(this.zzba, googleIdTokenRequestOptions.zzba) && C12041m.m19168a(this.zzbb, googleIdTokenRequestOptions.zzbb);
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
            int m19116a = C12050a.m19116a(parcel, 20293);
            C12050a.m19101a(parcel, 1, isSupported());
            C12050a.m19104a(parcel, 2, getServerClientId(), false);
            C12050a.m19104a(parcel, 3, getNonce(), false);
            C12050a.m19101a(parcel, 4, filterByAuthorizedAccounts());
            C12050a.m19104a(parcel, 5, this.zzba, false);
            C12050a.m19103a(parcel, 6, this.zzbb);
            C12050a.m19095b(parcel, m19116a);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions.class */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new C11720e();
        private final boolean zzaw;

        /* renamed from: com.google.android.gms.auth.api.identity.BeginSignInRequest$PasswordRequestOptions$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions$a.class */
        public static final class C11712a {

            /* renamed from: a */
            boolean f39024a = false;
        }

        public PasswordRequestOptions(boolean z) {
            this.zzaw = z;
        }

        public static C11712a builder() {
            return new C11712a();
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
            int m19116a = C12050a.m19116a(parcel, 20293);
            C12050a.m19101a(parcel, 1, isSupported());
            C12050a.m19095b(parcel, m19116a);
        }
    }

    /* renamed from: com.google.android.gms.auth.api.identity.BeginSignInRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$a.class */
    public static final class C11713a {

        /* renamed from: a */
        PasswordRequestOptions f39025a;

        /* renamed from: b */
        GoogleIdTokenRequestOptions f39026b;

        /* renamed from: c */
        String f39027c;

        /* renamed from: d */
        boolean f39028d;

        public C11713a() {
            PasswordRequestOptions.C11712a builder = PasswordRequestOptions.builder();
            builder.f39024a = false;
            this.f39025a = new PasswordRequestOptions(builder.f39024a);
            GoogleIdTokenRequestOptions.C11711a builder2 = GoogleIdTokenRequestOptions.builder();
            builder2.f39018a = false;
            this.f39026b = new GoogleIdTokenRequestOptions(builder2.f39018a, builder2.f39019b, builder2.f39020c, builder2.f39021d, null, null);
        }
    }

    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z) {
        this.zzas = (PasswordRequestOptions) C12045o.m19162a(passwordRequestOptions);
        this.zzat = (GoogleIdTokenRequestOptions) C12045o.m19162a(googleIdTokenRequestOptions);
        this.zzau = str;
        this.zzav = z;
    }

    public static C11713a builder() {
        return new C11713a();
    }

    public static C11713a zzc(BeginSignInRequest beginSignInRequest) {
        C12045o.m19162a(beginSignInRequest);
        C11713a builder = builder();
        builder.f39026b = (GoogleIdTokenRequestOptions) C12045o.m19162a(beginSignInRequest.getGoogleIdTokenRequestOptions());
        builder.f39025a = (PasswordRequestOptions) C12045o.m19162a(beginSignInRequest.getPasswordRequestOptions());
        builder.f39028d = beginSignInRequest.zzav;
        String str = beginSignInRequest.zzau;
        if (str != null) {
            builder.f39027c = str;
        }
        return builder;
    }

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
        return C12041m.m19168a(this.zzas, beginSignInRequest.zzas) && C12041m.m19168a(this.zzat, beginSignInRequest.zzat) && C12041m.m19168a(this.zzau, beginSignInRequest.zzau) && this.zzav == beginSignInRequest.zzav;
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, getPasswordRequestOptions(), i, false);
        C12050a.m19107a(parcel, 2, getGoogleIdTokenRequestOptions(), i, false);
        C12050a.m19104a(parcel, 3, this.zzau, false);
        C12050a.m19101a(parcel, 4, isAutoSelectEnabled());
        C12050a.m19095b(parcel, m19116a);
    }
}
