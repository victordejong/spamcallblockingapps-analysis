package p193e.p194a.p1041l0;

import android.content.Context;
import android.net.Uri;
import android.provider.CallLog;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
/* renamed from: e.a.l0.f */
/* loaded from: classes6-dex2jar.jar:e/a/l0/f.class */
public abstract class AbstractC17351f {

    /* renamed from: a */
    public static final String[] f48606a = {"_id", "date", "number", "type", VastIconXmlManager.DURATION, AnalyticsConstants.NAME, "new", "is_read"};

    /* renamed from: b */
    public static volatile AbstractC17351f f48607b;

    /* renamed from: c */
    public static AbstractC17351f m16221c(Context context) {
        AbstractC17351f abstractC17351f = f48607b;
        if (abstractC17351f != null) {
            return abstractC17351f;
        }
        synchronized (AbstractC17351f.class) {
            try {
                AbstractC17351f abstractC17351f2 = f48607b;
                if (abstractC17351f2 != null) {
                    return abstractC17351f2;
                }
                C17362o c17362o = C17362o.m16183e(context) ? new C17362o(context) : new C17361n(context);
                f48607b = c17362o;
                return c17362o;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public abstract String[] mo16185a();

    /* renamed from: b */
    public Uri mo16184b() {
        return CallLog.Calls.CONTENT_URI;
    }

    /* renamed from: d */
    public abstract int mo16186d(int i);
}
