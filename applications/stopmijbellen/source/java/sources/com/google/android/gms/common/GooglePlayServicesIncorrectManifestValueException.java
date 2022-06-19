package com.google.android.gms.common;

import com.google.android.gms.common.annotation.KeepName;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException.class */
public final class GooglePlayServicesIncorrectManifestValueException extends GooglePlayServicesManifestException {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GooglePlayServicesIncorrectManifestValueException(int r7) {
        /*
            r6 = this;
            r0 = 320(0x140, float:4.48E-43)
            java.lang.String r1 = "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected "
            int r2 = com.google.android.gms.common.GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE
            java.lang.String r3 = " but found "
            r4 = r7
            java.lang.StringBuilder r0 = android.support.p012v4.media.C0082b.m8753i(r0, r1, r2, r3, r4)
            r8 = r0
            r0 = r8
            java.lang.String r1 = ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException.<init>(int):void");
    }
}
