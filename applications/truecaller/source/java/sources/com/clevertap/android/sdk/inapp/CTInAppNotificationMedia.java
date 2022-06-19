package com.clevertap.android.sdk.inapp;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotificationMedia.class */
public class CTInAppNotificationMedia implements Parcelable {
    public static final Parcelable.Creator<CTInAppNotificationMedia> CREATOR = new C0884a();

    /* renamed from: a */
    public int f2366a;

    /* renamed from: b */
    public String f2367b;

    /* renamed from: c */
    public String f2368c;

    /* renamed from: d */
    public String f2369d;

    /* renamed from: com.clevertap.android.sdk.inapp.CTInAppNotificationMedia$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotificationMedia$a.class */
    public class C0884a implements Parcelable.Creator<CTInAppNotificationMedia> {
        @Override // android.os.Parcelable.Creator
        public CTInAppNotificationMedia createFromParcel(Parcel parcel) {
            return new CTInAppNotificationMedia(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CTInAppNotificationMedia[] newArray(int i) {
            return new CTInAppNotificationMedia[i];
        }
    }

    public CTInAppNotificationMedia() {
    }

    public CTInAppNotificationMedia(Parcel parcel, C0884a c0884a) {
        this.f2369d = parcel.readString();
        this.f2368c = parcel.readString();
        this.f2367b = parcel.readString();
        this.f2366a = parcel.readInt();
    }

    /* renamed from: a */
    public CTInAppNotificationMedia m42063a(JSONObject jSONObject, int i) {
        this.f2366a = i;
        try {
            this.f2368c = jSONObject.has("content_type") ? jSONObject.getString("content_type") : "";
            String str = "";
            if (jSONObject.has("url")) {
                str = jSONObject.getString("url");
            }
            if (!str.isEmpty()) {
                if (this.f2368c.startsWith("image")) {
                    this.f2369d = str;
                    if (jSONObject.has(AnalyticsConstants.KEY)) {
                        this.f2367b = UUID.randomUUID().toString() + jSONObject.getString(AnalyticsConstants.KEY);
                    } else {
                        this.f2367b = UUID.randomUUID().toString();
                    }
                } else {
                    this.f2369d = str;
                }
            }
        } catch (JSONException e) {
            e.getLocalizedMessage();
        }
        if (this.f2368c.isEmpty()) {
            return null;
        }
        return this;
    }

    /* renamed from: b */
    public boolean m42062b() {
        String str = this.f2368c;
        return (str == null || this.f2369d == null || !str.startsWith("audio")) ? false : true;
    }

    /* renamed from: c */
    public boolean m42061c() {
        String str = this.f2368c;
        return (str == null || this.f2369d == null || !str.equals(ContentFormat.IMAGE_GIF)) ? false : true;
    }

    /* renamed from: d */
    public boolean m42060d() {
        String str = this.f2368c;
        return str != null && this.f2369d != null && str.startsWith("image") && !str.equals(ContentFormat.IMAGE_GIF);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public boolean m42059e() {
        String str = this.f2368c;
        return (str == null || this.f2369d == null || !str.startsWith("video")) ? false : true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2369d);
        parcel.writeString(this.f2368c);
        parcel.writeString(this.f2367b);
        parcel.writeInt(this.f2366a);
    }
}
