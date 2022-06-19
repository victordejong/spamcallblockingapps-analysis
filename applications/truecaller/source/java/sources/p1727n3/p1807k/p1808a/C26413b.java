package p1727n3.p1807k.p1808a;

import android.app.Activity;
import android.text.TextUtils;
import java.util.Arrays;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.a.b */
/* loaded from: classes-dex2jar.jar:n3/k/a/b.class */
public class C26413b extends C26467a {

    /* renamed from: c */
    public static final /* synthetic */ int f74031c = 0;

    /* renamed from: n3.k.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/b$a.class */
    public interface AbstractC26414a {
        void validateRequestPermissionsRequestCode(int i);
    }

    /* renamed from: g */
    public static void m1895g(Activity activity, String[] strArr, int i) {
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(C22128a.m8618h(C22128a.m8728C("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
        }
        if (activity instanceof AbstractC26414a) {
            ((AbstractC26414a) activity).validateRequestPermissionsRequestCode(i);
        }
        activity.requestPermissions(strArr, i);
    }
}
