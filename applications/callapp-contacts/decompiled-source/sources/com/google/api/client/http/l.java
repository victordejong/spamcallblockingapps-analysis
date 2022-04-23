package com.google.api.client.http;

import com.google.api.client.a.ad;
import com.google.common.base.m;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/l.class */
public final class l implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final ad f31810a;

    /* renamed from: b  reason: collision with root package name */
    private final k f31811b;

    public l(ad adVar, k kVar) {
        this.f31810a = (ad) m.a(adVar);
        this.f31811b = (k) m.a(kVar);
    }

    @Override // com.google.api.client.a.ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        this.f31811b.a(this.f31810a, outputStream);
    }
}
