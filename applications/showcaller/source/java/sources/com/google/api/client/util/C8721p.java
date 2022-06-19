package com.google.api.client.util;

import java.io.ByteArrayOutputStream;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.util.p */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/p.class */
public class C8721p extends ByteArrayOutputStream {

    /* renamed from: d */
    private int f38549d;

    /* renamed from: e */
    private final int f38550e;

    /* renamed from: f */
    private boolean f38551f;

    /* renamed from: g */
    private final Level f38552g;

    /* renamed from: h */
    private final Logger f38553h;

    public C8721p(Logger logger, Level level, int i) {
        this.f38553h = (Logger) C8731w.m2836d(logger);
        this.f38552g = (Level) C8731w.m2836d(level);
        C8731w.m2839a(i >= 0);
        this.f38550e = i;
    }

    /* renamed from: a */
    private static void m2847a(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
            return;
        }
        sb.append(NumberFormat.getInstance().format(i));
        sb.append(" bytes");
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f38551f) {
                if (this.f38549d != 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Total: ");
                    m2847a(sb, this.f38549d);
                    int i = ((ByteArrayOutputStream) this).count;
                    if (i != 0 && i < this.f38549d) {
                        sb.append(" (logging first ");
                        m2847a(sb, ((ByteArrayOutputStream) this).count);
                        sb.append(")");
                    }
                    this.f38553h.config(sb.toString());
                    if (((ByteArrayOutputStream) this).count != 0) {
                        this.f38553h.log(this.f38552g, toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                    }
                }
                this.f38551f = true;
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            C8731w.m2839a(!this.f38551f);
            this.f38549d++;
            if (((ByteArrayOutputStream) this).count < this.f38550e) {
                super.write(i);
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            C8731w.m2839a(!this.f38551f);
            this.f38549d += i2;
            int i3 = ((ByteArrayOutputStream) this).count;
            int i4 = this.f38550e;
            if (i3 < i4) {
                int i5 = i3 + i2;
                int i6 = i2;
                if (i5 > i4) {
                    i6 = i2 + (i4 - i5);
                }
                super.write(bArr, i, i6);
            }
        }
    }
}
