package p081h.p439m.p440a.p441a.p442b;

import android.os.Build;
import com.samsung.android.sdk.look.SlookImpl;
import p081h.p439m.p440a.p441a.AbstractC10748a;
/* renamed from: h.m.a.a.b.a */
/* loaded from: classes2-dex2jar.jar:h/m/a/a/b/a.class */
public final class C10749a implements AbstractC10748a {
    /* renamed from: a */
    public boolean m10739a(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                if (Build.VERSION.SDK_INT < 17) {
                    return false;
                }
                return SlookImpl.isFeatureEnabled(i);
            case 6:
                if (Build.VERSION.SDK_INT < 19) {
                    return false;
                }
                return SlookImpl.isFeatureEnabled(i);
            case 7:
                int i2 = Build.VERSION.SDK_INT;
                if (i2 < 19) {
                    return false;
                }
                return i2 < 21 ? SlookImpl.isFeatureEnabled(6) : SlookImpl.isFeatureEnabled(i);
            default:
                throw new IllegalArgumentException("The type(" + i + ") is not supported.");
        }
    }
}
