package com.clevertap.android.sdk.inbox;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.tenor.android.core.constant.ContentFormat;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inbox/CTInboxMessageContent.class */
public class CTInboxMessageContent implements Parcelable {
    public static final Parcelable.Creator<CTInboxMessageContent> CREATOR = new C0886a();

    /* renamed from: a */
    public String f2388a;

    /* renamed from: b */
    public String f2389b;

    /* renamed from: c */
    public Boolean f2390c;

    /* renamed from: d */
    public Boolean f2391d;

    /* renamed from: e */
    public String f2392e;

    /* renamed from: f */
    public JSONArray f2393f;

    /* renamed from: g */
    public String f2394g;

    /* renamed from: h */
    public String f2395h;

    /* renamed from: i */
    public String f2396i;

    /* renamed from: j */
    public String f2397j;

    /* renamed from: k */
    public String f2398k;

    /* renamed from: l */
    public String f2399l;

    /* renamed from: com.clevertap.android.sdk.inbox.CTInboxMessageContent$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inbox/CTInboxMessageContent$a.class */
    public class C0886a implements Parcelable.Creator<CTInboxMessageContent> {
        @Override // android.os.Parcelable.Creator
        public CTInboxMessageContent createFromParcel(Parcel parcel) {
            return new CTInboxMessageContent(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CTInboxMessageContent[] newArray(int i) {
            return new CTInboxMessageContent[i];
        }
    }

    public CTInboxMessageContent() {
    }

    public CTInboxMessageContent(Parcel parcel) {
        this.f2398k = parcel.readString();
        this.f2399l = parcel.readString();
        this.f2395h = parcel.readString();
        this.f2396i = parcel.readString();
        this.f2394g = parcel.readString();
        this.f2391d = Boolean.valueOf(parcel.readByte() != 0);
        this.f2390c = Boolean.valueOf(parcel.readByte() != 0);
        this.f2388a = parcel.readString();
        this.f2392e = parcel.readString();
        try {
            this.f2393f = parcel.readByte() == 0 ? null : new JSONArray(parcel.readString());
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
        this.f2389b = parcel.readString();
        this.f2397j = parcel.readString();
    }

    /* renamed from: a */
    public String m42057a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.has("bg") ? jSONObject.getString("bg") : "";
        } catch (JSONException e) {
            e.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: b */
    public String m42056b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.has(RemoteMessageConst.Notification.COLOR) ? jSONObject.getString(RemoteMessageConst.Notification.COLOR) : "";
        } catch (JSONException e) {
            e.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: c */
    public String m42055c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.has("text") ? jSONObject.getString("text") : "";
        } catch (JSONException e) {
            e.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: d */
    public String m42054d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return jSONObject.has("type") ? jSONObject.getString("type") : "";
        } catch (JSONException e) {
            e.getLocalizedMessage();
            return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public CTInboxMessageContent m42053e(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.has("title") ? jSONObject.getJSONObject("title") : null;
            String str = "";
            if (jSONObject2 != null) {
                this.f2398k = jSONObject2.has("text") ? jSONObject2.getString("text") : "";
                this.f2399l = jSONObject2.has(RemoteMessageConst.Notification.COLOR) ? jSONObject2.getString(RemoteMessageConst.Notification.COLOR) : "";
            }
            JSONObject jSONObject3 = jSONObject.has("message") ? jSONObject.getJSONObject("message") : null;
            if (jSONObject3 != null) {
                this.f2395h = jSONObject3.has("text") ? jSONObject3.getString("text") : "";
                this.f2396i = jSONObject3.has(RemoteMessageConst.Notification.COLOR) ? jSONObject3.getString(RemoteMessageConst.Notification.COLOR) : "";
            }
            JSONObject jSONObject4 = jSONObject.has(RemoteMessageConst.Notification.ICON) ? jSONObject.getJSONObject(RemoteMessageConst.Notification.ICON) : null;
            if (jSONObject4 != null) {
                this.f2392e = jSONObject4.has("url") ? jSONObject4.getString("url") : "";
            }
            JSONObject jSONObject5 = jSONObject.has("media") ? jSONObject.getJSONObject("media") : null;
            if (jSONObject5 != null) {
                this.f2394g = jSONObject5.has("url") ? jSONObject5.getString("url") : "";
                this.f2389b = jSONObject5.has("content_type") ? jSONObject5.getString("content_type") : "";
                this.f2397j = jSONObject5.has("poster") ? jSONObject5.getString("poster") : "";
            }
            JSONObject jSONObject6 = jSONObject.has("action") ? jSONObject.getJSONObject("action") : null;
            if (jSONObject6 != null) {
                this.f2391d = Boolean.valueOf(jSONObject6.has("hasUrl") && jSONObject6.getBoolean("hasUrl"));
                this.f2390c = Boolean.valueOf(jSONObject6.has("hasLinks") && jSONObject6.getBoolean("hasLinks"));
                JSONObject jSONObject7 = jSONObject6.has("url") ? jSONObject6.getJSONObject("url") : null;
                if (jSONObject7 != null && this.f2391d.booleanValue()) {
                    JSONObject jSONObject8 = jSONObject7.has(Constants.ANDROID_PLATFORM) ? jSONObject7.getJSONObject(Constants.ANDROID_PLATFORM) : null;
                    if (jSONObject8 != null) {
                        if (jSONObject8.has("text")) {
                            str = jSONObject8.getString("text");
                        }
                        this.f2388a = str;
                    }
                }
                if (jSONObject7 != null && this.f2390c.booleanValue()) {
                    this.f2393f = jSONObject6.has("links") ? jSONObject6.getJSONArray("links") : null;
                }
            }
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
        return this;
    }

    /* renamed from: f */
    public boolean m42052f() {
        String str = this.f2389b;
        return (str == null || this.f2394g == null || !str.startsWith("audio")) ? false : true;
    }

    /* renamed from: g */
    public boolean m42051g() {
        String str = this.f2389b;
        return (str == null || this.f2394g == null || !str.equals(ContentFormat.IMAGE_GIF)) ? false : true;
    }

    /* renamed from: h */
    public boolean m42050h() {
        String str = this.f2389b;
        return str != null && this.f2394g != null && str.startsWith("image") && !str.equals(ContentFormat.IMAGE_GIF);
    }

    /* renamed from: i */
    public boolean m42049i() {
        String str = this.f2389b;
        return (str == null || this.f2394g == null || !str.startsWith("video")) ? false : true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2398k);
        parcel.writeString(this.f2399l);
        parcel.writeString(this.f2395h);
        parcel.writeString(this.f2396i);
        parcel.writeString(this.f2394g);
        parcel.writeByte(this.f2391d.booleanValue() ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2390c.booleanValue() ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f2388a);
        parcel.writeString(this.f2392e);
        if (this.f2393f == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2393f.toString());
        }
        parcel.writeString(this.f2389b);
        parcel.writeString(this.f2397j);
    }
}
