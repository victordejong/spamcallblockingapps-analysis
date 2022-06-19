package p078e2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
/* renamed from: e2.d */
/* loaded from: classes-dex2jar.jar:e2/d.class */
public enum EnumC2526d {
    START,
    CENTER,
    END;

    @SuppressLint({"RtlHardcoded"})
    /* renamed from: a */
    public int m3483a() {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return 1;
            }
            if (ordinal != 2) {
                throw new IllegalStateException("Invalid gravity constant");
            }
            return 8388613;
        }
        return 8388611;
    }

    @TargetApi(17)
    /* renamed from: b */
    public int m3482b() {
        int ordinal = ordinal();
        if (ordinal != 1) {
            return ordinal != 2 ? 5 : 6;
        }
        return 4;
    }
}
