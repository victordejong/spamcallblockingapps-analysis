package com.callapp.contacts.util;

import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DeviceDetector.class */
public class DeviceDetector {
    public static boolean isSamsung() {
        return "samsung".equalsIgnoreCase(Build.MANUFACTURER);
    }
}
