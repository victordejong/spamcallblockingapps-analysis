package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError.class */
public abstract class TcOAuthError implements Parcelable {

    /* renamed from: a */
    public final int f10014a;

    /* renamed from: b */
    public final String f10015b;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$ApiError.class */
    public static final class ApiError extends TcOAuthError {
        public static final Parcelable.Creator<ApiError> CREATOR = new C2872a();

        /* renamed from: c */
        public final int f10016c;

        /* renamed from: d */
        public final String f10017d;

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$ApiError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$ApiError$a.class */
        public static final class C2872a implements Parcelable.Creator<ApiError> {
            @Override // android.os.Parcelable.Creator
            public ApiError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new ApiError(parcel.readInt(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public ApiError[] newArray(int i) {
                return new ApiError[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApiError(int i, String str) {
            super(i, str, null);
            l.e(str, "message");
            this.f10016c = i;
            this.f10017d = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof ApiError)) {
                    return false;
                }
                ApiError apiError = (ApiError) obj;
                return this.f10016c == apiError.f10016c && l.a(this.f10017d, apiError.f10017d);
            }
            return true;
        }

        public int hashCode() {
            int i = this.f10016c;
            String str = this.f10017d;
            return (i * 31) + (str != null ? str.hashCode() : 0);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ApiError(code=");
            m8728C.append(this.f10016c);
            m8728C.append(", message=");
            return C22128a.m8618h(m8728C, this.f10017d, ")");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(this.f10016c);
            parcel.writeString(this.f10017d);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported.class */
    public static final class DeviceNotSupported extends TcOAuthError {

        /* renamed from: c */
        public static final DeviceNotSupported f10018c = new DeviceNotSupported();
        public static final Parcelable.Creator<DeviceNotSupported> CREATOR = new C2873a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$DeviceNotSupported$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$DeviceNotSupported$a.class */
        public static final class C2873a implements Parcelable.Creator<DeviceNotSupported> {
            @Override // android.os.Parcelable.Creator
            public DeviceNotSupported createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? DeviceNotSupported.f10018c : null;
            }

            @Override // android.os.Parcelable.Creator
            public DeviceNotSupported[] newArray(int i) {
                return new DeviceNotSupported[i];
            }
        }

        public DeviceNotSupported() {
            super(16, "Device is not supported", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError.class */
    public static final class InvalidAccountStateError extends TcOAuthError {

        /* renamed from: c */
        public static final InvalidAccountStateError f10019c = new InvalidAccountStateError();
        public static final Parcelable.Creator<InvalidAccountStateError> CREATOR = new C2874a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$InvalidAccountStateError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$InvalidAccountStateError$a.class */
        public static final class C2874a implements Parcelable.Creator<InvalidAccountStateError> {
            @Override // android.os.Parcelable.Creator
            public InvalidAccountStateError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? InvalidAccountStateError.f10019c : null;
            }

            @Override // android.os.Parcelable.Creator
            public InvalidAccountStateError[] newArray(int i) {
                return new InvalidAccountStateError[i];
            }
        }

        public InvalidAccountStateError() {
            super(10, "Truecaller user has an invalid account state", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError.class */
    public static final class InvalidPartnerError extends TcOAuthError {

        /* renamed from: c */
        public static final InvalidPartnerError f10020c = new InvalidPartnerError();
        public static final Parcelable.Creator<InvalidPartnerError> CREATOR = new C2875a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$InvalidPartnerError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$InvalidPartnerError$a.class */
        public static final class C2875a implements Parcelable.Creator<InvalidPartnerError> {
            @Override // android.os.Parcelable.Creator
            public InvalidPartnerError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? InvalidPartnerError.f10020c : null;
            }

            @Override // android.os.Parcelable.Creator
            public InvalidPartnerError[] newArray(int i) {
                return new InvalidPartnerError[i];
            }
        }

        public InvalidPartnerError() {
            super(12, "Invalid partner or partner information is missing", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError.class */
    public static final class OldSdkError extends TcOAuthError {

        /* renamed from: c */
        public static final OldSdkError f10021c = new OldSdkError();
        public static final Parcelable.Creator<OldSdkError> CREATOR = new C2876a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$OldSdkError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$OldSdkError$a.class */
        public static final class C2876a implements Parcelable.Creator<OldSdkError> {
            @Override // android.os.Parcelable.Creator
            public OldSdkError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? OldSdkError.f10021c : null;
            }

            @Override // android.os.Parcelable.Creator
            public OldSdkError[] newArray(int i) {
                return new OldSdkError[i];
            }
        }

        public OldSdkError() {
            super(6, "Truecaller sdk is old and not compatible", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError.class */
    public static final class RequestCodeCollisionError extends TcOAuthError {

        /* renamed from: c */
        public static final RequestCodeCollisionError f10022c = new RequestCodeCollisionError();
        public static final Parcelable.Creator<RequestCodeCollisionError> CREATOR = new C2877a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$RequestCodeCollisionError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$RequestCodeCollisionError$a.class */
        public static final class C2877a implements Parcelable.Creator<RequestCodeCollisionError> {
            @Override // android.os.Parcelable.Creator
            public RequestCodeCollisionError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? RequestCodeCollisionError.f10022c : null;
            }

            @Override // android.os.Parcelable.Creator
            public RequestCodeCollisionError[] newArray(int i) {
                return new RequestCodeCollisionError[i];
            }
        }

        public RequestCodeCollisionError() {
            super(7, "Conflicting request code possible", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError.class */
    public static final class TruecallerActivityNotFoundError extends TcOAuthError {

        /* renamed from: c */
        public static final TruecallerActivityNotFoundError f10023c = new TruecallerActivityNotFoundError();
        public static final Parcelable.Creator<TruecallerActivityNotFoundError> CREATOR = new C2878a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$TruecallerActivityNotFoundError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerActivityNotFoundError$a.class */
        public static final class C2878a implements Parcelable.Creator<TruecallerActivityNotFoundError> {
            @Override // android.os.Parcelable.Creator
            public TruecallerActivityNotFoundError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? TruecallerActivityNotFoundError.f10023c : null;
            }

            @Override // android.os.Parcelable.Creator
            public TruecallerActivityNotFoundError[] newArray(int i) {
                return new TruecallerActivityNotFoundError[i];
            }
        }

        public TruecallerActivityNotFoundError() {
            super(15, "Truecaller activity not found", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError.class */
    public static final class TruecallerClosedError extends TcOAuthError {

        /* renamed from: c */
        public static final TruecallerClosedError f10024c = new TruecallerClosedError();
        public static final Parcelable.Creator<TruecallerClosedError> CREATOR = new C2879a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$TruecallerClosedError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerClosedError$a.class */
        public static final class C2879a implements Parcelable.Creator<TruecallerClosedError> {
            @Override // android.os.Parcelable.Creator
            public TruecallerClosedError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? TruecallerClosedError.f10024c : null;
            }

            @Override // android.os.Parcelable.Creator
            public TruecallerClosedError[] newArray(int i) {
                return new TruecallerClosedError[i];
            }
        }

        public TruecallerClosedError() {
            super(5, "Truecaller app closed unexpectedly", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError.class */
    public static final class TruecallerNotInstalledError extends TcOAuthError {

        /* renamed from: c */
        public static final TruecallerNotInstalledError f10025c = new TruecallerNotInstalledError();
        public static final Parcelable.Creator<TruecallerNotInstalledError> CREATOR = new C2880a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$TruecallerNotInstalledError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$TruecallerNotInstalledError$a.class */
        public static final class C2880a implements Parcelable.Creator<TruecallerNotInstalledError> {
            @Override // android.os.Parcelable.Creator
            public TruecallerNotInstalledError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? TruecallerNotInstalledError.f10025c : null;
            }

            @Override // android.os.Parcelable.Creator
            public TruecallerNotInstalledError[] newArray(int i) {
                return new TruecallerNotInstalledError[i];
            }
        }

        public TruecallerNotInstalledError() {
            super(11, "Truecaller app is not installed", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError.class */
    public static final class UserDeniedByPressingFooterError extends TcOAuthError {

        /* renamed from: c */
        public static final UserDeniedByPressingFooterError f10026c = new UserDeniedByPressingFooterError();
        public static final Parcelable.Creator<UserDeniedByPressingFooterError> CREATOR = new C2881a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$UserDeniedByPressingFooterError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedByPressingFooterError$a.class */
        public static final class C2881a implements Parcelable.Creator<UserDeniedByPressingFooterError> {
            @Override // android.os.Parcelable.Creator
            public UserDeniedByPressingFooterError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? UserDeniedByPressingFooterError.f10026c : null;
            }

            @Override // android.os.Parcelable.Creator
            public UserDeniedByPressingFooterError[] newArray(int i) {
                return new UserDeniedByPressingFooterError[i];
            }
        }

        public UserDeniedByPressingFooterError() {
            super(14, "User denied by pressing the footer button", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError.class */
    public static final class UserDeniedError extends TcOAuthError {

        /* renamed from: c */
        public static final UserDeniedError f10027c = new UserDeniedError();
        public static final Parcelable.Creator<UserDeniedError> CREATOR = new C2882a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$UserDeniedError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedError$a.class */
        public static final class C2882a implements Parcelable.Creator<UserDeniedError> {
            @Override // android.os.Parcelable.Creator
            public UserDeniedError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? UserDeniedError.f10027c : null;
            }

            @Override // android.os.Parcelable.Creator
            public UserDeniedError[] newArray(int i) {
                return new UserDeniedError[i];
            }
        }

        public UserDeniedError() {
            super(2, "User denied by dismissing consent screen", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError.class */
    public static final class UserDeniedWhileLoadingError extends TcOAuthError {

        /* renamed from: c */
        public static final UserDeniedWhileLoadingError f10028c = new UserDeniedWhileLoadingError();
        public static final Parcelable.Creator<UserDeniedWhileLoadingError> CREATOR = new C2883a();

        /* renamed from: com.truecaller.android.sdk.oAuth.TcOAuthError$UserDeniedWhileLoadingError$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/TcOAuthError$UserDeniedWhileLoadingError$a.class */
        public static final class C2883a implements Parcelable.Creator<UserDeniedWhileLoadingError> {
            @Override // android.os.Parcelable.Creator
            public UserDeniedWhileLoadingError createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return parcel.readInt() != 0 ? UserDeniedWhileLoadingError.f10028c : null;
            }

            @Override // android.os.Parcelable.Creator
            public UserDeniedWhileLoadingError[] newArray(int i) {
                return new UserDeniedWhileLoadingError[i];
            }
        }

        public UserDeniedWhileLoadingError() {
            super(13, "User denied while loading", null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeInt(1);
        }
    }

    public TcOAuthError(int i, String str, f fVar) {
        this.f10014a = i;
        this.f10015b = str;
    }
}
