package com.google.api.client.p379a;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.a.v */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/v.class */
public final class C15252v implements AbstractC15211ad {

    /* renamed from: a */
    private final AbstractC15211ad f55132a;

    /* renamed from: b */
    private final int f55133b;

    /* renamed from: c */
    private final Level f55134c;

    /* renamed from: d */
    private final Logger f55135d;

    public C15252v(AbstractC15211ad abstractC15211ad, Logger logger, Level level, int i) {
        this.f55132a = abstractC15211ad;
        this.f55135d = logger;
        this.f55134c = level;
        this.f55133b = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.api.client.p379a.AbstractC15211ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        C15251u c15251u = new C15251u(outputStream, this.f55135d, this.f55134c, this.f55133b);
        try {
            this.f55132a.writeTo(c15251u);
            c15251u.f55131a.close();
            outputStream.flush();
        } catch (Throwable th) {
            c15251u.f55131a.close();
            throw th;
        }
    }
}
