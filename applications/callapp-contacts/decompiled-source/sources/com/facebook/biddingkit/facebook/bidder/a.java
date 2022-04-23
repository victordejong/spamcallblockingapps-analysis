package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.d.b;
import com.facebook.biddingkit.http.client.f;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/a.class */
public final class a {
    a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static FacebookBid a(f fVar, long j) {
        FacebookBid facebookBid = null;
        if (fVar == null) {
            return null;
        }
        int i = fVar.f19765a;
        Map<String, List<String>> map = fVar.f19766b;
        StringBuilder sb = new StringBuilder("Bid request for facebook finished. HTTP status: " + i + ". ");
        if (map != null && map.containsKey("x-fb-an-request-id")) {
            sb.append("Request ID: " + map.get("x-fb-an-request-id"));
        }
        long currentTimeMillis = System.currentTimeMillis();
        sb.append("Time taken: " + (currentTimeMillis - j) + "ms");
        String a2 = fVar.a();
        if (a2 == null || a2.isEmpty()) {
            int i2 = fVar.f19765a;
            Map<String, List<String>> map2 = fVar.f19766b;
            String errorMessage = com.facebook.biddingkit.http.a.a.getValue(i2).getErrorMessage();
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
            b.a("FacebookBidBuilder", str);
        } else {
            facebookBid = new FacebookBid(fVar);
        }
        return facebookBid;
    }
}
