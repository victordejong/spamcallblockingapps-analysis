package com.callapp.contacts.util.callappRomHelper.romHelper.base;

import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.util.callappRomHelper.romHelper.AndroidMarshmallowHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.BelowMHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.detector.RomDetector;
import com.callapp.contacts.util.callappRomHelper.romHelper.miui.MIUIHelper;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper.class */
public class RomHelper {

    /* renamed from: a  reason: collision with root package name */
    private static final RomAction f16176a;

    static {
        if (RomDetector.isMIUI()) {
            f16176a = new MIUIHelper();
        } else if (RomDetector.a()) {
            f16176a = new AndroidMarshmallowHelper();
        } else {
            f16176a = new BelowMHelper();
        }
    }

    public static boolean a(Context context) {
        return f16176a.b(context);
    }

    public static Intent b(Context context) {
        return f16176a.a(context);
    }
}
