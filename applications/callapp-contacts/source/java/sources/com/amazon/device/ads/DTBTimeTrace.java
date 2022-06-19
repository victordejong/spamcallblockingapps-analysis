package com.amazon.device.ads;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBTimeTrace.class */
public class DTBTimeTrace {

    /* renamed from: c */
    private static DTBTimeTrace f11835c;

    /* renamed from: d */
    private Date f11838d;

    /* renamed from: b */
    boolean f11837b = false;

    /* renamed from: a */
    ArrayList<DTBTimeTracePhase> f11836a = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase.class */
    public static class DTBTimeTracePhase {

        /* renamed from: a */
        private String f11839a;

        /* renamed from: b */
        private Date f11840b = new Date();

        public DTBTimeTracePhase(String str) {
            this.f11839a = str;
        }
    }

    DTBTimeTrace() {
    }

    /* renamed from: a */
    public static DTBTimeTrace m38907a() {
        if (f11835c == null) {
            f11835c = new DTBTimeTrace();
        }
        return f11835c;
    }

    /* renamed from: b */
    public static void m38906b() {
        if (AdRegistration.m39068g()) {
            DtbLog.m38820c("ServerlessMetrics", m38907a().toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Date date = this.f11838d;
        if (date != null) {
            Iterator<DTBTimeTracePhase> it2 = this.f11836a.iterator();
            while (it2.hasNext()) {
                DTBTimeTracePhase next = it2.next();
                sb.append(next.f11839a);
                sb.append("-> ");
                sb.append(next.f11840b.getTime() - date.getTime());
                sb.append(StringUtils.f67179LF);
                date = next.f11840b;
            }
            sb.append("Total Time:");
            sb.append(date.getTime() - this.f11838d.getTime());
            sb.append(StringUtils.f67179LF);
        }
        if (AdRegistration.m39068g()) {
            this.f11837b = true;
            this.f11838d = new Date();
            this.f11836a.clear();
        }
        return sb.toString();
    }
}
