package com.huawei.hms.hatool;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Calendar;
import java.util.UUID;
/* renamed from: com.huawei.hms.hatool.f0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/f0.class */
public class C2359f0 {

    /* renamed from: a */
    public long f7513a = 1800000;

    /* renamed from: b */
    public volatile boolean f7514b = false;

    /* renamed from: c */
    public C2360a f7515c = null;

    /* renamed from: com.huawei.hms.hatool.f0$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/f0$a.class */
    public class C2360a {

        /* renamed from: a */
        public String f7516a = UUID.randomUUID().toString().replace(StringConstant.DASH, "");

        /* renamed from: b */
        public boolean f7517b = true;

        /* renamed from: c */
        public long f7518c;

        public C2360a(long j) {
            C2359f0.this = r6;
            this.f7516a += AnalyticsConstants.DELIMITER_MAIN + j;
            this.f7518c = j;
            r6.f7514b = false;
        }

        /* renamed from: a */
        public void m37706a(long j) {
            if (C2359f0.this.f7514b) {
                C2359f0.this.f7514b = false;
                m37704b(j);
            } else if (m37703b(this.f7518c, j) || m37705a(this.f7518c, j)) {
                m37704b(j);
            } else {
                this.f7518c = j;
                this.f7517b = false;
            }
        }

        /* renamed from: a */
        public final boolean m37705a(long j, long j2) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j2);
            boolean z = true;
            if (calendar.get(1) == calendar2.get(1)) {
                z = calendar.get(6) != calendar2.get(6);
            }
            return z;
        }

        /* renamed from: b */
        public final void m37704b(long j) {
            C2398y.m37473c("hmsSdk", "getNewSession() session is flush!");
            String uuid = UUID.randomUUID().toString();
            this.f7516a = uuid;
            this.f7516a = uuid.replace(StringConstant.DASH, "");
            this.f7516a += AnalyticsConstants.DELIMITER_MAIN + j;
            this.f7518c = j;
            this.f7517b = true;
        }

        /* renamed from: b */
        public final boolean m37703b(long j, long j2) {
            return j2 - j >= C2359f0.this.f7513a;
        }
    }

    /* renamed from: a */
    public String m37712a() {
        C2360a c2360a = this.f7515c;
        if (c2360a == null) {
            C2398y.m37469f("hmsSdk", "getSessionName(): session not prepared. onEvent() must be called first.");
            return "";
        }
        return c2360a.f7516a;
    }

    /* renamed from: a */
    public void m37711a(long j) {
        C2360a c2360a = this.f7515c;
        if (c2360a != null) {
            c2360a.m37706a(j);
            return;
        }
        C2398y.m37473c("hmsSdk", "Session is first flush");
        this.f7515c = new C2360a(j);
    }

    /* renamed from: b */
    public boolean m37708b() {
        C2360a c2360a = this.f7515c;
        if (c2360a == null) {
            C2398y.m37469f("hmsSdk", "isFirstEvent(): session not prepared. onEvent() must be called first.");
            return false;
        }
        return c2360a.f7517b;
    }
}
