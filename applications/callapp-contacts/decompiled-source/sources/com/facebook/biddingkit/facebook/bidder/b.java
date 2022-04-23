package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.c.c;
import com.facebook.biddingkit.c.d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static String f19740a = "FACEBOOK_BIDDER";

    /* renamed from: b  reason: collision with root package name */
    protected final a f19741b;

    /* renamed from: c  reason: collision with root package name */
    protected final d f19742c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, FacebookNotifier> f19743d;

    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f19746a;

        /* renamed from: b  reason: collision with root package name */
        String f19747b;

        /* renamed from: c  reason: collision with root package name */
        d f19748c;

        /* renamed from: d  reason: collision with root package name */
        String f19749d;
        String e;
        boolean f;
        c g = c.FIRST_PRICE;
        boolean h;
        String i;
        public boolean j;

        public a(String str, String str2, d dVar, String str3) {
            this.f19746a = str;
            this.f19747b = str2;
            this.f19748c = dVar;
            this.e = str3;
            this.i = str;
        }
    }

    private b(a aVar) {
        this.f19741b = aVar;
        this.f19743d = Collections.synchronizedMap(new HashMap());
        this.f19742c = new d(com.facebook.biddingkit.b.a.b());
    }

    static /* synthetic */ FacebookBid a(b bVar) {
        long currentTimeMillis = System.currentTimeMillis();
        return com.facebook.biddingkit.facebook.bidder.a.a(com.facebook.biddingkit.http.a.c.a(bVar.f19742c.f19751a, 1000, c.a(bVar.f19741b, currentTimeMillis)), currentTimeMillis);
    }

    static /* synthetic */ void a(com.facebook.biddingkit.a.a aVar, FacebookBid facebookBid) {
        if (facebookBid == null) {
            aVar.handleBidResponseFailure("Failed to get a bid");
        } else if (facebookBid.getStatusCode() != com.facebook.biddingkit.http.a.a.SUCCESS) {
            aVar.handleBidResponseFailure("Failed to get a bid with " + facebookBid.getStatusCode() + " http status code");
        } else {
            aVar.handleBidResponse(facebookBid);
        }
    }
}
