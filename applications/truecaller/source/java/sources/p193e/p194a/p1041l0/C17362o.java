package p193e.p194a.p1041l0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import w3.c.a.a.a.a;
/* renamed from: e.a.l0.o */
/* loaded from: classes6-dex2jar.jar:e/a/l0/o.class */
public class C17362o extends C17361n {

    /* renamed from: l */
    public static final Uri f48635l = Uri.parse("content://logs/call");

    /* renamed from: m */
    public static final String[] f48636m = (String[]) a.b(AbstractC17351f.f48606a, new String[]{"normalized_number", "features", "subscription_component_name", "logtype"});

    public C17362o(Context context) {
        super(context);
    }

    /* renamed from: e */
    public static boolean m16183e(Context context) {
        boolean z = false;
        if (!"samsung".equalsIgnoreCase(Build.BRAND)) {
            return false;
        }
        try {
            Cursor query = context.getContentResolver().query(f48635l, new String[]{"_id", AnalyticsConstants.NAME, "date", "features", "new", "is_read", "subscription_component_name", "number", "type", VastIconXmlManager.DURATION}, null, null, null);
            if (query != null) {
                query.close();
            }
            if (query != null) {
                z = true;
            }
            return z;
        } catch (SecurityException e) {
            boolean z2 = false;
            if (context.checkSelfPermission("android.permission.READ_CALL_LOG") == -1) {
                z2 = true;
            }
            return z2;
        } catch (Exception e2) {
            return false;
        }
    }

    @Override // p193e.p194a.p1041l0.C17361n, p193e.p194a.p1041l0.AbstractC17351f
    /* renamed from: a */
    public String[] mo16185a() {
        return f48636m;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17351f
    /* renamed from: b */
    public Uri mo16184b() {
        return f48635l;
    }
}
