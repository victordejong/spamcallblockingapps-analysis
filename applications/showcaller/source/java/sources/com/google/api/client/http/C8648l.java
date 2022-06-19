package com.google.api.client.http;

import com.google.api.client.util.AbstractC8735z;
import com.google.api.client.util.C8731w;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.l */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/l.class */
public final class C8648l implements AbstractC8735z {

    /* renamed from: a */
    private final AbstractC8735z f38361a;

    /* renamed from: b */
    private final AbstractC8647k f38362b;

    public C8648l(AbstractC8735z abstractC8735z, AbstractC8647k abstractC8647k) {
        this.f38361a = (AbstractC8735z) C8731w.m2836d(abstractC8735z);
        this.f38362b = (AbstractC8647k) C8731w.m2836d(abstractC8647k);
    }

    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        this.f38362b.mo3160a(this.f38361a, outputStream);
    }
}
