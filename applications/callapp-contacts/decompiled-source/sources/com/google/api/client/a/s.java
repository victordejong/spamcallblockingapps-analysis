package com.google.api.client.a;

import com.google.common.base.m;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/s.class */
public final class s extends ByteArrayOutputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f31659a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31660b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f31661c;

    /* renamed from: d  reason: collision with root package name */
    private final Level f31662d;
    private final Logger e;

    public s(Logger logger, Level level, int i) {
        this.e = (Logger) m.a(logger);
        this.f31662d = (Level) m.a(level);
        m.a(i >= 0);
        this.f31660b = i;
    }

    private static void a(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
            return;
        }
        sb.append(NumberFormat.getInstance().format(i));
        sb.append(" bytes");
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (!this.f31661c) {
                if (this.f31659a != 0) {
                    StringBuilder sb = new StringBuilder("Total: ");
                    a(sb, this.f31659a);
                    if (this.count != 0 && this.count < this.f31659a) {
                        sb.append(" (logging first ");
                        a(sb, this.count);
                        sb.append(")");
                    }
                    this.e.config(sb.toString());
                    if (this.count != 0) {
                        this.e.log(this.f31662d, toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", StringUtils.SPACE));
                    }
                }
                this.f31661c = true;
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            m.a(!this.f31661c);
            this.f31659a++;
            if (this.count < this.f31660b) {
                super.write(i);
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m.a(!this.f31661c);
            this.f31659a += i2;
            if (this.count < this.f31660b) {
                int i3 = this.count + i2;
                int i4 = this.f31660b;
                int i5 = i2;
                if (i3 > i4) {
                    i5 = i2 + (i4 - i3);
                }
                super.write(bArr, i, i5);
            }
        }
    }
}
