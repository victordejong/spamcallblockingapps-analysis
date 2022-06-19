package com.google.api.client.http;

import com.google.api.client.p379a.AbstractC15211ad;
import com.google.common.base.C15391m;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.l */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/l.class */
public final class C15333l implements AbstractC15211ad {

    /* renamed from: a */
    private final AbstractC15211ad f55340a;

    /* renamed from: b */
    private final AbstractC15332k f55341b;

    public C15333l(AbstractC15211ad abstractC15211ad, AbstractC15332k abstractC15332k) {
        this.f55340a = (AbstractC15211ad) C15391m.m8946a(abstractC15211ad);
        this.f55341b = (AbstractC15332k) C15391m.m8946a(abstractC15332k);
    }

    @Override // com.google.api.client.p379a.AbstractC15211ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        this.f55341b.mo9101a(this.f55340a, outputStream);
    }
}
