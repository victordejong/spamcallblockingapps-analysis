package com.facebook.biddingkit.http.p296a;

import com.facebook.biddingkit.http.client.C10157a;
import com.facebook.biddingkit.http.client.C10162f;
import java.nio.charset.Charset;
/* renamed from: com.facebook.biddingkit.http.a.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/a/c.class */
public final class C10156c {
    /* renamed from: a */
    public static C10162f m23335a(String str, int i, String str2) {
        C10157a m23336a = C10155b.m23336a();
        m23336a.m23334a(i);
        return m23336a.m23329a(str, "application/x-www-form-urlencoded;charset=UTF-8", str2.getBytes(Charset.forName("UTF-8")));
    }
}
