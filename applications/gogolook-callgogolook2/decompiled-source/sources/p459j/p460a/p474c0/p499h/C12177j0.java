package p459j.p460a.p474c0.p499h;

import android.text.TextUtils;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
/* renamed from: j.a.c0.h.j0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/j0.class */
public class C12177j0 {
    /* renamed from: a */
    public static int m6915a(NumInfo numInfo) {
        if (numInfo == null || TextUtils.isEmpty(numInfo.type)) {
            return 0;
        }
        if (numInfo.isSpam()) {
            return 1;
        }
        return (m6914b(numInfo) || !TextUtils.isEmpty(numInfo.name) || TextUtils.isEmpty(numInfo.bizcate)) ? 3 : 2;
    }

    /* renamed from: b */
    public static boolean m6914b(NumInfo numInfo) {
        return numInfo != null && (numInfo.isCardV3() || numInfo.isCardV2() || numInfo.isCardV1());
    }
}
