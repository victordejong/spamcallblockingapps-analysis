package com.huawei.updatesdk.p111b.p117d;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p106b.p108b.C2532b;
import com.huawei.updatesdk.p111b.p119f.C2564c;
import com.huawei.updatesdk.support.p123pm.PackageInstallerActivity;
import java.io.File;
/* renamed from: com.huawei.updatesdk.b.d.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/d/e.class */
public class C2556e {
    /* renamed from: a */
    public static void m36637a(int i, int i2) {
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("INSTALL_STATE", i);
        bundle.putInt("INSTALL_TYPE", i2);
        intent.putExtras(bundle);
        C2564c.m36610b().m36608c(C2532b.m36751a(intent));
    }

    /* renamed from: a */
    public static void m36636a(Context context, String str, String str2, String str3) {
        m36637a(3, 1);
        File file = new File(str);
        if (!file.exists() || !file.isFile() || file.length() <= 0) {
            C2515a.m36847b("InstallProcess", "system install failed,file not existed filePath:" + str);
            m36637a(4, -10003);
            return;
        }
        Intent intent = new Intent(context, PackageInstallerActivity.class);
        intent.putExtra("install_path", str);
        intent.putExtra("install_packagename", str2);
        intent.putExtra("apk_sha256", str3);
        if (!(context instanceof Activity)) {
            intent.setFlags(402653184);
        }
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            m36637a(4, -10002);
            C2515a.m36848a("InstallProcess", " can not start install !", e);
        }
    }
}
