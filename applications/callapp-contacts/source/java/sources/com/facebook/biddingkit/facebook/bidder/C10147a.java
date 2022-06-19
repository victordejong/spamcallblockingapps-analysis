package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.http.client.C10162f;
import com.facebook.biddingkit.http.p296a.EnumC10153a;
import com.facebook.biddingkit.p293d.C10123b;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.biddingkit.facebook.bidder.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/a.class */
public final class C10147a {
    C10147a() {
    }

    /* renamed from: a */
    public static FacebookBid m23340a(C10162f c10162f, long j) {
        FacebookBid facebookBid;
        if (c10162f == null) {
            return null;
        }
        int i = c10162f.f33581a;
        Map<String, List<String>> map = c10162f.f33582b;
        StringBuilder sb = new StringBuilder("Bid request for facebook finished. HTTP status: " + i + ". ");
        if (map != null && map.containsKey("x-fb-an-request-id")) {
            sb.append("Request ID: " + map.get("x-fb-an-request-id"));
        }
        long currentTimeMillis = System.currentTimeMillis();
        sb.append("Time taken: " + (currentTimeMillis - j) + "ms");
        String m23318a = c10162f.m23318a();
        if (m23318a == null || m23318a.isEmpty()) {
            int i2 = c10162f.f33581a;
            Map<String, List<String>> map2 = c10162f.f33582b;
            String errorMessage = EnumC10153a.getValue(i2).getErrorMessage();
            String str = errorMessage;
            if (map2 != null) {
                str = errorMessage;
                if (map2.containsKey("x-fb-an-errors")) {
                    String obj = map2.get("x-fb-an-errors").toString();
                    str = errorMessage;
                    if (!TextUtils.isEmpty(obj)) {
                        str = obj;
                    }
                }
            }
            C10123b.m23370a("FacebookBidBuilder", str);
            facebookBid = null;
        } else {
            facebookBid = new FacebookBid(c10162f);
        }
        return facebookBid;
    }
}
