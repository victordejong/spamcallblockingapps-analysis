package com.truecaller.android.sdk;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import java.util.Locale;
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/TrueProfile.class */
public class TrueProfile implements Parcelable {
    private static final String AVATAR_URL = "TRUEPROFILE_AVATAR_URL";
    private static final String CITY = "TRUEPROFILE_CITY";
    private static final String COMPANY_NAME = "TRUEPROFILE_COMPANY_NAME";
    public static final String COUNTRY_CODE = "TRUEPROFILE_COUNTRY_CODE";
    public static final Parcelable.Creator<TrueProfile> CREATOR = new C2863a();
    public static final String EMAIL = "TRUEPROFILE_EMAIL";
    private static final String FACEBOOK_ID = "TRUEPROFILE_FACEBOOK_ID";
    private static final String FIRST_NAME = "TRUEPROFILE_FIRST_NAME";
    private static final String GENDER = "TRUEPROFILE_GENDER";
    public static final String IS_AMBASSADOR = "TRUEPROFILE_IS_AMBASSADOR";
    private static final String IS_BUSINESS_PROFILE = "TRUEPROFILE_IS_BUSINESS";
    private static final String IS_SIM_CHANGED = "TRUEPROFILE_IS_SIM_CHANGED";
    private static final String IS_TRUENAME = "TRUEPROFILE_IS_TRUENAME";
    private static final String JOB_TITLE = "TRUEPROFILE_JOB_TITLE";
    private static final String LAST_NAME = "TRUEPROFILE_LAST_NAME";
    private static final String PAYLOAD = "TRUEPROFILE_PAYLOAD";
    private static final String PHONE_NUMBER = "TRUEPROFILE_PHONE_NUMBER";
    private static final String REQ_NONCE = "TRUEPROFILE_REQ_NONCE";
    private static final String SIGNATURE = "TRUEPROFILE_SIGNATURE";
    private static final String SIGNATURE_ALGORITHM = "TRUEPROFILE_SIGNATURE_ALGORITHM";
    private static final String STREET = "TRUEPROFILE_STREET";
    private static final String TWITTER_ID = "TRUEPROFILE_TWITTER_ID";
    public static final String URL = "TRUEPROFILE_URL";
    private static final String USER_LOCALE = "TRUEPROFILE_USER_LOCALE";
    private static final String VERIFICATION_MODE = "TRUEPROFILE_VERIFICATION_MODE";
    private static final String VERIFICATION_TIMESTAMP = "TRUEPROFILE_VERIFICATION_TIMESTAMP";
    private static final String ZIP_CODE = "TRUEPROFILE_ZIP_CODE";
    public String accessToken;
    public String avatarUrl;
    public String city;
    public String companyName;
    public String countryCode;
    public String email;
    public String facebookId;
    public String firstName;
    public String gender;
    public boolean isAmbassador;
    public boolean isBusiness;
    public boolean isSimChanged;
    public boolean isTrueName;
    public String jobTitle;
    public String lastName;
    public String payload;
    public String phoneNumber;
    public String requestNonce;
    public String signature;
    public String signatureAlgorithm;
    public String street;
    public String twitterId;
    public String url;
    public Locale userLocale;
    public String verificationMode;
    public long verificationTimestamp;
    public String zipcode;

    @Keep
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/TrueProfile$Builder.class */
    public static final class Builder {
        private String city;
        private String email;
        private final String firstName;
        private String gender;
        private final String lastName;

        public Builder(String str, String str2) {
            this.firstName = str;
            this.lastName = str2;
        }

        public TrueProfile build() {
            return new TrueProfile(this, (C2863a) null);
        }

        public Builder setCity(String str) {
            this.city = str;
            return this;
        }

        public Builder setEmail(String str) {
            this.email = str;
            return this;
        }

        public Builder setGender(String str) {
            this.gender = str;
            return this;
        }
    }

    /* renamed from: com.truecaller.android.sdk.TrueProfile$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/TrueProfile$a.class */
    public class C2863a implements Parcelable.Creator<TrueProfile> {
        @Override // android.os.Parcelable.Creator
        public TrueProfile createFromParcel(Parcel parcel) {
            return new TrueProfile(parcel, (C2863a) null);
        }

        @Override // android.os.Parcelable.Creator
        public TrueProfile[] newArray(int i) {
            return new TrueProfile[i];
        }
    }

    public TrueProfile() {
    }

    public TrueProfile(Bundle bundle) {
        this.firstName = bundle.getString(FIRST_NAME);
        this.lastName = bundle.getString(LAST_NAME);
        this.phoneNumber = bundle.getString(PHONE_NUMBER);
        this.gender = bundle.getString(GENDER);
        this.street = bundle.getString(STREET);
        this.city = bundle.getString(CITY);
        this.zipcode = bundle.getString(ZIP_CODE);
        this.countryCode = bundle.getString(COUNTRY_CODE);
        this.facebookId = bundle.getString(FACEBOOK_ID);
        this.twitterId = bundle.getString(TWITTER_ID);
        this.email = bundle.getString(EMAIL);
        this.url = bundle.getString(URL);
        this.avatarUrl = bundle.getString(AVATAR_URL);
        this.isTrueName = Boolean.valueOf(bundle.getString(IS_TRUENAME)).booleanValue();
        this.isAmbassador = Boolean.valueOf(bundle.getString(IS_AMBASSADOR)).booleanValue();
        this.companyName = bundle.getString(COMPANY_NAME);
        this.jobTitle = bundle.getString(JOB_TITLE);
        this.payload = bundle.getString(PAYLOAD);
        this.signature = bundle.getString(SIGNATURE);
        this.signatureAlgorithm = bundle.getString(SIGNATURE_ALGORITHM);
        this.requestNonce = bundle.getString(REQ_NONCE);
        if (bundle.getString(IS_SIM_CHANGED) != null) {
            this.isSimChanged = Boolean.valueOf(bundle.getString(IS_SIM_CHANGED)).booleanValue();
        }
        if (bundle.getString(VERIFICATION_MODE) != null) {
            this.verificationMode = bundle.getString(VERIFICATION_MODE);
        }
        if (bundle.getString(VERIFICATION_TIMESTAMP) != null) {
            this.verificationTimestamp = Long.parseLong(bundle.getString(VERIFICATION_TIMESTAMP));
        }
        if (bundle.getString(USER_LOCALE) != null) {
            this.userLocale = new Locale(bundle.getString(USER_LOCALE));
        }
        if (bundle.getString(IS_BUSINESS_PROFILE) != null) {
            this.isBusiness = Boolean.parseBoolean(bundle.getString(IS_BUSINESS_PROFILE));
        }
    }

    private TrueProfile(Parcel parcel) {
        this.phoneNumber = parcel.readString();
        this.firstName = parcel.readString();
        this.lastName = parcel.readString();
        this.gender = parcel.readString();
        this.street = parcel.readString();
        this.city = parcel.readString();
        this.zipcode = parcel.readString();
        this.countryCode = parcel.readString();
        this.facebookId = parcel.readString();
        this.twitterId = parcel.readString();
        this.email = parcel.readString();
        this.url = parcel.readString();
        this.avatarUrl = parcel.readString();
        this.isTrueName = Boolean.valueOf(parcel.readString()).booleanValue();
        this.isAmbassador = Boolean.valueOf(parcel.readString()).booleanValue();
        this.companyName = parcel.readString();
        this.jobTitle = parcel.readString();
        this.payload = parcel.readString();
        this.signature = parcel.readString();
    }

    public /* synthetic */ TrueProfile(Parcel parcel, C2863a c2863a) {
        this(parcel);
    }

    private TrueProfile(Builder builder) {
        this.firstName = builder.firstName;
        this.lastName = builder.lastName;
        this.gender = builder.gender;
        this.email = builder.email;
        this.city = builder.city;
    }

    public /* synthetic */ TrueProfile(Builder builder, C2863a c2863a) {
        this(builder);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void writeToBundle(Bundle bundle) {
        bundle.putString(FIRST_NAME, this.firstName);
        bundle.putString(LAST_NAME, this.lastName);
        bundle.putString(PHONE_NUMBER, this.phoneNumber);
        bundle.putString(GENDER, this.gender);
        bundle.putString(STREET, this.street);
        bundle.putString(CITY, this.city);
        bundle.putString(ZIP_CODE, this.zipcode);
        bundle.putString(COUNTRY_CODE, this.countryCode);
        bundle.putString(FACEBOOK_ID, this.facebookId);
        bundle.putString(TWITTER_ID, this.twitterId);
        bundle.putString(EMAIL, this.email);
        bundle.putString(URL, this.url);
        bundle.putString(AVATAR_URL, this.avatarUrl);
        bundle.putString(IS_TRUENAME, String.valueOf(this.isTrueName));
        bundle.putString(IS_AMBASSADOR, String.valueOf(this.isAmbassador));
        bundle.putString(COMPANY_NAME, this.companyName);
        bundle.putString(JOB_TITLE, this.jobTitle);
        bundle.putString(PAYLOAD, this.payload);
        bundle.putString(SIGNATURE, this.signature);
        bundle.putString(SIGNATURE_ALGORITHM, this.signatureAlgorithm);
        bundle.putString(REQ_NONCE, this.requestNonce);
        bundle.putString(IS_SIM_CHANGED, String.valueOf(this.isSimChanged));
        bundle.putString(VERIFICATION_MODE, this.verificationMode);
        bundle.putString(VERIFICATION_TIMESTAMP, String.valueOf(this.verificationTimestamp));
        bundle.putString(USER_LOCALE, this.userLocale.getLanguage());
        bundle.putString(IS_BUSINESS_PROFILE, String.valueOf(this.isBusiness));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.phoneNumber);
        parcel.writeString(this.firstName);
        parcel.writeString(this.lastName);
        parcel.writeString(this.gender);
        parcel.writeString(this.street);
        parcel.writeString(this.city);
        parcel.writeString(this.zipcode);
        parcel.writeString(this.countryCode);
        parcel.writeString(this.facebookId);
        parcel.writeString(this.twitterId);
        parcel.writeString(this.email);
        parcel.writeString(this.url);
        parcel.writeString(this.avatarUrl);
        parcel.writeString(String.valueOf(this.isTrueName));
        parcel.writeString(String.valueOf(this.isAmbassador));
        parcel.writeString(this.companyName);
        parcel.writeString(this.jobTitle);
        parcel.writeString(this.payload);
        parcel.writeString(this.signature);
    }
}
