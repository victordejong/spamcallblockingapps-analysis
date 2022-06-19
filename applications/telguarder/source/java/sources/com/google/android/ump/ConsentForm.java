package com.google.android.ump;

import android.app.Activity;
/* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentForm.class */
public interface ConsentForm {

    /* loaded from: classes2-dex2jar.jar:com/google/android/ump/ConsentForm$OnConsentFormDismissedListener.class */
    public interface OnConsentFormDismissedListener {
        void onConsentFormDismissed(FormError formError);
    }

    void show(Activity activity, OnConsentFormDismissedListener onConsentFormDismissedListener);
}
