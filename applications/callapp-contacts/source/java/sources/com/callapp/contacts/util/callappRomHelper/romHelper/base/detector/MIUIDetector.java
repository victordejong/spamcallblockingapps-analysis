package com.callapp.contacts.util.callappRomHelper.romHelper.base.detector;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.SysUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector.class */
public class MIUIDetector {

    /* renamed from: a */
    private static Boolean f28194a;

    public static String getMIUIVersionName() {
        return SysUtils.m27144a("ro.miui.ui.version.name");
    }

    public static boolean isMIUI() {
        if (f28194a == null) {
            f28194a = Prefs.f26413de.get();
        }
        if (f28194a == null) {
            f28194a = Boolean.valueOf(StringUtils.m26045b((CharSequence) SysUtils.m27144a("ro.miui.ui.version.code")) || StringUtils.m26045b((CharSequence) SysUtils.m27144a("ro.miui.ui.version.name")) || StringUtils.m26045b((CharSequence) SysUtils.m27144a("ro.miui.internal.storage")));
            Prefs.f26413de.set(f28194a);
        }
        return f28194a.booleanValue();
    }

    public static boolean isMIUIV5() {
        return getMIUIVersionName().toLowerCase().equals("v5");
    }
}
