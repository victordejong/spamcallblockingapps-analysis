package com.callapp.contacts.util.callappRomHelper.romHelper.base.detector;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.SysUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector.class */
public class MIUIDetector {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f16177a;

    public static String getMIUIVersionName() {
        return SysUtils.a("ro.miui.ui.version.name");
    }

    public static boolean isMIUI() {
        if (f16177a == null) {
            f16177a = Prefs.de.get();
        }
        if (f16177a == null) {
            f16177a = Boolean.valueOf(StringUtils.b((CharSequence) SysUtils.a("ro.miui.ui.version.code")) || StringUtils.b((CharSequence) SysUtils.a("ro.miui.ui.version.name")) || StringUtils.b((CharSequence) SysUtils.a("ro.miui.internal.storage")));
            Prefs.de.set(f16177a);
        }
        return f16177a.booleanValue();
    }

    public static boolean isMIUIV5() {
        return getMIUIVersionName().toLowerCase().equals("v5");
    }
}
