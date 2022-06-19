package com.google.android.ump;

import android.app.Activity;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentInformation.class */
public interface ConsentInformation {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentInformation$ConsentStatus.class */
    public @interface ConsentStatus {
        public static final int NOT_REQUIRED = 1;
        public static final int OBTAINED = 3;
        public static final int REQUIRED = 2;
        public static final int UNKNOWN = 0;
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentInformation$ConsentType.class */
    public @interface ConsentType {
        public static final int NON_PERSONALIZED = 1;
        public static final int PERSONALIZED = 2;
        public static final int UNKNOWN = 0;
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener.class */
    public interface OnConsentInfoUpdateFailureListener {
        void onConsentInfoUpdateFailure(FormError formError);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener.class */
    public interface OnConsentInfoUpdateSuccessListener {
        void onConsentInfoUpdateSuccess();
    }

    int getConsentStatus();

    int getConsentType();

    boolean isConsentFormAvailable();

    void requestConsentInfoUpdate(Activity activity, ConsentRequestParameters consentRequestParameters, OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener, OnConsentInfoUpdateFailureListener onConsentInfoUpdateFailureListener);

    void reset();
}
