package com.huawei.updatesdk.support.p123pm;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.updatesdk.fileprovider.UpdateSdkFileProvider;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2519d;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c;
import com.huawei.updatesdk.p097a.p106b.p108b.C2532b;
import com.huawei.updatesdk.p111b.p117d.C2556e;
import java.io.File;
/* renamed from: com.huawei.updatesdk.support.pm.PackageInstallerActivity */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/support/pm/PackageInstallerActivity.class */
public class PackageInstallerActivity extends Activity {
    /* renamed from: a */
    private Intent m36494a(Context context, String str) {
        Uri uri;
        if (TextUtils.isEmpty(str) || str.contains("../") || str.contains("..") || str.contains("%00") || str.contains(".\\.\\") || str.contains("./")) {
            throw new IllegalArgumentException("getNomalInstallIntent: Not a standard path");
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.INSTALL_PACKAGE");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
            uri = UpdateSdkFileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + UpdateSdkFileProvider.AUTHORITIES_SUFFIX, new File(str));
        } else {
            uri = Uri.fromFile(new File(str));
        }
        intent.setData(uri);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        return intent;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (1000 == i) {
            if (i2 == 0) {
                C2556e.m36637a(7, 0);
            } else {
                int i3 = -10004;
                if (intent != null) {
                    i3 = C2532b.m36751a(intent).m36749a("android.intent.extra.INSTALL_RESULT", -10004);
                }
                if (i3 != 0 && i3 != 1) {
                    C2556e.m36637a(4, i3);
                }
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        requestWindowFeature(1);
        C2526c.m36780e().m36796a(getWindow());
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            str = "PackageInstallerActivity error intent";
        } else {
            C2532b m36751a = C2532b.m36751a(intent);
            String m36750a = m36751a.m36750a("install_path");
            String m36750a2 = m36751a.m36750a("install_packagename");
            String m36750a3 = m36751a.m36750a("apk_sha256");
            if (!TextUtils.isEmpty(m36750a) && m36750a3 != null && m36750a3.equalsIgnoreCase(AbstractC2519d.m36836a(m36750a, "SHA-256"))) {
                try {
                    Intent m36494a = m36494a(this, m36750a);
                    m36494a.putExtra("android.intent.extra.NOT_UNKNOWN_SOURCE", true);
                    m36494a.putExtra("android.intent.extra.RETURN_RESULT", true);
                    C2515a.m36846c("PackageInstallerActivity", " onCreate filePath:" + m36750a + ",packageName:" + m36750a2 + ",taskId:" + getTaskId());
                    startActivityForResult(m36494a, 1000);
                    return;
                } catch (Exception e) {
                    C2515a.m36847b("PackageInstallerActivity", "can not start install action");
                    C2556e.m36637a(4, -2);
                    finish();
                    return;
                }
            }
            C2556e.m36637a(4, -3);
            finish();
            str = "PackageInstallerActivity can not find filePath.";
        }
        C2515a.m36847b("PackageInstallerActivity", str);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        finishActivity(1000);
        super.onDestroy();
    }
}
