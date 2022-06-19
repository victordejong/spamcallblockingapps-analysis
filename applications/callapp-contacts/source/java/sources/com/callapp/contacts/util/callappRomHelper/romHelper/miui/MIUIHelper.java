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
    /* renamed from: c */
    public static Intent m27140c(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (Activities.m27672a(intent)) {
            return intent;
        }
        Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        intent2.putExtra("extra_pkgname", context.getPackageName());
        if (Activities.m27672a(intent2)) {
            return intent2;
        }
        Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent3.setData(Uri.fromParts("package", context.getPackageName(), null));
        if (!Activities.m27672a(intent3)) {
            return null;
        }
        return intent3;
    }

    public static Intent getMIUIBatterSaverIntent() {
        Intent intent = new Intent();
        intent.setClassName("com.miui.powerkeeper", "com.miui.powerkeeper.ui.HiddenAppsConfigActivity");
        intent.putExtra("package_name", CallAppApplication.get().getPackageName());
        intent.putExtra("package_label", Activities.getString(2131886245));
        return intent;
    }

    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    /* renamed from: a */
    public final Intent mo27142a(Context context) {
        Intent m27140c;
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + context.getPackageName()));
        intent.addCategory("android.intent.category.DEFAULT");
        if (!MIUIDetector.isMIUIV5() && (m27140c = m27140c(context)) != null) {
            return m27140c;
        }
        return intent;
    }

    @Override // com.callapp.contacts.util.callappRomHelper.romHelper.base.AndroidHelper, com.callapp.contacts.util.callappRomHelper.romHelper.base.RomAction
    /* renamed from: b */
    public final boolean mo27141b(Context context) {
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
