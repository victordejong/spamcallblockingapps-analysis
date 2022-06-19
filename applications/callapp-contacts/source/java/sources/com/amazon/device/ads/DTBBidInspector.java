package com.amazon.device.ads;

import com.amazon.device.ads.DTBBidInspector;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector.class */
public class DTBBidInspector {

    /* renamed from: a */
    static DTBBidInspector f11805a = new DTBBidInspector();

    /* renamed from: b */
    private List<BidDescriptor> f11806b = new ArrayList();

    /* renamed from: c */
    private Timer f11807c;

    /* renamed from: com.amazon.device.ads.DTBBidInspector$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector$1.class */
    public class C32641 extends TimerTask {
        C32641() {
            DTBBidInspector.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m38932a() {
            DTBBidInspector.this.m38933b();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            DtbThreadService.m38766a().m38763a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBBidInspector$1$_h6kZTFcmj9Yyos_HYJw_RYYl_s
                @Override // java.lang.Runnable
                public final void run() {
                    DTBBidInspector.C32641.this.m38932a();
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector$BidDescriptor.class */
    public class BidDescriptor {

        /* renamed from: a */
        String f11809a;

        /* renamed from: b */
        long f11810b;

        BidDescriptor() {
            DTBBidInspector.this = r4;
        }
    }

    private DTBBidInspector() {
        Timer timer = new Timer();
        this.f11807c = timer;
        timer.schedule(new C32641(), 180000L, 180000L);
    }

    /* renamed from: a */
    public static DTBBidInspector m38936a() {
        return f11805a;
    }

    /* renamed from: b */
    public void m38933b() {
        synchronized (this) {
            long time = new Date().getTime();
            Iterator<BidDescriptor> it2 = this.f11806b.iterator();
            int i = 0;
            while (it2.hasNext() && time - it2.next().f11810b > 480000) {
                i++;
            }
            for (int i2 = 0; i2 < i; i2++) {
                this.f11806b.remove(0);
            }
        }
    }

    /* renamed from: a */
    public final void m38934a(String str) {
        synchronized (this) {
            BidDescriptor bidDescriptor = new BidDescriptor();
            bidDescriptor.f11809a = str;
            bidDescriptor.f11810b = new Date().getTime();
            this.f11806b.add(bidDescriptor);
        }
    }
}
