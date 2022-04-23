package com.amazon.device.ads;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBTimeTrace.class */
public class DTBTimeTrace {

    /* renamed from: c  reason: collision with root package name */
    private static DTBTimeTrace f6450c;

    /* renamed from: d  reason: collision with root package name */
    private Date f6453d;

    /* renamed from: b  reason: collision with root package name */
    boolean f6452b = false;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<DTBTimeTracePhase> f6451a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBTimeTrace$DTBTimeTracePhase.class */
    public static class DTBTimeTracePhase {

        /* renamed from: a  reason: collision with root package name */
        private String f6454a;

        /* renamed from: b  reason: collision with root package name */
        private Date f6455b = new Date();

        /* JADX INFO: Access modifiers changed from: package-private */
        public DTBTimeTracePhase(String str) {
            this.f6454a = str;
        }
    }

    DTBTimeTrace() {
    }

    public static DTBTimeTrace a() {
        if (f6450c == null) {
            f6450c = new DTBTimeTrace();
        }
        return f6450c;
    }

    public static void b() {
        if (AdRegistration.g()) {
            DtbLog.c("ServerlessMetrics", a().toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Date date = this.f6453d;
        if (date != null) {
            Iterator<DTBTimeTracePhase> it2 = this.f6451a.iterator();
            while (it2.hasNext()) {
                DTBTimeTracePhase next = it2.next();
                sb.append(next.f6454a);
                sb.append("-> ");
                sb.append(next.f6455b.getTime() - date.getTime());
                sb.append(StringUtils.LF);
                date = next.f6455b;
            }
            sb.append("Total Time:");
            sb.append(date.getTime() - this.f6453d.getTime());
            sb.append(StringUtils.LF);
        }
        if (AdRegistration.g()) {
            this.f6452b = true;
            this.f6453d = new Date();
            this.f6451a.clear();
        }
        return sb.toString();
    }
}
