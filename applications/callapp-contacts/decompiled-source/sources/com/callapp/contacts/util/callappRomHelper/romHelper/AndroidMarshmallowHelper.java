package com.callapp.contacts.util.callappRomHelper.romHelper;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/AndroidMarshmallowHelper.class */
public class AndroidMarshmallowHelper extends AndroidHelper {
    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    public final Intent a(Context context) {
        return new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + context.getPackageName()));
    }

    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper, com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    public final boolean b(Context context) {
        return Settings.canDrawOverlays(context);
    }
}
