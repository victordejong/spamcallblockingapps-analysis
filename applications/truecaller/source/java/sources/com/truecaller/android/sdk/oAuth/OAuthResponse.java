package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b7\u0018�� \b2\u00020\u0001:\u0003\t\n\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0003\u0010\u0005\u0082\u0001\u0002\f\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/android/sdk/oAuth/OAuthResponse;", "Landroid/os/Parcelable;", "", "isSuccessful", "Z", "()Z", "<init>", "(Z)V", "Companion", "a", "FailureResponse", "SuccessResponse", "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse;", "Lcom/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse;", "sdk-external_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/OAuthResponse.class */
public abstract class OAuthResponse implements Parcelable {
    public static final C2869a Companion = new C2869a(null);
    public static final String OAUTH_RESPONSE_EXTRA = "OAUTH_SDK_RESPONSE_EXTRA";
    private final boolean isSuccessful;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse.class */
    public static final class FailureResponse extends OAuthResponse {
        public static final Parcelable.Creator<FailureResponse> CREATOR = new C2867a();

        /* renamed from: a */
        public final TcOAuthError f10007a;

        /* renamed from: com.truecaller.android.sdk.oAuth.OAuthResponse$FailureResponse$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/OAuthResponse$FailureResponse$a.class */
        public static final class C2867a implements Parcelable.Creator<FailureResponse> {
            @Override // android.os.Parcelable.Creator
            public FailureResponse createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new FailureResponse((TcOAuthError) parcel.readParcelable(FailureResponse.class.getClassLoader()));
            }

            @Override // android.os.Parcelable.Creator
            public FailureResponse[] newArray(int i) {
                return new FailureResponse[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FailureResponse(TcOAuthError tcOAuthError) {
            super(false, null);
            l.e(tcOAuthError, "tcOAuthError");
            this.f10007a = tcOAuthError;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof FailureResponse) && l.a(this.f10007a, ((FailureResponse) obj).f10007a);
            }
            return true;
        }

        public int hashCode() {
            TcOAuthError tcOAuthError = this.f10007a;
            return tcOAuthError != null ? tcOAuthError.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("FailureResponse(tcOAuthError=");
            m8728C.append(this.f10007a);
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeParcelable(this.f10007a, i);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse.class */
    public static final class SuccessResponse extends OAuthResponse {
        public static final Parcelable.Creator<SuccessResponse> CREATOR = new C2868a();

        /* renamed from: a */
        public final TcOAuthData f10008a;

        /* renamed from: com.truecaller.android.sdk.oAuth.OAuthResponse$SuccessResponse$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/OAuthResponse$SuccessResponse$a.class */
        public static final class C2868a implements Parcelable.Creator<SuccessResponse> {
            @Override // android.os.Parcelable.Creator
            public SuccessResponse createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new SuccessResponse(TcOAuthData.CREATOR.createFromParcel(parcel));
            }

            @Override // android.os.Parcelable.Creator
            public SuccessResponse[] newArray(int i) {
                return new SuccessResponse[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SuccessResponse(TcOAuthData tcOAuthData) {
            super(true, null);
            l.e(tcOAuthData, "tcOAuthData");
            this.f10008a = tcOAuthData;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof SuccessResponse) && l.a(this.f10008a, ((SuccessResponse) obj).f10008a);
            }
            return true;
        }

        public int hashCode() {
            TcOAuthData tcOAuthData = this.f10008a;
            return tcOAuthData != null ? tcOAuthData.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SuccessResponse(tcOAuthData=");
            m8728C.append(this.f10008a);
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            this.f10008a.writeToParcel(parcel, 0);
        }
    }

    /* renamed from: com.truecaller.android.sdk.oAuth.OAuthResponse$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/OAuthResponse$a.class */
    public static final class C2869a {
        public C2869a(f fVar) {
        }
    }

    private OAuthResponse(boolean z) {
        this.isSuccessful = z;
    }

    public /* synthetic */ OAuthResponse(boolean z, f fVar) {
        this(z);
    }

    public final boolean isSuccessful() {
        return this.isSuccessful;
    }
}
