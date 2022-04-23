package com.criteo.publisher;

import com.criteo.publisher.e.c;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.s;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i.class */
public class i {

    /* renamed from: a  reason: collision with root package name */
    final e f17346a;

    /* renamed from: b  reason: collision with root package name */
    private final g f17347b = h.a(getClass());

    /* renamed from: c  reason: collision with root package name */
    private final h f17348c;

    /* renamed from: d  reason: collision with root package name */
    private final c f17349d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/i$a.class */
    final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdUnit f17350a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BidResponseListener f17351b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(AdUnit adUnit, BidResponseListener bidResponseListener) {
            this.f17350a = adUnit;
            this.f17351b = bidResponseListener;
        }

        private void a(final Bid bid) {
            i.this.f17347b.a(f.a(this.f17350a, bid));
            c cVar = i.this.f17349d;
            final BidResponseListener bidResponseListener = this.f17351b;
            cVar.a(new Runnable() { // from class: com.criteo.publisher._$$Lambda$i$a$6UvFI8oWObhOjBpvh83l2oSJrP4
                @Override // java.lang.Runnable
                public final void run() {
                    BidResponseListener.this.onResponse(bid);
                }
            });
        }

        @Override // com.criteo.publisher.d
        public final void a() {
            a((Bid) null);
        }

        @Override // com.criteo.publisher.d
        public final void a(s sVar) {
            a(new Bid(this.f17350a.getAdUnitType(), i.this.f17348c, sVar));
        }
    }

    public i(e eVar, h hVar, c cVar) {
        this.f17346a = eVar;
        this.f17348c = hVar;
        this.f17349d = cVar;
    }
}
