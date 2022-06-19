package com.facebook.biddingkit.facebook.bidder;

import com.facebook.biddingkit.http.p296a.C10156c;
import com.facebook.biddingkit.http.p296a.EnumC10153a;
import com.facebook.biddingkit.p290a.AbstractC10113a;
import com.facebook.biddingkit.p291b.C10115a;
import com.facebook.biddingkit.p292c.EnumC10119c;
import com.facebook.biddingkit.p292c.EnumC10120d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.biddingkit.facebook.bidder.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/b.class */
public final class C10148b {

    /* renamed from: a */
    public static String f33546a = "FACEBOOK_BIDDER";

    /* renamed from: b */
    protected final C10150a f33547b;

    /* renamed from: c */
    protected final C10152d f33548c;

    /* renamed from: d */
    private Map<String, FacebookNotifier> f33549d;

    /* renamed from: com.facebook.biddingkit.facebook.bidder.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/b$a.class */
    public static final class C10150a {

        /* renamed from: a */
        String f33552a;

        /* renamed from: b */
        String f33553b;

        /* renamed from: c */
        EnumC10120d f33554c;

        /* renamed from: d */
        String f33555d;

        /* renamed from: e */
        String f33556e;

        /* renamed from: f */
        boolean f33557f;

        /* renamed from: g */
        EnumC10119c f33558g = EnumC10119c.FIRST_PRICE;

        /* renamed from: h */
        boolean f33559h;

        /* renamed from: i */
        String f33560i;

        /* renamed from: j */
        public boolean f33561j;

        public C10150a(String str, String str2, EnumC10120d enumC10120d, String str3) {
            this.f33552a = str;
            this.f33553b = str2;
            this.f33554c = enumC10120d;
            this.f33556e = str3;
            this.f33560i = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C10148b(C10150a c10150a) {
        this.f33547b = c10150a;
        this.f33549d = Collections.synchronizedMap(new HashMap());
        this.f33548c = new C10152d(C10115a.m23374b());
    }

    /* renamed from: a */
    static /* synthetic */ FacebookBid m23338a(C10148b c10148b) {
        long currentTimeMillis = System.currentTimeMillis();
        return C10147a.m23340a(C10156c.m23335a(c10148b.f33548c.f33563a, 1000, C10151c.m23337a(c10148b.f33547b, currentTimeMillis)), currentTimeMillis);
    }

    /* renamed from: a */
    static /* synthetic */ void m23339a(AbstractC10113a abstractC10113a, FacebookBid facebookBid) {
        if (facebookBid == null) {
            abstractC10113a.handleBidResponseFailure("Failed to get a bid");
        } else if (facebookBid.getStatusCode() == EnumC10153a.SUCCESS) {
            abstractC10113a.handleBidResponse(facebookBid);
        } else {
            abstractC10113a.handleBidResponseFailure("Failed to get a bid with " + facebookBid.getStatusCode() + " http status code");
        }
    }
}
