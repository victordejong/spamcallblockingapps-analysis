package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C6147m;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest.class */
public final class BeginSignInRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new C5888a();

    /* renamed from: d */
    private final PasswordRequestOptions f18922d;

    /* renamed from: e */
    private final GoogleIdTokenRequestOptions f18923e;

    /* renamed from: f */
    private final String f18924f;

    /* renamed from: g */
    private final boolean f18925g;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions.class */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new C5891d();

        /* renamed from: d */
        private final boolean f18926d;

        /* renamed from: e */
        private final String f18927e;

        /* renamed from: f */
        private final String f18928f;

        /* renamed from: g */
        private final boolean f18929g;

        /* renamed from: h */
        private final String f18930h;

        /* renamed from: i */
        private final List<String> f18931i;

        public GoogleIdTokenRequestOptions(boolean z, String str, String str2, boolean z2, String str3, List<String> list) {
            this.f18926d = z;
            if (z) {
                C6155o.m17017k(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f18927e = str;
            this.f18928f = str2;
            this.f18929g = z2;
            this.f18931i = BeginSignInRequest.m17685n0(list);
            this.f18930h = str3;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof GoogleIdTokenRequestOptions)) {
                return false;
            }
            GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
            return this.f18926d == googleIdTokenRequestOptions.f18926d && C6147m.m17044a(this.f18927e, googleIdTokenRequestOptions.f18927e) && C6147m.m17044a(this.f18928f, googleIdTokenRequestOptions.f18928f) && this.f18929g == googleIdTokenRequestOptions.f18929g && C6147m.m17044a(this.f18930h, googleIdTokenRequestOptions.f18930h) && C6147m.m17044a(this.f18931i, googleIdTokenRequestOptions.f18931i);
        }

        public final int hashCode() {
            return C6147m.m17043b(Boolean.valueOf(this.f18926d), this.f18927e, this.f18928f, Boolean.valueOf(this.f18929g), this.f18930h, this.f18931i);
        }

        /* renamed from: k0 */
        public final boolean m17683k0() {
            return this.f18929g;
        }

        /* renamed from: l0 */
        public final String m17682l0() {
            return this.f18928f;
        }

        /* renamed from: m0 */
        public final String m17681m0() {
            return this.f18927e;
        }

        /* renamed from: n0 */
        public final boolean m17680n0() {
            return this.f18926d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int m16947a = C6170a.m16947a(parcel);
            C6170a.m16945c(parcel, 1, m17680n0());
            C6170a.m16930r(parcel, 2, m17681m0(), false);
            C6170a.m16930r(parcel, 3, m17682l0(), false);
            C6170a.m16945c(parcel, 4, m17683k0());
            C6170a.m16930r(parcel, 5, this.f18930h, false);
            C6170a.m16928t(parcel, 6, this.f18931i, false);
            C6170a.m16946b(parcel, m16947a);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/identity/BeginSignInRequest$PasswordRequestOptions.class */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new C5892e();

        /* renamed from: d */
        private final boolean f18932d;

        public PasswordRequestOptions(boolean z) {
            this.f18932d = z;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof PasswordRequestOptions) && this.f18932d == ((PasswordRequestOptions) obj).f18932d;
        }

        public final int hashCode() {
            return C6147m.m17043b(Boolean.valueOf(this.f18932d));
        }

        /* renamed from: k0 */
        public final boolean m17679k0() {
            return this.f18932d;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int m16947a = C6170a.m16947a(parcel);
            C6170a.m16945c(parcel, 1, m17679k0());
            C6170a.m16946b(parcel, m16947a);
        }
    }

    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z) {
        this.f18922d = (PasswordRequestOptions) C6155o.m17018j(passwordRequestOptions);
        this.f18923e = (GoogleIdTokenRequestOptions) C6155o.m17018j(googleIdTokenRequestOptions);
        this.f18924f = str;
        this.f18925g = z;
    }

    /* renamed from: n0 */
    public static List<String> m17685n0(List<String> list) {
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
        return C6147m.m17044a(this.f18922d, beginSignInRequest.f18922d) && C6147m.m17044a(this.f18923e, beginSignInRequest.f18923e) && C6147m.m17044a(this.f18924f, beginSignInRequest.f18924f) && this.f18925g == beginSignInRequest.f18925g;
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f18922d, this.f18923e, this.f18924f, Boolean.valueOf(this.f18925g));
    }

    /* renamed from: k0 */
    public final GoogleIdTokenRequestOptions m17688k0() {
        return this.f18923e;
    }

    /* renamed from: l0 */
    public final PasswordRequestOptions m17687l0() {
        return this.f18922d;
    }

    /* renamed from: m0 */
    public final boolean m17686m0() {
        return this.f18925g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 1, m17687l0(), i, false);
        C6170a.m16931q(parcel, 2, m17688k0(), i, false);
        C6170a.m16930r(parcel, 3, this.f18924f, false);
        C6170a.m16945c(parcel, 4, m17686m0());
        C6170a.m16946b(parcel, m16947a);
    }
}
