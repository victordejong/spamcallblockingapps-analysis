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

    /* renamed from: a  reason: collision with root package name */
    static DTBBidInspector f6428a = new DTBBidInspector();

    /* renamed from: b  reason: collision with root package name */
    private List<BidDescriptor> f6429b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private Timer f6430c;

    /* renamed from: com.amazon.device.ads.DTBBidInspector$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector$1.class */
    class AnonymousClass1 extends TimerTask {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            DTBBidInspector.this.b();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            DtbThreadService.a().a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBBidInspector$1$_h6kZTFcmj9Yyos_HYJw_RYYl_s
                @Override // java.lang.Runnable
                public final void run() {
                    DTBBidInspector.AnonymousClass1.this.a();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBBidInspector$BidDescriptor.class */
    public class BidDescriptor {

        /* renamed from: a  reason: collision with root package name */
        String f6432a;

        /* renamed from: b  reason: collision with root package name */
        long f6433b;

        BidDescriptor() {
        }
    }

    private DTBBidInspector() {
        Timer timer = new Timer();
        this.f6430c = timer;
        timer.schedule(new AnonymousClass1(), 180000L, 180000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBBidInspector a() {
        return f6428a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        synchronized (this) {
            long time = new Date().getTime();
            Iterator<BidDescriptor> it2 = this.f6429b.iterator();
            int i = 0;
            while (it2.hasNext() && time - it2.next().f6433b > 480000) {
                i++;
            }
            for (int i2 = 0; i2 < i; i2++) {
                this.f6429b.remove(0);
            }
        }
    }

    public final void a(String str) {
        synchronized (this) {
            BidDescriptor bidDescriptor = new BidDescriptor();
            bidDescriptor.f6432a = str;
            bidDescriptor.f6433b = new Date().getTime();
            this.f6429b.add(bidDescriptor);
        }
    }
}
