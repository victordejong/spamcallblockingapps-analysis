package com.facebook.biddingkit.http.a;

import com.facebook.biddingkit.http.client.a;
import com.facebook.biddingkit.http.client.f;
import java.nio.charset.Charset;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/a/c.class */
public final class c {
    public static f a(String str, int i, String str2) {
        a a2 = b.a();
        a2.a(i);
        return a2.a(str, "application/x-www-form-urlencoded;charset=UTF-8", str2.getBytes(Charset.forName("UTF-8")));
    }
}
