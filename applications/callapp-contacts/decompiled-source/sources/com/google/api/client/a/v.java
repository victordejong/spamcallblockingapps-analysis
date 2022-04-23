package com.google.api.client.a;

import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/v.class */
public final class v implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final ad f31665a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31666b;

    /* renamed from: c  reason: collision with root package name */
    private final Level f31667c;

    /* renamed from: d  reason: collision with root package name */
    private final Logger f31668d;

    public v(ad adVar, Logger logger, Level level, int i) {
        this.f31665a = adVar;
        this.f31668d = logger;
        this.f31667c = level;
        this.f31666b = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.api.client.a.ad
    public final void writeTo(OutputStream outputStream) throws IOException {
        u uVar = new u(outputStream, this.f31668d, this.f31667c, this.f31666b);
        try {
            this.f31665a.writeTo(uVar);
            uVar.f31664a.close();
            outputStream.flush();
        } catch (Throwable th) {
            uVar.f31664a.close();
            throw th;
        }
    }
}
