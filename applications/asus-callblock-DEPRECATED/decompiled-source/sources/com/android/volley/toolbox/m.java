package com.android.volley.toolbox;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.android.volley.o;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/m.class */
public final class m {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0082 -> B:4:0x0040). Please submit an issue!!! */
    public static o a(Context context) {
        String packageName;
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            str = context.getPackageName() + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
        }
        o oVar = new o(new c(file, (byte) 0), new a(Build.VERSION.SDK_INT >= 9 ? new g() : new d(AndroidHttpClient.newInstance(str))), (byte) 0);
        oVar.a();
        return oVar;
    }
}
