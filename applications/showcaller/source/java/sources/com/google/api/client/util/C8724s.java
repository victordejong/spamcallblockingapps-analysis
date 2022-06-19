package com.google.api.client.util;

import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.util.s */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/s.class */
public final class C8724s implements AbstractC8735z {

    /* renamed from: a */
    private final AbstractC8735z f38556a;

    /* renamed from: b */
    private final int f38557b;

    /* renamed from: c */
    private final Level f38558c;

    /* renamed from: d */
    private final Logger f38559d;

    public C8724s(AbstractC8735z abstractC8735z, Logger logger, Level level, int i) {
        this.f38556a = abstractC8735z;
        this.f38559d = logger;
        this.f38558c = level;
        this.f38557b = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        C8723r c8723r = new C8723r(outputStream, this.f38559d, this.f38558c, this.f38557b);
        try {
            this.f38556a.writeTo(c8723r);
            c8723r.m2846a().close();
            outputStream.flush();
        } catch (Throwable th) {
            c8723r.m2846a().close();
            throw th;
        }
    }
}
