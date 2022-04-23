package com.callapp.contacts.util.callappRomHelper.romHelper.base.detector;

import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/detector/RomDetector.class */
public class RomDetector {
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isMIUI() {
        return MIUIDetector.isMIUI();
    }
}
