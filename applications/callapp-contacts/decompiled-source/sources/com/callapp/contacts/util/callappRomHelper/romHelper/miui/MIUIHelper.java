package com.callapp.contacts.util.callappRomHelper.romHelper.miui;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.detector.MIUIDetector;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/callappRomHelper/romHelper/miui/MIUIHelper.class */
public class MIUIHelper extends AndroidHelper {
    public static Intent c(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (Activities.a(intent)) {
            return intent;
        }
        Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        intent2.putExtra("extra_pkgname", context.getPackageName());
        if (Activities.a(intent2)) {
            return intent2;
        }
        Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent3.setData(Uri.fromParts("package", context.getPackageName(), null));
        if (Activities.a(intent3)) {
            return intent3;
        }
        return null;
    }

    public static Intent getMIUIBatterSaverIntent() {
        Intent intent = new Intent();
        intent.setClassName("com.miui.powerkeeper", "com.miui.powerkeeper.ui.HiddenAppsConfigActivity");
        intent.putExtra("package_name", CallAppApplication.get().getPackageName());
        intent.putExtra("package_label", Activities.getString(2131886245));
        return intent;
    }

    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    public final Intent a(Context context) {
        Intent c2;
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + context.getPackageName()));
        intent.addCategory("android.intent.category.DEFAULT");
        if (!MIUIDetector.isMIUIV5() && (c2 = c(context)) != null) {
            return c2;
        }
        return intent;
    }

    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper, com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    public final boolean b(Context context) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            Method method = appOpsManager.getClass().getMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class);
            if (method == null) {
                return false;
            }
            return ((Integer) method.invoke(appOpsManager, 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0;
        } catch (Exception e) {
            return false;
        }
    }
}
