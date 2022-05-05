package com.apptentive.android.sdk.partners.apptimize;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/partners/apptimize/ApptentiveApptimizeTestInfo.class */
public class ApptentiveApptimizeTestInfo {
    private final String enrolledVariantName;
    private final boolean participated;
    private final String testName;

    public ApptentiveApptimizeTestInfo(String str, String str2, boolean z) {
        this.testName = str;
        this.enrolledVariantName = str2;
        this.participated = z;
    }

    public String getEnrolledVariantName() {
        return this.enrolledVariantName;
    }

    public String getTestName() {
        return this.testName;
    }

    public boolean userHasParticipated() {
        return this.participated;
    }
}
