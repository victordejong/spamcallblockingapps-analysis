package p081e6;

import android.support.p012v4.media.AbstractC0081a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e6.d */
/* loaded from: classes-dex2jar.jar:e6/d.class */
public final class C2586d extends AbstractC0081a {

    /* renamed from: a */
    public static C2586d f9013a;

    /* renamed from: b */
    public static final Map<Long, String> f9014b = Collections.unmodifiableMap(new C2587a());

    /* renamed from: e6.d$a */
    /* loaded from: classes-dex2jar.jar:e6/d$a.class */
    public class C2587a extends HashMap<Long, String> {
        public C2587a() {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: r */
    public String mo3398r() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: u */
    public String mo3397u() {
        return "fpr_log_source";
    }
}
