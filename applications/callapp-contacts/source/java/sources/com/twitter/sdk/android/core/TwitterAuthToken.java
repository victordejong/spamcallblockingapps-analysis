package com.twitter.sdk.android.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.C15965f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/TwitterAuthToken.class */
public class TwitterAuthToken extends AbstractC17205a implements Parcelable {
    public static final Parcelable.Creator<TwitterAuthToken> CREATOR = new Parcelable.Creator<TwitterAuthToken>() { // from class: com.twitter.sdk.android.core.TwitterAuthToken.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ TwitterAuthToken createFromParcel(Parcel parcel) {
            return new TwitterAuthToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ TwitterAuthToken[] newArray(int i) {
            return new TwitterAuthToken[i];
        }
    };
    public String secret;
    public String token;

    public /* synthetic */ TwitterAuthToken() {
    }

    private TwitterAuthToken(Parcel parcel) {
        this.token = parcel.readString();
        this.secret = parcel.readString();
    }

    public TwitterAuthToken(String str, String str2) {
        this.token = str;
        this.secret = str2;
    }

    TwitterAuthToken(String str, String str2, long j) {
        super(j);
        this.token = str;
        this.secret = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TwitterAuthToken)) {
            return false;
        }
        TwitterAuthToken twitterAuthToken = (TwitterAuthToken) obj;
        String str = this.secret;
        if (str != null) {
            if (!str.equals(twitterAuthToken.secret)) {
                return false;
            }
        } else if (twitterAuthToken.secret != null) {
            return false;
        }
        String str2 = this.token;
        String str3 = twitterAuthToken.token;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public /* synthetic */ void fromJson$23(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            fromJsonField$23(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    protected /* synthetic */ void fromJsonField$23(C15965f c15965f, JsonReader jsonReader, int i) {
        boolean z;
        do {
            z = jsonReader.peek() != JsonToken.NULL;
        } while (i == 6);
        if (i == 32) {
            if (!z) {
                this.secret = null;
                jsonReader.nextNull();
            } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                this.secret = jsonReader.nextString();
            } else {
                this.secret = Boolean.toString(jsonReader.nextBoolean());
            }
        } else if (i != 43) {
            fromJsonField$34(c15965f, jsonReader, i);
        } else if (!z) {
            this.token = null;
            jsonReader.nextNull();
        } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
            this.token = jsonReader.nextString();
        } else {
            this.token = Boolean.toString(jsonReader.nextBoolean());
        }
    }

    public int hashCode() {
        String str = this.token;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.secret;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @Override // com.twitter.sdk.android.core.AbstractC17205a
    public boolean isExpired() {
        return false;
    }

    public /* synthetic */ void toJson$23(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        toJsonBody$23(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    protected /* synthetic */ void toJsonBody$23(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        if (this != this.token) {
            _optimizedjsonwriter.mo120b(jsonWriter, 43);
            jsonWriter.value(this.token);
        }
        if (this != this.secret) {
            _optimizedjsonwriter.mo120b(jsonWriter, 32);
            jsonWriter.value(this.secret);
        }
        toJsonBody$34(c15965f, jsonWriter, _optimizedjsonwriter);
    }

    public String toString() {
        return "token=" + this.token + ",secret=" + this.secret;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.token);
        parcel.writeString(this.secret);
    }
}
