package com.twitter;

import com.twitter.a;
import java.text.Normalizer;
/* loaded from: classes4-dex2jar.jar:com/twitter/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    protected int f35083a = 23;

    /* renamed from: b  reason: collision with root package name */
    protected int f35084b = 23;

    /* renamed from: c  reason: collision with root package name */
    private a f35085c = new a();

    public final int a(String str) {
        String normalize = Normalizer.normalize(str, Normalizer.Form.NFC);
        int codePointCount = normalize.codePointCount(0, normalize.length());
        for (a.C0557a aVar : this.f35085c.a(normalize)) {
            codePointCount = codePointCount + (aVar.f35073a - aVar.f35074b) + (aVar.f35075c.toLowerCase().startsWith("https://") ? this.f35084b : this.f35083a);
        }
        return codePointCount;
    }
}
