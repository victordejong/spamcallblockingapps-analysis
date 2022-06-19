package com.criteo.publisher;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.p245e.ExecutorC8277c;
/* renamed from: com.criteo.publisher.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i.class */
public class C8345i {

    /* renamed from: a */
    final C8272e f29990a;

    /* renamed from: b */
    private final C8402g f29991b = C8404h.m25741a(getClass());

    /* renamed from: c */
    private final AbstractC8336h f29992c;

    /* renamed from: d */
    private final ExecutorC8277c f29993d;

    /* renamed from: com.criteo.publisher.i$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i$a.class */
    final class C8346a implements AbstractC8270d {

        /* renamed from: a */
        final /* synthetic */ AdUnit f29994a;

        /* renamed from: b */
        final /* synthetic */ BidResponseListener f29995b;

        public C8346a(AdUnit adUnit, BidResponseListener bidResponseListener) {
            C8345i.this = r4;
            this.f29994a = adUnit;
            this.f29995b = bidResponseListener;
        }

        /* renamed from: a */
        private void m25811a(final Bid bid) {
            C8345i.this.f29991b.m25744a(C8281f.m25924a(this.f29994a, bid));
            ExecutorC8277c executorC8277c = C8345i.this.f29993d;
            final BidResponseListener bidResponseListener = this.f29995b;
            executorC8277c.m25926a(new Runnable() { // from class: com.criteo.publisher._$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4
                @Override // java.lang.Runnable
                public final void run() {
                    BidResponseListener.this.onResponse(bid);
                }
            });
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25712a() {
            m25811a((Bid) null);
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25711a(C8503s c8503s) {
            m25811a(new Bid(this.f29994a.getAdUnitType(), C8345i.this.f29992c, c8503s));
        }
    }

    public C8345i(C8272e c8272e, AbstractC8336h abstractC8336h, ExecutorC8277c executorC8277c) {
        this.f29990a = c8272e;
        this.f29992c = abstractC8336h;
        this.f29993d = executorC8277c;
    }
}
