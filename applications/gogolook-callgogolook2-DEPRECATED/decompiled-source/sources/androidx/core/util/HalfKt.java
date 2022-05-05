package androidx.core.util;

import android.util.Half;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\n\n\u0002\u0010\u000e\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0004H\u0087\b\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0005H\u0087\b¨\u0006\u0006"}, m815d2 = {"toHalf", "Landroid/util/Half;", "", "", "", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/util/HalfKt.class */
public final class HalfKt {
    @RequiresApi(26)
    public static final Half toHalf(double d) {
        Half valueOf = Half.valueOf((float) d);
        C15149k.m383a((Object) valueOf, "Half.valueOf(this)");
        return valueOf;
    }

    @RequiresApi(26)
    public static final Half toHalf(float f) {
        Half valueOf = Half.valueOf(f);
        C15149k.m383a((Object) valueOf, "Half.valueOf(this)");
        return valueOf;
    }

    @RequiresApi(26)
    public static final Half toHalf(String str) {
        C15149k.m377b(str, "$this$toHalf");
        Half valueOf = Half.valueOf(str);
        C15149k.m383a((Object) valueOf, "Half.valueOf(this)");
        return valueOf;
    }

    @RequiresApi(26)
    public static final Half toHalf(short s) {
        Half valueOf = Half.valueOf(s);
        C15149k.m383a((Object) valueOf, "Half.valueOf(this)");
        return valueOf;
    }
}
