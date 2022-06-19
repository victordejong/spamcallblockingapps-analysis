package p068d2;

import android.os.Bundle;
import com.applovin.mediation.AppLovinUtils;
import java.util.HashMap;
/* renamed from: d2.z1 */
/* loaded from: classes-dex2jar.jar:d2/z1.class */
public class C2464z1 {

    /* renamed from: a */
    public static int f8694a;

    /* renamed from: b */
    public static HashMap<String, Integer> f8695b = new HashMap<>();

    /* renamed from: c */
    public static HashMap<String, Integer> f8696c = new HashMap<>();

    /* renamed from: a */
    public static boolean m3527a(int i, Bundle bundle) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        if (i == 0) {
            if (currentTimeMillis - f8694a < 5) {
                return true;
            }
            f8694a = currentTimeMillis;
            return false;
        } else if (i != 1 || bundle == null) {
            return false;
        } else {
            String string = bundle.getString(AppLovinUtils.ServerParameterKeys.ZONE_ID);
            if (f8695b.get(string) == null) {
                f8695b.put(string, Integer.valueOf(currentTimeMillis));
            }
            if (f8696c.get(string) == null) {
                f8696c.put(string, 0);
            }
            if (currentTimeMillis - f8695b.get(string).intValue() > 1) {
                f8696c.put(string, 1);
                f8695b.put(string, Integer.valueOf(currentTimeMillis));
                return false;
            }
            int intValue = f8696c.get(string).intValue() + 1;
            f8696c.put(string, Integer.valueOf(intValue));
            return intValue > 3;
        }
    }
}
