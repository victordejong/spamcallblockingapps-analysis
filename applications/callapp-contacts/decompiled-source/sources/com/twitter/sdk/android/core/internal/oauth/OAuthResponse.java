package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.twitter.sdk.android.core.TwitterAuthToken;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuthResponse.class */
public class OAuthResponse implements Parcelable {
    public static final Parcelable.Creator<OAuthResponse> CREATOR = new Parcelable.Creator<OAuthResponse>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuthResponse.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ OAuthResponse createFromParcel(Parcel parcel) {
            return new OAuthResponse(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ OAuthResponse[] newArray(int i) {
            return new OAuthResponse[i];
        }
    };
    public final TwitterAuthToken authToken;
    public final long userId;
    public final String userName;

    private OAuthResponse(Parcel parcel) {
        this.authToken = (TwitterAuthToken) parcel.readParcelable(TwitterAuthToken.class.getClassLoader());
        this.userName = parcel.readString();
        this.userId = parcel.readLong();
    }

    public OAuthResponse(TwitterAuthToken twitterAuthToken, String str, long j) {
        this.authToken = twitterAuthToken;
        this.userName = str;
        this.userId = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "authToken=" + this.authToken + ",userName=" + this.userName + ",userId=" + this.userId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.authToken, i);
        parcel.writeString(this.userName);
        parcel.writeLong(this.userId);
    }
}
