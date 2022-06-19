package p134j4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* renamed from: j4.j2 */
/* loaded from: classes-dex2jar.jar:j4/j2.class */
public final class C3220j2 {

    /* renamed from: a */
    public final Context f10856a;

    public C3220j2(Context context) {
        this.f10856a = context;
    }

    /* renamed from: a */
    public static String m2538a(Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return bundle.getString("local_testing_dir");
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }
}
