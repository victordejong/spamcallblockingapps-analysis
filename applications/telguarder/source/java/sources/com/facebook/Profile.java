package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/Profile.class */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator<Profile>() { // from class: com.facebook.Profile.2
        @Override // android.os.Parcelable.Creator
        public Profile createFromParcel(Parcel parcel) {
            return new Profile(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    };
    private static final String FIRST_NAME_KEY = "first_name";
    private static final String ID_KEY = "id";
    private static final String LAST_NAME_KEY = "last_name";
    private static final String LINK_URI_KEY = "link_uri";
    private static final String MIDDLE_NAME_KEY = "middle_name";
    private static final String NAME_KEY = "name";
    private static final String TAG = "Profile";
    private final String firstName;

    /* renamed from: id */
    private final String f88id;
    private final String lastName;
    private final Uri linkUri;
    private final String middleName;
    private final String name;

    private Profile(Parcel parcel) {
        this.f88id = parcel.readString();
        this.firstName = parcel.readString();
        this.middleName = parcel.readString();
        this.lastName = parcel.readString();
        this.name = parcel.readString();
        String readString = parcel.readString();
        this.linkUri = readString == null ? null : Uri.parse(readString);
    }

    public Profile(String str, String str2, String str3, String str4, String str5, Uri uri) {
        Validate.notNullOrEmpty(str, "id");
        this.f88id = str;
        this.firstName = str2;
        this.middleName = str3;
        this.lastName = str4;
        this.name = str5;
        this.linkUri = uri;
    }

    public Profile(JSONObject jSONObject) {
        this.f88id = jSONObject.optString("id", null);
        this.firstName = jSONObject.optString(FIRST_NAME_KEY, null);
        this.middleName = jSONObject.optString(MIDDLE_NAME_KEY, null);
        this.lastName = jSONObject.optString(LAST_NAME_KEY, null);
        this.name = jSONObject.optString("name", null);
        String optString = jSONObject.optString(LINK_URI_KEY, null);
        this.linkUri = optString == null ? null : Uri.parse(optString);
    }

    public static void fetchProfileForCurrentAccessToken() {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (!AccessToken.isCurrentAccessTokenActive()) {
            setCurrentProfile(null);
        } else {
            Utility.getGraphMeRequestWithCacheAsync(currentAccessToken.getToken(), new Utility.GraphMeRequestWithCacheCallback() { // from class: com.facebook.Profile.1
                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void onFailure(FacebookException facebookException) {
                    String str = Profile.TAG;
                    Log.e(str, "Got unexpected exception: " + facebookException);
                }

                @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
                public void onSuccess(JSONObject jSONObject) {
                    String optString = jSONObject.optString("id");
                    if (optString == null) {
                        Log.w(Profile.TAG, "No user ID returned on Me request");
                        return;
                    }
                    String optString2 = jSONObject.optString("link");
                    Profile.setCurrentProfile(new Profile(optString, jSONObject.optString(Profile.FIRST_NAME_KEY), jSONObject.optString(Profile.MIDDLE_NAME_KEY), jSONObject.optString(Profile.LAST_NAME_KEY), jSONObject.optString("name"), optString2 != null ? Uri.parse(optString2) : null));
                }
            });
        }
    }

    public static Profile getCurrentProfile() {
        return ProfileManager.getInstance().getCurrentProfile();
    }

    public static void setCurrentProfile(Profile profile) {
        ProfileManager.getInstance().setCurrentProfile(profile);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        Profile profile = (Profile) obj;
        String str = this.f88id;
        if (str != null ? str.equals(profile.f88id) : profile.f88id == null) {
            String str2 = this.firstName;
            if (str2 != null ? str2.equals(profile.firstName) : profile.firstName == null) {
                String str3 = this.middleName;
                if (str3 != null ? str3.equals(profile.middleName) : profile.middleName == null) {
                    String str4 = this.lastName;
                    if (str4 != null ? str4.equals(profile.lastName) : profile.lastName == null) {
                        String str5 = this.name;
                        if (str5 != null ? str5.equals(profile.name) : profile.name == null) {
                            Uri uri = this.linkUri;
                            Uri uri2 = profile.linkUri;
                            if (uri != null) {
                            }
                        }
                    }
                }
            }
        }
        z = false;
        return z;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public String getId() {
        return this.f88id;
    }

    public String getLastName() {
        return this.lastName;
    }

    public Uri getLinkUri() {
        return this.linkUri;
    }

    public String getMiddleName() {
        return this.middleName;
    }

    public String getName() {
        return this.name;
    }

    public Uri getProfilePictureUri(int i, int i2) {
        return ImageRequest.getProfilePictureUri(this.f88id, i, i2, AccessToken.isCurrentAccessTokenActive() ? AccessToken.getCurrentAccessToken().getToken() : "");
    }

    public int hashCode() {
        int hashCode = 527 + this.f88id.hashCode();
        String str = this.firstName;
        int i = hashCode;
        if (str != null) {
            i = (hashCode * 31) + str.hashCode();
        }
        String str2 = this.middleName;
        int i2 = i;
        if (str2 != null) {
            i2 = (i * 31) + str2.hashCode();
        }
        String str3 = this.lastName;
        int i3 = i2;
        if (str3 != null) {
            i3 = (i2 * 31) + str3.hashCode();
        }
        String str4 = this.name;
        int i4 = i3;
        if (str4 != null) {
            i4 = (i3 * 31) + str4.hashCode();
        }
        Uri uri = this.linkUri;
        int i5 = i4;
        if (uri != null) {
            i5 = (i4 * 31) + uri.hashCode();
        }
        return i5;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", this.f88id);
            jSONObject2.put(FIRST_NAME_KEY, this.firstName);
            jSONObject2.put(MIDDLE_NAME_KEY, this.middleName);
            jSONObject2.put(LAST_NAME_KEY, this.lastName);
            jSONObject2.put("name", this.name);
            Uri uri = this.linkUri;
            jSONObject = jSONObject2;
            if (uri != null) {
                jSONObject2.put(LINK_URI_KEY, uri.toString());
                jSONObject = jSONObject2;
            }
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f88id);
        parcel.writeString(this.firstName);
        parcel.writeString(this.middleName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.name);
        Uri uri = this.linkUri;
        parcel.writeString(uri == null ? null : uri.toString());
    }
}
