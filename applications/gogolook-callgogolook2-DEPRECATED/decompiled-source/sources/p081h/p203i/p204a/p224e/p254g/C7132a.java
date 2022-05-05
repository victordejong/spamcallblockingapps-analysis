package p081h.p203i.p204a.p224e.p254g;

import android.content.Context;
import androidx.collection.ArrayMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: h.i.a.e.g.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/g/a.class */
public class C7132a {
    @GuardedBy("GcmNetworkManager.class")

    /* renamed from: b */
    public static C7132a f17236b;
    @GuardedBy("this")

    /* renamed from: a */
    public final Map<String, Map<String, Boolean>> f17237a = new ArrayMap();

    public C7132a(Context context) {
    }

    /* renamed from: a */
    public static C7132a m21044a(Context context) {
        C7132a aVar;
        synchronized (C7132a.class) {
            try {
                if (f17236b == null) {
                    f17236b = new C7132a(context.getApplicationContext());
                }
                aVar = f17236b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public final boolean m21043a(String str) {
        boolean containsKey;
        synchronized (this) {
            containsKey = this.f17237a.containsKey(str);
        }
        return containsKey;
    }

    /* renamed from: a */
    public final boolean m21042a(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.f17237a.get(str2);
            Map<String, Boolean> map2 = map;
            if (map == null) {
                map2 = new ArrayMap<>();
                this.f17237a.put(str2, map2);
            }
            return map2.put(str, false) == null;
        }
    }

    /* renamed from: b */
    public final void m21041b(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.f17237a.get(str2);
            if (map != null) {
                if ((map.remove(str) != null) && map.isEmpty()) {
                    this.f17237a.remove(str2);
                }
            }
        }
    }

    /* renamed from: c */
    public final boolean m21040c(String str, String str2) {
        synchronized (this) {
            Map<String, Boolean> map = this.f17237a.get(str2);
            if (map == null) {
                return false;
            }
            Boolean bool = map.get(str);
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }
    }
}
