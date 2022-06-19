package com.callapp.contacts.util.callappRomHelper.romHelper.base;

import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.util.callappRomHelper.romHelper.AndroidMarshmallowHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.BelowMHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.detector.RomDetector;
import com.callapp.contacts.util.callappRomHelper.romHelper.miui.MIUIHelper;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper.class */
public class RomHelper {

    /* renamed from: a */
    private static final RomAction f28193a;

    static {
        if (RomDetector.isMIUI()) {
            f28193a = new MIUIHelper();
        } else if (RomDetector.m27143a()) {
            f28193a = new AndroidMarshmallowHelper();
        } else {
            f28193a = new BelowMHelper();
        }
    }

    /* renamed from: a */
    public static boolean m27146a(Context context) {
        return f28193a.mo27141b(context);
    }

    /* renamed from: b */
    public static Intent m27145b(Context context) {
        return f28193a.mo27142a(context);
    }
}
