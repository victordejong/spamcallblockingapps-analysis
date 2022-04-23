package com.twitter.sdk.android.core.internal.oauth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.twitter.sdk.android.core.a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth2Token.class */
public class OAuth2Token extends a implements Parcelable {
    public static final Parcelable.Creator<OAuth2Token> CREATOR = new Parcelable.Creator<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Token.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ OAuth2Token createFromParcel(Parcel parcel) {
            return new OAuth2Token(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ OAuth2Token[] newArray(int i) {
            return new OAuth2Token[i];
        }
    };
    public static final String TOKEN_TYPE_BEARER = "bearer";
    private String accessToken;
    private String tokenType;

    public /* synthetic */ OAuth2Token() {
    }

    private OAuth2Token(Parcel parcel) {
        this.tokenType = parcel.readString();
        this.accessToken = parcel.readString();
    }

    public OAuth2Token(String str, String str2) {
        this.tokenType = str;
        this.accessToken = str2;
    }

    public OAuth2Token(String str, String str2, long j) {
        super(j);
        this.tokenType = str;
        this.accessToken = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OAuth2Token oAuth2Token = (OAuth2Token) obj;
        String str = this.accessToken;
        if (str != null) {
            if (!str.equals(oAuth2Token.accessToken)) {
                return false;
            }
        } else if (oAuth2Token.accessToken != null) {
            return false;
        }
        String str2 = this.tokenType;
        String str3 = oAuth2Token.tokenType;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public /* synthetic */ void fromJson$5(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$5(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$5(f fVar, JsonReader jsonReader, int i) {
        while (true) {
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (i != 6) {
                if (i != 22) {
                    if (i != 77) {
                        if (i != 90) {
                            fromJsonField$34(fVar, jsonReader, i);
                            return;
                        }
                    } else if (!z) {
                        this.tokenType = null;
                        jsonReader.nextNull();
                        return;
                    } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                        this.tokenType = jsonReader.nextString();
                        return;
                    } else {
                        this.tokenType = Boolean.toString(jsonReader.nextBoolean());
                        return;
                    }
                } else if (!z) {
                    this.accessToken = null;
                    jsonReader.nextNull();
                    return;
                } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                    this.accessToken = jsonReader.nextString();
                    return;
                } else {
                    this.accessToken = Boolean.toString(jsonReader.nextBoolean());
                    return;
                }
            }
        }
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public String getTokenType() {
        return this.tokenType;
    }

    public int hashCode() {
        String str = this.tokenType;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.accessToken;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @Override // com.twitter.sdk.android.core.a
    public boolean isExpired() {
        return false;
    }

    public /* synthetic */ void toJson$5(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$5(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$5(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.tokenType) {
            _optimizedjsonwriter.b(jsonWriter, 77);
            jsonWriter.value(this.tokenType);
        }
        if (this != this.accessToken) {
            _optimizedjsonwriter.b(jsonWriter, 22);
            jsonWriter.value(this.accessToken);
        }
        toJsonBody$34(fVar, jsonWriter, _optimizedjsonwriter);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.tokenType);
        parcel.writeString(this.accessToken);
    }
}
