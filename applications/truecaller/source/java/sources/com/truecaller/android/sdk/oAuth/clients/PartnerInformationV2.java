package com.truecaller.android.sdk.oAuth.clients;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.Locale;
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/clients/PartnerInformationV2.class */
public class PartnerInformationV2 implements Parcelable {
    public static final Parcelable.Creator<PartnerInformationV2> CREATOR = new C2884a();
    private final String appFingerprint;
    private final String clientId;
    private final String codeChallenge;
    private final Locale locale;
    private final String packageName;
    private final String[] scopes;
    private final String sdkVariant;
    private final String sdkVariantVersion;
    private final String state;
    private final String trueSdkVersion;

    /* renamed from: com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/clients/PartnerInformationV2$a.class */
    public class C2884a implements Parcelable.Creator<PartnerInformationV2> {
        @Override // android.os.Parcelable.Creator
        public PartnerInformationV2 createFromParcel(Parcel parcel) {
            return new PartnerInformationV2(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PartnerInformationV2[] newArray(int i) {
            return new PartnerInformationV2[i];
        }
    }

    public PartnerInformationV2(Parcel parcel) {
        this.clientId = parcel.readString();
        this.packageName = parcel.readString();
        this.appFingerprint = parcel.readString();
        this.trueSdkVersion = parcel.readString();
        this.codeChallenge = parcel.readString();
        this.locale = (Locale) parcel.readSerializable();
        this.sdkVariant = parcel.readString();
        this.sdkVariantVersion = parcel.readString();
        this.scopes = parcel.createStringArray();
        this.state = parcel.readString();
    }

    public PartnerInformationV2(String str, String str2, String str3, String str4, Locale locale, String str5, String str6, String str7, String[] strArr, String str8) {
        this.clientId = str2;
        this.packageName = str3;
        this.appFingerprint = str4;
        this.trueSdkVersion = str;
        this.codeChallenge = str7;
        this.locale = locale;
        this.sdkVariant = str5;
        this.sdkVariantVersion = str6;
        this.scopes = strArr;
        this.state = str8;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAppFingerprint() {
        return this.appFingerprint;
    }

    public String getClientId() {
        return this.clientId;
    }

    public String getCodeChallenge() {
        return this.codeChallenge;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String[] getScopes() {
        return this.scopes;
    }

    public String getSdkVariant() {
        return this.sdkVariant;
    }

    public String getSdkVariantVersion() {
        return this.sdkVariantVersion;
    }

    public String getState() {
        return this.state;
    }

    public String getTrueSdkVersion() {
        return this.trueSdkVersion;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.clientId);
        parcel.writeString(this.packageName);
        parcel.writeString(this.appFingerprint);
        parcel.writeString(this.trueSdkVersion);
        parcel.writeString(this.codeChallenge);
        parcel.writeSerializable(this.locale);
        parcel.writeString(this.sdkVariant);
        parcel.writeString(this.sdkVariantVersion);
        parcel.writeStringArray(this.scopes);
        parcel.writeString(this.state);
    }
}
