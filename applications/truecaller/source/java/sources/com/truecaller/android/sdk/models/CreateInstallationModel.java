package com.truecaller.android.sdk.models;

import android.os.Build;
import com.freshchat.consumer.sdk.beans.User;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/models/CreateInstallationModel.class */
public class CreateInstallationModel {
    public static final int ATTEMPT_1 = 1;
    public static final int ATTEMPT_2 = 2;
    private static final int CLIENT_ID = 15;
    private static final String CLIENT_OS = "android";
    private static final List<String> EMPTY_SIM_SERIALS;
    @b("countryCodeName")
    public final String countryCodeName;
    @b("deviceId")
    public final String deviceId;
    @b("hasTruecaller")
    public final boolean hasTruecaller;
    @b("phoneNumber")
    public final String phoneNumber;
    @b("phonePermission")
    private boolean phonePermission;
    @b("sequence")
    @VerificationAttempts
    private int verificationAttempt;
    @b("language")
    private final String language = Locale.getDefault().getLanguage();
    @b("clientId")
    private final int clientId = 15;
    @b(User.DEVICE_META_OS_NAME)

    /* renamed from: os */
    private final String f10006os = "android";
    @b("version")
    private final String version = Build.VERSION.RELEASE;
    @b("simSerial")
    public List<String> simSerialNumbers = EMPTY_SIM_SERIALS;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/models/CreateInstallationModel$VerificationAttempts.class */
    public @interface VerificationAttempts {
    }

    static {
        ArrayList arrayList = new ArrayList(1);
        EMPTY_SIM_SERIALS = arrayList;
        arrayList.add("");
    }

    public CreateInstallationModel(String str, String str2, String str3, boolean z) {
        this.phoneNumber = str2;
        this.countryCodeName = str;
        this.deviceId = str3;
        this.hasTruecaller = z;
    }

    public void setPhonePermission(boolean z) {
        this.phonePermission = z;
    }

    public void setSimSerialNumbers(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.simSerialNumbers = list;
    }

    public void setVerificationAttempt(@VerificationAttempts int i) {
        this.verificationAttempt = i;
    }
}
