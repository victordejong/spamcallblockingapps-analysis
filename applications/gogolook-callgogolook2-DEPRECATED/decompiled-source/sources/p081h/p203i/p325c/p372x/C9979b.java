package p081h.p203i.p325c.p372x;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import com.mopub.common.Constants;
import java.util.concurrent.TimeUnit;
/* renamed from: h.i.c.x.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/x/b.class */
public final class C9979b {

    /* renamed from: a */
    public static final long f22579a = TimeUnit.MINUTES.toMillis(3);

    /* renamed from: h.i.c.x.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/x/b$a.class */
    public static final class C9980a {
        /* renamed from: a */
        public static ArrayMap<String, String> m13767a(Bundle bundle) {
            ArrayMap<String, String> arrayMap = new ArrayMap<>();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals(Constants.VAST_TRACKER_MESSAGE_TYPE) && !str.equals("collapse_key")) {
                        arrayMap.put(str, str2);
                    }
                }
            }
            return arrayMap;
        }
    }
}
