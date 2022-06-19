package com.callapp.contacts.util.callappRomHelper.romHelper;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/AndroidMarshmallowHelper.class */
public class AndroidMarshmallowHelper extends AndroidHelper {
    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    /* renamed from: a */
    public final Intent mo27142a(Context context) {
        return new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
    }

    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper, com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    /* renamed from: b */
    public final boolean mo27141b(Context context) {
        return Settings.canDrawOverlays(context);
    }
}
