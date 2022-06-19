package com.clevertap.android.sdk.displayunits.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent.class */
public class CleverTapDisplayUnitContent implements Parcelable {
    public static final Parcelable.Creator<CleverTapDisplayUnitContent> CREATOR = new C0874a();

    /* renamed from: a */
    public String f2290a;

    /* renamed from: b */
    public String f2291b;

    /* renamed from: c */
    public String f2292c;

    /* renamed from: d */
    public String f2293d;

    /* renamed from: e */
    public String f2294e;

    /* renamed from: f */
    public String f2295f;

    /* renamed from: g */
    public String f2296g;

    /* renamed from: h */
    public String f2297h;

    /* renamed from: i */
    public String f2298i;

    /* renamed from: j */
    public String f2299j;

    /* renamed from: com.clevertap.android.sdk.displayunits.model.CleverTapDisplayUnitContent$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/displayunits/model/CleverTapDisplayUnitContent$a.class */
    public class C0874a implements Parcelable.Creator<CleverTapDisplayUnitContent> {
        @Override // android.os.Parcelable.Creator
        public CleverTapDisplayUnitContent createFromParcel(Parcel parcel) {
            return new CleverTapDisplayUnitContent(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CleverTapDisplayUnitContent[] newArray(int i) {
            return new CleverTapDisplayUnitContent[i];
        }
    }

    public CleverTapDisplayUnitContent(Parcel parcel, C0874a c0874a) {
        this.f2298i = parcel.readString();
        this.f2299j = parcel.readString();
        this.f2295f = parcel.readString();
        this.f2296g = parcel.readString();
        this.f2293d = parcel.readString();
        this.f2294e = parcel.readString();
        this.f2291b = parcel.readString();
        this.f2297h = parcel.readString();
        this.f2290a = parcel.readString();
        this.f2292c = parcel.readString();
    }

    public CleverTapDisplayUnitContent(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this.f2298i = str;
        this.f2299j = str2;
        this.f2295f = str3;
        this.f2296g = str4;
        this.f2293d = str5;
        this.f2294e = str6;
        this.f2291b = str7;
        this.f2297h = str8;
        this.f2290a = str9;
        this.f2292c = str10;
    }

    /* renamed from: a */
    public static CleverTapDisplayUnitContent m42079a(JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        try {
            JSONObject jSONObject2 = null;
            JSONObject jSONObject3 = jSONObject.has("title") ? jSONObject.getJSONObject("title") : null;
            if (jSONObject3 != null) {
                str2 = jSONObject3.has("text") ? jSONObject3.getString("text") : "";
                str = jSONObject3.has(RemoteMessageConst.Notification.COLOR) ? jSONObject3.getString(RemoteMessageConst.Notification.COLOR) : "";
            } else {
                str2 = "";
                str = str2;
            }
            JSONObject jSONObject4 = jSONObject.has("message") ? jSONObject.getJSONObject("message") : null;
            if (jSONObject4 != null) {
                str4 = jSONObject4.has("text") ? jSONObject4.getString("text") : "";
                str3 = jSONObject4.has(RemoteMessageConst.Notification.COLOR) ? jSONObject4.getString(RemoteMessageConst.Notification.COLOR) : "";
            } else {
                str4 = "";
                str3 = str4;
            }
            JSONObject jSONObject5 = jSONObject.has(RemoteMessageConst.Notification.ICON) ? jSONObject.getJSONObject(RemoteMessageConst.Notification.ICON) : null;
            if (jSONObject5 != null) {
                str5 = jSONObject5.has("url") ? jSONObject5.getString("url") : "";
            } else {
                str5 = "";
            }
            JSONObject jSONObject6 = jSONObject.has("media") ? jSONObject.getJSONObject("media") : null;
            if (jSONObject6 != null) {
                String string = jSONObject6.has("url") ? jSONObject6.getString("url") : "";
                String string2 = jSONObject6.has("content_type") ? jSONObject6.getString("content_type") : "";
                str6 = jSONObject6.has("poster") ? jSONObject6.getString("poster") : "";
                String str9 = string2;
                str8 = string;
                str7 = str9;
            } else {
                str8 = "";
                str7 = str8;
                str6 = str7;
            }
            JSONObject jSONObject7 = jSONObject.has("action") ? jSONObject.getJSONObject("action") : null;
            String str10 = "";
            if (jSONObject7 != null) {
                JSONObject jSONObject8 = jSONObject7.has("url") ? jSONObject7.getJSONObject("url") : null;
                str10 = "";
                if (jSONObject8 != null) {
                    if (jSONObject8.has(Constants.ANDROID_PLATFORM)) {
                        jSONObject2 = jSONObject8.getJSONObject(Constants.ANDROID_PLATFORM);
                    }
                    str10 = "";
                    if (jSONObject2 != null) {
                        str10 = "";
                        if (jSONObject2.has("text")) {
                            str10 = jSONObject2.getString("text");
                        }
                    }
                }
            }
            return new CleverTapDisplayUnitContent(str2, str, str4, str3, str5, str8, str7, str6, str10, null);
        } catch (Exception e) {
            e.getLocalizedMessage();
            StringBuilder m8728C = C22128a.m8728C("Error Creating DisplayUnit Content from JSON : ");
            m8728C.append(e.getLocalizedMessage());
            return new CleverTapDisplayUnitContent("", "", "", "", "", "", "", "", "", m8728C.toString());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[ title:");
        m8728C.append(this.f2298i);
        m8728C.append(", titleColor:");
        m8728C.append(this.f2299j);
        m8728C.append(" message:");
        m8728C.append(this.f2295f);
        m8728C.append(", messageColor:");
        m8728C.append(this.f2296g);
        m8728C.append(", media:");
        m8728C.append(this.f2294e);
        m8728C.append(", contentType:");
        m8728C.append(this.f2291b);
        m8728C.append(", posterUrl:");
        m8728C.append(this.f2297h);
        m8728C.append(", actionUrl:");
        m8728C.append(this.f2290a);
        m8728C.append(", icon:");
        m8728C.append(this.f2293d);
        m8728C.append(", error:");
        return C22128a.m8618h(m8728C, this.f2292c, " ]");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2298i);
        parcel.writeString(this.f2299j);
        parcel.writeString(this.f2295f);
        parcel.writeString(this.f2296g);
        parcel.writeString(this.f2293d);
        parcel.writeString(this.f2294e);
        parcel.writeString(this.f2291b);
        parcel.writeString(this.f2297h);
        parcel.writeString(this.f2290a);
        parcel.writeString(this.f2292c);
    }
}
