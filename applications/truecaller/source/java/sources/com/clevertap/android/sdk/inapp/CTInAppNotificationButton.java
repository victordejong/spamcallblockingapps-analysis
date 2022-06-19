package com.clevertap.android.sdk.inapp;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotificationButton.class */
public class CTInAppNotificationButton implements Parcelable {
    public static final Parcelable.Creator<CTInAppNotificationButton> CREATOR = new C0883a();

    /* renamed from: a */
    public String f2357a;

    /* renamed from: b */
    public String f2358b;

    /* renamed from: c */
    public String f2359c;

    /* renamed from: d */
    public String f2360d;

    /* renamed from: e */
    public String f2361e;

    /* renamed from: f */
    public JSONObject f2362f;

    /* renamed from: g */
    public HashMap<String, String> f2363g;

    /* renamed from: h */
    public String f2364h;

    /* renamed from: i */
    public String f2365i;

    /* renamed from: com.clevertap.android.sdk.inapp.CTInAppNotificationButton$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotificationButton$a.class */
    public class C0883a implements Parcelable.Creator<CTInAppNotificationButton> {
        @Override // android.os.Parcelable.Creator
        public CTInAppNotificationButton createFromParcel(Parcel parcel) {
            return new CTInAppNotificationButton(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CTInAppNotificationButton[] newArray(int i) {
            return new CTInAppNotificationButton[i];
        }
    }

    public CTInAppNotificationButton() {
    }

    public CTInAppNotificationButton(Parcel parcel) {
        this.f2364h = parcel.readString();
        this.f2365i = parcel.readString();
        this.f2358b = parcel.readString();
        this.f2357a = parcel.readString();
        this.f2359c = parcel.readString();
        this.f2360d = parcel.readString();
        try {
            this.f2362f = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f2361e = parcel.readString();
        this.f2363g = parcel.readHashMap(null);
    }

    /* renamed from: a */
    public CTInAppNotificationButton m42064a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        Iterator<String> keys;
        try {
            this.f2362f = jSONObject;
            this.f2364h = jSONObject.has("text") ? jSONObject.getString("text") : "";
            this.f2365i = jSONObject.has(RemoteMessageConst.Notification.COLOR) ? jSONObject.getString(RemoteMessageConst.Notification.COLOR) : "#0000FF";
            this.f2358b = jSONObject.has("bg") ? jSONObject.getString("bg") : "#FFFFFF";
            String str = "#FFFFFF";
            if (jSONObject.has("border")) {
                str = jSONObject.getString("border");
            }
            this.f2359c = str;
            this.f2360d = jSONObject.has("radius") ? jSONObject.getString("radius") : "";
            JSONObject jSONObject3 = jSONObject.has("actions") ? jSONObject.getJSONObject("actions") : null;
            if (jSONObject3 != null) {
                String str2 = "";
                if (jSONObject3.has(Constants.ANDROID_PLATFORM)) {
                    str2 = jSONObject3.getString(Constants.ANDROID_PLATFORM);
                }
                if (!str2.isEmpty()) {
                    this.f2357a = str2;
                }
            }
            if ((jSONObject3 != null && jSONObject3.has("type") && "kv".equalsIgnoreCase(jSONObject3.getString("type")) && jSONObject3.has("kv")) && (jSONObject2 = jSONObject3.getJSONObject("kv")) != null && (keys = jSONObject2.keys()) != null) {
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject2.getString(next);
                    if (!TextUtils.isEmpty(next)) {
                        if (this.f2363g == null) {
                            this.f2363g = new HashMap<>();
                        }
                        this.f2363g.put(next, string);
                    }
                }
            }
        } catch (JSONException e) {
            this.f2361e = "Invalid JSON";
        }
        return this;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2364h);
        parcel.writeString(this.f2365i);
        parcel.writeString(this.f2358b);
        parcel.writeString(this.f2357a);
        parcel.writeString(this.f2359c);
        parcel.writeString(this.f2360d);
        if (this.f2362f == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2362f.toString());
        }
        parcel.writeString(this.f2361e);
        parcel.writeMap(this.f2363g);
    }
}
