package com.google.api.client.util;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.util.r */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/r.class */
public class C8723r extends FilterOutputStream {

    /* renamed from: d */
    private final C8721p f38555d;

    public C8723r(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.f38555d = new C8721p(logger, level, i);
    }

    /* renamed from: a */
    public final C8721p m2846a() {
        return this.f38555d;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f38555d.close();
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        ((FilterOutputStream) this).out.write(i);
        this.f38555d.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
        this.f38555d.write(bArr, i, i2);
    }
}
