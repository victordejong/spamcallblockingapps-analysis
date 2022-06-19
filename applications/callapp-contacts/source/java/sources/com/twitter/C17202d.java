package com.twitter;

import com.twitter.C17197a;
import java.text.Normalizer;
/* renamed from: com.twitter.d */
/* loaded from: classes4-dex2jar.jar:com/twitter/d.class */
public final class C17202d {

    /* renamed from: a */
    protected int f60924a = 23;

    /* renamed from: b */
    protected int f60925b = 23;

    /* renamed from: c */
    private C17197a f60926c = new C17197a();

    /* renamed from: a */
    public final int m5724a(String str) {
        String normalize = Normalizer.normalize(str, Normalizer.Form.NFC);
        int codePointCount = normalize.codePointCount(0, normalize.length());
        for (C17197a.C17198a c17198a : this.f60926c.m5726a(normalize)) {
            codePointCount = codePointCount + (c17198a.f60899a - c17198a.f60900b) + (c17198a.f60901c.toLowerCase().startsWith("https://") ? this.f60925b : this.f60924a);
        }
        return codePointCount;
    }
}
