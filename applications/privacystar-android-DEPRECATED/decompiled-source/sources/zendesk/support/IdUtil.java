package zendesk.support;

import android.support.annotation.RestrictTo;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/IdUtil.class */
public class IdUtil {
    private static UUID generateUniqueId() {
        return UUID.randomUUID();
    }

    public static long newLongId() {
        return generateUniqueId().getMostSignificantBits() & Long.MAX_VALUE;
    }

    public static String newStringId() {
        return generateUniqueId().toString();
    }
}
