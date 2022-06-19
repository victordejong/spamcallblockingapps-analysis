package p193e.p194a.p1041l0;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.SystemClock;
import android.provider.CallLog;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.TimeUnit;
import w3.c.a.a.a.a;
/* renamed from: e.a.l0.n */
/* loaded from: classes6-dex2jar.jar:e/a/l0/n.class */
public class C17361n extends AbstractC17351f {

    /* renamed from: k */
    public static final long f48626k = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: e */
    public final ContentResolver f48629e;

    /* renamed from: f */
    public final TelephonyManager f48630f;

    /* renamed from: g */
    public final SubscriptionManager f48631g;

    /* renamed from: h */
    public List<SubscriptionInfo> f48632h;

    /* renamed from: j */
    public final Method f48634j;

    /* renamed from: c */
    public String[] f48627c = null;

    /* renamed from: d */
    public final Object f48628d = new Object();

    /* renamed from: i */
    public volatile long f48633i = 0;

    public C17361n(Context context) {
        Method method = null;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        this.f48630f = telephonyManager;
        this.f48631g = SubscriptionManager.from(context);
        try {
            method = telephonyManager.getClass().getDeclaredMethod("getCallState", Integer.TYPE);
        } catch (NoSuchMethodException e) {
        }
        this.f48629e = context.getContentResolver();
        this.f48634j = method;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17351f
    /* renamed from: a */
    public String[] mo16185a() {
        boolean z;
        if (this.f48627c == null) {
            synchronized (this.f48628d) {
                if (this.f48627c == null) {
                    String[] strArr = (String[]) a.b(AbstractC17351f.f48606a, new String[]{"normalized_number", "features"});
                    try {
                        Cursor query = this.f48629e.query(CallLog.Calls.CONTENT_URI, new String[]{"subscription_component_name"}, null, null, "_id ASC LIMIT 1");
                        if (query != null) {
                            query.close();
                        }
                    } catch (IOException | SecurityException e) {
                    } catch (Exception e2) {
                        z = true;
                    }
                    z = false;
                    String[] strArr2 = strArr;
                    if (!z) {
                        strArr2 = (String[]) a.a(strArr, "subscription_component_name");
                    }
                    this.f48627c = strArr2;
                }
            }
        }
        return this.f48627c;
    }

    @Override // p193e.p194a.p1041l0.AbstractC17351f
    /* renamed from: d */
    public int mo16186d(int i) {
        if (this.f48634j == null) {
            return -1;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f48633i;
        List<SubscriptionInfo> list = this.f48632h;
        long j2 = f48626k;
        if (elapsedRealtime - j >= j2) {
            synchronized (this) {
                long j3 = this.f48633i;
                list = this.f48632h;
                if (elapsedRealtime - j3 >= j2) {
                    list = this.f48631g.getActiveSubscriptionInfoList();
                    this.f48632h = list;
                    this.f48633i = SystemClock.elapsedRealtime();
                }
            }
        }
        if (list == null) {
            return -1;
        }
        for (SubscriptionInfo subscriptionInfo : list) {
            if (((Integer) this.f48634j.invoke(this.f48630f, Integer.valueOf(subscriptionInfo.getSubscriptionId()))).intValue() == i) {
                return subscriptionInfo.getSimSlotIndex();
            }
            continue;
        }
        return -1;
    }
}
